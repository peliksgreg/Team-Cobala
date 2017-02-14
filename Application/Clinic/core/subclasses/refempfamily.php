<?php
require_once 'refempfamily_dd.php';
class refempfamily extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = refempfamily_dd::load_dictionary();
        $this->relations  = refempfamily_dd::load_relationships();
        $this->subclasses = refempfamily_dd::load_subclass_info();
        $this->table_name = refempfamily_dd::$table_name;
        $this->tables     = refempfamily_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isssssssssss',
                                 &$this->fields['family_id']['value'],
                                 &$this->fields['emp_id']['value'],
                                 &$this->fields['relationship']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['email']['value'],
                                 &$this->fields['email_status']['value'],
                                 &$this->fields['address_type']['value'],
                                 &$this->fields['address']['value'],
                                 &$this->fields['postal_code']['value'],
                                 &$this->fields['mobile_num1']['value'],
                                 &$this->fields['tel_num']['value'],
                                 &$this->fields['mobile_num2']['value']);

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
            $this->set_update("emp_id = ?, relationship = ?, name = ?, email = ?, email_status = ?, address_type = ?, address = ?, postal_code = ?, mobile_num1 = ?, tel_num = ?, mobile_num2 = ?");
            $this->set_where("family_id = ?");

            $bind_params = array('sssssssssssi',
                                 &$this->fields['emp_id']['value'],
                                 &$this->fields['relationship']['value'],
                                 &$this->fields['name']['value'],
                                 &$this->fields['email']['value'],
                                 &$this->fields['email_status']['value'],
                                 &$this->fields['address_type']['value'],
                                 &$this->fields['address']['value'],
                                 &$this->fields['postal_code']['value'],
                                 &$this->fields['mobile_num1']['value'],
                                 &$this->fields['tel_num']['value'],
                                 &$this->fields['mobile_num2']['value'],
                                 &$this->fields['family_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("family_id = ?");

        $bind_params = array('i',
                             &$this->fields['family_id']['value']);

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
        $this->set_where("family_id = ?");

        $bind_params = array('i',
                             &$this->fields['family_id']['value']);

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
        $this->set_where("family_id = ? AND (family_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['family_id']['value'],
                             &$this->fields['family_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
