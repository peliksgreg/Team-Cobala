<?php
require 'components/get_listview_referrer.php';

require 'subclasses/employee.php';
$dbh_employee = new employee;
$dbh_employee->set_where("employee_id='" . quote_smart($employee_id) . "'");
if($result = $dbh_employee->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$birthdate);
    if(count($data) == 3)
    {
        $birthdate_year = $data[0];
        $birthdate_month = $data[1];
        $birthdate_day = $data[2];
    }
    $data = explode('-',$start_date);
    if(count($data) == 3)
    {
        $start_date_year = $data[0];
        $start_date_month = $data[1];
        $start_date_day = $data[2];
    }
}

require_once 'subclasses/employee_license.php';
$dbh_employee_license = new employee_license;
$dbh_employee_license->set_fields('license_name, date_acquired, description');
$dbh_employee_license->set_where("employee_id='" . quote_smart($employee_id) . "'");
if($result = $dbh_employee_license->make_query()->result)
{
    $num_employee_license = $dbh_employee_license->num_rows;
    for($a=0; $a<$num_employee_license; $a++)
    {
        $data = $result->fetch_row();
        $cf_employee_license_license_name[$a] = $data[0];
        $data_temp_cf_date = explode('-',$data[1]);
        $cf_employee_license_date_acquired_year[$a] = $data_temp_cf_date[0];
        $cf_employee_license_date_acquired_month[$a] = $data_temp_cf_date[1];
        $cf_employee_license_date_acquired_day[$a] = $data_temp_cf_date[2];
        $cf_employee_license_description[$a] = $data[2];
    }
}

require_once 'subclasses/employee_family.php';
$dbh_employee_family = new employee_family;
$dbh_employee_family->set_fields('family_first_name, family_middle_name, family_last_name, family_birthdate, family_relation');
$dbh_employee_family->set_where("employee_id='" . quote_smart($employee_id) . "'");
if($result = $dbh_employee_family->make_query()->result)
{
    $num_employee_family = $dbh_employee_family->num_rows;
    for($a=0; $a<$num_employee_family; $a++)
    {
        $data = $result->fetch_row();
        $cf_employee_family_family_first_name[$a] = $data[0];
        $cf_employee_family_family_middle_name[$a] = $data[1];
        $cf_employee_family_family_last_name[$a] = $data[2];
        $data_temp_cf_date = explode('-',$data[3]);
        $cf_employee_family_family_birthdate_year[$a] = $data_temp_cf_date[0];
        $cf_employee_family_family_birthdate_month[$a] = $data_temp_cf_date[1];
        $cf_employee_family_family_birthdate_day[$a] = $data_temp_cf_date[2];
        $cf_employee_family_family_relation[$a] = $data[4];
    }
}

require_once 'subclasses/employee_work_experience.php';
$dbh_employee_work_experience = new employee_work_experience;
$dbh_employee_work_experience->set_fields('company, period, position');
$dbh_employee_work_experience->set_where("employee_id='" . quote_smart($employee_id) . "'");
if($result = $dbh_employee_work_experience->make_query()->result)
{
    $num_employee_work_experience = $dbh_employee_work_experience->num_rows;
    for($a=0; $a<$num_employee_work_experience; $a++)
    {
        $data = $result->fetch_row();
        $cf_employee_work_experience_company[$a] = $data[0];
        $cf_employee_work_experience_period[$a] = $data[1];
        $cf_employee_work_experience_position[$a] = $data[2];
    }
}

require_once 'subclasses/employee_reference.php';
$dbh_employee_reference = new employee_reference;
$dbh_employee_reference->set_fields('name, company, position, contact_no, email');
$dbh_employee_reference->set_where("employee_id='" . quote_smart($employee_id) . "'");
if($result = $dbh_employee_reference->make_query()->result)
{
    $num_employee_reference = $dbh_employee_reference->num_rows;
    for($a=0; $a<$num_employee_reference; $a++)
    {
        $data = $result->fetch_row();
        $cf_employee_reference_name[$a] = $data[0];
        $cf_employee_reference_company[$a] = $data[1];
        $cf_employee_reference_position[$a] = $data[2];
        $cf_employee_reference_contact_no[$a] = $data[3];
        $cf_employee_reference_email[$a] = $data[4];
    }
}

require_once 'subclasses/employee_education.php';
$dbh_employee_education = new employee_education;
$dbh_employee_education->set_fields('level, school, period, awards');
$dbh_employee_education->set_where("employee_id='" . quote_smart($employee_id) . "'");
if($result = $dbh_employee_education->make_query()->result)
{
    $num_employee_education = $dbh_employee_education->num_rows;
    for($a=0; $a<$num_employee_education; $a++)
    {
        $data = $result->fetch_row();
        $cf_employee_education_level[$a] = $data[0];
        $cf_employee_education_school[$a] = $data[1];
        $cf_employee_education_period[$a] = $data[2];
        $cf_employee_education_awards[$a] = $data[3];
    }
}

