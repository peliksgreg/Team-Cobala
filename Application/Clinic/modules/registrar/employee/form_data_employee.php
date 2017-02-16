<?php
require 'components/get_listview_referrer.php';

require 'subclasses/employee.php';
$dbh_employee = new employee;
$dbh_employee->set_where("emp_id='" . quote_smart($emp_id) . "'");
if($result = $dbh_employee->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$hiring_date);
    if(count($data) == 3)
    {
        $hiring_date_year = $data[0];
        $hiring_date_month = $data[1];
        $hiring_date_day = $data[2];
    }
    $data = explode('-',$resignation_date);
    if(count($data) == 3)
    {
        $resignation_date_year = $data[0];
        $resignation_date_month = $data[1];
        $resignation_date_day = $data[2];
    }
    $data = explode('-',$birth_date);
    if(count($data) == 3)
    {
        $birth_date_year = $data[0];
        $birth_date_month = $data[1];
        $birth_date_day = $data[2];
    }
}

require_once 'subclasses/refempfamily.php';
$dbh_refempfamily = new refempfamily;
$dbh_refempfamily->set_fields('relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2');
$dbh_refempfamily->set_where("emp_id='" . quote_smart($emp_id) . "'");
if($result = $dbh_refempfamily->make_query()->result)
{
    $num_refempfamily = $dbh_refempfamily->num_rows;
    for($a=0; $a<$num_refempfamily; $a++)
    {
        $data = $result->fetch_row();
        $cf_refempfamily_relationship[$a] = $data[0];
        $cf_refempfamily_name[$a] = $data[1];
        $cf_refempfamily_email[$a] = $data[2];
        $cf_refempfamily_email_status[$a] = $data[3];
        $cf_refempfamily_address_type[$a] = $data[4];
        $cf_refempfamily_address[$a] = $data[5];
        $cf_refempfamily_postal_code[$a] = $data[6];
        $cf_refempfamily_mobile_num1[$a] = $data[7];
        $cf_refempfamily_tel_num[$a] = $data[8];
        $cf_refempfamily_mobile_num2[$a] = $data[9];
    }
}

