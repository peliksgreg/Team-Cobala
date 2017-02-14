<?php
require_once 'medicine_dd.php';
class medicine extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = medicine_dd::load_dictionary();
        $this->relations  = medicine_dd::load_relationships();
        $this->subclasses = medicine_dd::load_subclass_info();
        $this->table_name = medicine_dd::$table_name;
        $this->tables     = medicine_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('medicine_id, medicine_name, qty');
            $this->set_values("?,?,?");

            $bind_params = array('iss',
                                 &$this->fields['medicine_id']['value'],
                                 &$this->fields['medicine_name']['value'],
                                 &$this->fields['qty']['value']);

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
            $this->set_update("medicine_id = ?, medicine_name = ?, qty = ?");
            $this->set_where("medicine_id = ?");

            $bind_params = array('issi',
                                 &$this->fields['medicine_id']['value'],
                                 &$this->fields['medicine_name']['value'],
                                 &$this->fields['qty']['value'],
                                 $param['orig_medicine_id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("medicine_id = ?");

        $bind_params = array('i',
                             &$this->fields['medicine_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("medicine_id = ?");

        $bind_params = array('i',
                             &$this->fields['medicine_id']['value']);

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
        $this->set_where("medicine_id = ?");

        $bind_params = array('i',
                             &$this->fields['medicine_id']['value']);

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
        //Next two lines just to get the orig_ pkey(s) from $param
        $this->escape_arguments($param);
        extract($param);

        $this->set_query_type('SELECT');
        $this->set_where("medicine_id = ? AND (medicine_id != '$orig_medicine_id')");

        $bind_params = array('i',
                             &$this->fields['medicine_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
