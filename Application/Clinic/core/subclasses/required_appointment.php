<?php
require_once 'required_appointment_dd.php';
class required_appointment extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = required_appointment_dd::load_dictionary();
        $this->relations  = required_appointment_dd::load_relationships();
        $this->subclasses = required_appointment_dd::load_subclass_info();
        $this->table_name = required_appointment_dd::$table_name;
        $this->tables     = required_appointment_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('required_appointment_id, student_id, date, time_start, time_end, status, subject_offering_id');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('issiisi',
                                 &$this->fields['required_appointment_id']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['time_start']['value'],
                                 &$this->fields['time_end']['value'],
                                 &$this->fields['status']['value'],
                                 &$this->fields['subject_offering_id']['value']);

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
            $this->set_update("student_id = ?, date = ?, time_start = ?, time_end = ?, status = ?, subject_offering_id = ?");
            $this->set_where("required_appointment_id = ?");

            $bind_params = array('ssiisii',
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['time_start']['value'],
                                 &$this->fields['time_end']['value'],
                                 &$this->fields['status']['value'],
                                 &$this->fields['subject_offering_id']['value'],
                                 &$this->fields['required_appointment_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("required_appointment_id = ?");

        $bind_params = array('i',
                             &$this->fields['required_appointment_id']['value']);

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
        $this->set_where("required_appointment_id = ?");

        $bind_params = array('i',
                             &$this->fields['required_appointment_id']['value']);

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
        $this->set_where("required_appointment_id = ? AND (required_appointment_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['required_appointment_id']['value'],
                             &$this->fields['required_appointment_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
