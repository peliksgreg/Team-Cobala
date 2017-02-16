<?php
require_once 'employee_dd.php';
class employee extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = employee_dd::load_dictionary();
        $this->relations  = employee_dd::load_relationships();
        $this->subclasses = employee_dd::load_subclass_info();
        $this->table_name = employee_dd::$table_name;
        $this->tables     = employee_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('employee_id, approver1_employee_id, approver2_employee_id, plantilla_id, employee_first_name, employee_middle_name, employee_last_name, employee_nickname, present_address, present_contact_no, provincial_address, provincial_contact_no, gender, civil_status, religion, citizenship, birthplace, birthdate, age, application_source, start_date, sss_no, hdmf_no, philhealth_no, tin, employment_status');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('iiiissssssssssssssisssssss',
                                 &$this->fields['employee_id']['value'],
                                 &$this->fields['approver1_employee_id']['value'],
                                 &$this->fields['approver2_employee_id']['value'],
                                 &$this->fields['plantilla_id']['value'],
                                 &$this->fields['employee_first_name']['value'],
                                 &$this->fields['employee_middle_name']['value'],
                                 &$this->fields['employee_last_name']['value'],
                                 &$this->fields['employee_nickname']['value'],
                                 &$this->fields['present_address']['value'],
                                 &$this->fields['present_contact_no']['value'],
                                 &$this->fields['provincial_address']['value'],
                                 &$this->fields['provincial_contact_no']['value'],
                                 &$this->fields['gender']['value'],
                                 &$this->fields['civil_status']['value'],
                                 &$this->fields['religion']['value'],
                                 &$this->fields['citizenship']['value'],
                                 &$this->fields['birthplace']['value'],
                                 &$this->fields['birthdate']['value'],
                                 &$this->fields['age']['value'],
                                 &$this->fields['application_source']['value'],
                                 &$this->fields['start_date']['value'],
                                 &$this->fields['sss_no']['value'],
                                 &$this->fields['hdmf_no']['value'],
                                 &$this->fields['philhealth_no']['value'],
                                 &$this->fields['tin']['value'],
                                 &$this->fields['employment_status']['value']);

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
            $this->set_update("approver1_employee_id = ?, approver2_employee_id = ?, plantilla_id = ?, employee_first_name = ?, employee_middle_name = ?, employee_last_name = ?, employee_nickname = ?, present_address = ?, present_contact_no = ?, provincial_address = ?, provincial_contact_no = ?, gender = ?, civil_status = ?, religion = ?, citizenship = ?, birthplace = ?, birthdate = ?, age = ?, application_source = ?, start_date = ?, sss_no = ?, hdmf_no = ?, philhealth_no = ?, tin = ?, employment_status = ?");
            $this->set_where("employee_id = ?");

            $bind_params = array('iiissssssssssssssisssssssi',
                                 &$this->fields['approver1_employee_id']['value'],
                                 &$this->fields['approver2_employee_id']['value'],
                                 &$this->fields['plantilla_id']['value'],
                                 &$this->fields['employee_first_name']['value'],
                                 &$this->fields['employee_middle_name']['value'],
                                 &$this->fields['employee_last_name']['value'],
                                 &$this->fields['employee_nickname']['value'],
                                 &$this->fields['present_address']['value'],
                                 &$this->fields['present_contact_no']['value'],
                                 &$this->fields['provincial_address']['value'],
                                 &$this->fields['provincial_contact_no']['value'],
                                 &$this->fields['gender']['value'],
                                 &$this->fields['civil_status']['value'],
                                 &$this->fields['religion']['value'],
                                 &$this->fields['citizenship']['value'],
                                 &$this->fields['birthplace']['value'],
                                 &$this->fields['birthdate']['value'],
                                 &$this->fields['age']['value'],
                                 &$this->fields['application_source']['value'],
                                 &$this->fields['start_date']['value'],
                                 &$this->fields['sss_no']['value'],
                                 &$this->fields['hdmf_no']['value'],
                                 &$this->fields['philhealth_no']['value'],
                                 &$this->fields['tin']['value'],
                                 &$this->fields['employment_status']['value'],
                                 &$this->fields['employee_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
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
        $this->set_where("employee_id = ?");

        $bind_params = array('i',
                             &$this->fields['employee_id']['value']);

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
        $this->set_where("employee_id = ? AND (employee_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['employee_id']['value'],
                             &$this->fields['employee_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
