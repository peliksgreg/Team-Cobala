<?php
require_once 'emergencycase_dd.php';
class emergencycase extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = emergencycase_dd::load_dictionary();
        $this->relations  = emergencycase_dd::load_relationships();
        $this->subclasses = emergencycase_dd::load_subclass_info();
        $this->table_name = emergencycase_dd::$table_name;
        $this->tables     = emergencycase_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, date, type, name, id_number, location, diagnosis, hospital_id, escorted_by, guarantee_control_no');
            $this->set_values("?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('issssssiss',
                                 &$this->fields['id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['type']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['id_number']['value'],
                                 &$this->fields['location']['value'],
                                 &$this->fields['diagnosis']['value'],
                                 &$this->fields['hospital_id']['value'],
                                 &$this->fields['escorted_by']['value'],
                                 &$this->fields['guarantee_control_no']['value']);

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
            $this->set_update("date = ?, type = ?, name = ?, id_number = ?, location = ?, diagnosis = ?, hospital_id = ?, escorted_by = ?, guarantee_control_no = ?");
            $this->set_where("id = ?");

            $bind_params = array('ssssssissi',
                                 &$this->fields['date']['value'],
                                 &$this->fields['type']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['id_number']['value'],
                                 &$this->fields['location']['value'],
                                 &$this->fields['diagnosis']['value'],
                                 &$this->fields['hospital_id']['value'],
                                 &$this->fields['escorted_by']['value'],
                                 &$this->fields['guarantee_control_no']['value'],
                                 &$this->fields['id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("id = ?");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

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
        $this->set_where("id = ?");

        $bind_params = array('i',
                             &$this->fields['id']['value']);

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
        $this->set_where("id = ? AND (id != ?)");

        $bind_params = array('ii',
                             &$this->fields['id']['value'],
                             &$this->fields['id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
