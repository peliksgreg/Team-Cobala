<?php

require_once 'log_info_dd.php';
class log_info extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = log_info_dd::load_dictionary();
        $this->relations  = log_info_dd::load_relationships();
        $this->subclasses = log_info_dd::load_subclass_info();
        $this->table_name = log_info_dd::$table_name;
        $this->tables     = log_info_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('log_id, date, time, complaints, patient_type, student_id, emp_id');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('issssss',
                                 &$this->fields['log_id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['time']['value'],
                                 &$this->fields['complaints']['value'],
                                 &$this->fields['patient_type']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['emp_id']['value']);

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
            $this->set_update("date = ?, time = ?, complaints = ?, patient_type = ?, student_id = ?, emp_id = ?");
            $this->set_where("log_id = ?");

            $bind_params = array('ssssssi',
                                 &$this->fields['date']['value'],
                                 &$this->fields['time']['value'],
                                 &$this->fields['complaints']['value'],
                                 &$this->fields['patient_type']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['emp_id']['value'],
                                 &$this->fields['log_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("log_id = ?");

        $bind_params = array('i',
                             &$this->fields['log_id']['value']);

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
        $this->set_where("log_id = ?");

        $bind_params = array('i',
                             &$this->fields['log_id']['value']);

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
        $this->set_where("log_id = ? AND (log_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['log_id']['value'],
                             &$this->fields['log_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
