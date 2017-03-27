<?php
require_once 'refstudentclearance_dd.php';
class refstudentclearance extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = refstudentclearance_dd::load_dictionary();
        $this->relations  = refstudentclearance_dd::load_relationships();
        $this->subclasses = refstudentclearance_dd::load_subclass_info();
        $this->table_name = refstudentclearance_dd::$table_name;
        $this->tables     = refstudentclearance_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('id, term_id, date, student_id, remarks, is_clear, emp_id, dept_id');
            $this->set_values("?,?,?,?,?,?,?,?");

            $bind_params = array('isssssss',
                                 &$this->fields['id']['value'],
                                 &$this->fields['term_id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['remarks']['value'],
                                 &$this->fields['is_clear']['value'],
                                 &$this->fields['emp_id']['value'],
                                 &$this->fields['dept_id']['value']);

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
            $this->set_update("term_id = ?, date = ?, student_id = ?, remarks = ?, is_clear = ?, emp_id = ?, dept_id = ?");
            $this->set_where("id = ?");

            $bind_params = array('sssssssi',
                                 &$this->fields['term_id']['value'],
                                 &$this->fields['date']['value'],
                                 &$this->fields['student_id']['value'],
                                 &$this->fields['remarks']['value'],
                                 &$this->fields['is_clear']['value'],
                                 &$this->fields['emp_id']['value'],
                                 &$this->fields['dept_id']['value'],
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

    function edit_clearance($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("is_clear = ?");
            $this->set_where("id = ?");

            $bind_params = array('si',
                                 &$this->fields['is_clear']['value'],
                                 &$this->fields['id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }
}
