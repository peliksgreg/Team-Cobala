<?php
require_once 'medicine_receiving_dd.php';
class medicine_receiving extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = medicine_receiving_dd::load_dictionary();
        $this->relations  = medicine_receiving_dd::load_relationships();
        $this->subclasses = medicine_receiving_dd::load_subclass_info();
        $this->table_name = medicine_receiving_dd::$table_name;
        $this->tables     = medicine_receiving_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('medicine_count_id, medicine_id, qty, date, type');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('iiiss',
                                 &$this->fields['medicine_count_id']['value'],
                                 &$this->fields['medicine_id']['value'],
                                 &$this->fields['qty']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['type']['value']);

            $this->stmt_prepare($bind_params);
        }

        $this->stmt_execute();
        return $this;
    }

    function edit($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("medicine_id = ?, qty = ?, date = ?, type = ?");
            $this->set_where("medicine_count_id = ?");

            $bind_params = array('iissi',
                                 &$this->fields['medicine_id']['value'],
                                 &$this->fields['qty']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['type']['value'],
                                 &$this->fields['medicine_count_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("medicine_count_id = ?");

        $bind_params = array('i',
                             &$this->fields['medicine_count_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("");

        $bind_params = array('',
                             );

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function select()
    {
        $this->set_query_type('SELECT');
        $this->exec_fetch('array');
        return $this;
    }

    function check_uniqueness($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('SELECT');
        $this->set_where("medicine_count_id = ?");

        $bind_params = array('i',
                             &$this->fields['medicine_count_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }

    function check_uniqueness_for_editing($param)
    {
        $this->set_parameters($param);


        $this->set_query_type('SELECT');
        $this->set_where("medicine_count_id = ? AND (medicine_count_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['medicine_count_id']['value'],
                             &$this->fields['medicine_count_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
