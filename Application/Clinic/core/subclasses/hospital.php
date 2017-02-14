<?php
require_once 'hospital_dd.php';
class hospital extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = hospital_dd::load_dictionary();
        $this->relations  = hospital_dd::load_relationships();
        $this->subclasses = hospital_dd::load_subclass_info();
        $this->table_name = hospital_dd::$table_name;
        $this->tables     = hospital_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('hospital_id, hospital_name, tel_number, mobile_number, address');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issss',
                                 &$this->fields['hospital_id']['value'],
                                 &$this->fields['hospital_name']['value'],
                                 &$this->fields['tel_number']['value'],
                                 &$this->fields['mobile_number']['value'],
                                 &$this->fields['address']['value']);

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
            $this->set_update("hospital_name = ?, tel_number = ?, mobile_number = ?, address = ?");
            $this->set_where("hospital_id = ?");

            $bind_params = array('ssssi',
                                 &$this->fields['hospital_name']['value'],
                                 &$this->fields['tel_number']['value'],
                                 &$this->fields['mobile_number']['value'],
                                 &$this->fields['address']['value'],
                                 &$this->fields['hospital_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("hospital_id = ?");

        $bind_params = array('i',
                             &$this->fields['hospital_id']['value']);

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
        $this->set_where("hospital_id = ?");

        $bind_params = array('i',
                             &$this->fields['hospital_id']['value']);

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
        $this->set_where("hospital_id = ? AND (hospital_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['hospital_id']['value'],
                             &$this->fields['hospital_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
