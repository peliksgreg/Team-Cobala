<?php
require_once 'employee_education_dd.php';
class employee_education extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = employee_education_dd::load_dictionary();
        $this->relations  = employee_education_dd::load_relationships();
        $this->subclasses = employee_education_dd::load_subclass_info();
        $this->table_name = employee_education_dd::$table_name;
        $this->tables     = employee_education_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('employee_education_id, employee_id, level, school, period, awards');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('iissss',
                                 &$this->fields['employee_education_id']['value'],
                                 &$this->fields['employee_id']['value'],
                                 &$this->fields['level']['value'],
                                 &$this->fields['school']['value'],
                                 &$this->fields['period']['value'],
                                 &$this->fields['awards']['value']);

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
            $this->set_update("employee_id = ?, level = ?, school = ?, period = ?, awards = ?");
            $this->set_where("employee_education_id = ?");

            $bind_params = array('issssi',
                                 &$this->fields['employee_id']['value'],
                                 &$this->fields['level']['value'],
                                 &$this->fields['school']['value'],
                                 &$this->fields['period']['value'],
                                 &$this->fields['awards']['value'],
                                 &$this->fields['employee_education_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("employee_education_id = ?");

        $bind_params = array('i',
                             &$this->fields['employee_education_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("employee_id = ?");

        $bind_params = array('i',
                             &$this->fields['employee_id']['value']);

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
        $this->set_where("employee_education_id = ?");

        $bind_params = array('i',
                             &$this->fields['employee_education_id']['value']);

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
        $this->set_where("employee_education_id = ? AND (employee_education_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['employee_education_id']['value'],
                             &$this->fields['employee_education_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
