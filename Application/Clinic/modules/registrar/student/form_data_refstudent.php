<?php
require 'components/get_listview_referrer.php';

require 'subclasses/refstudent.php';
$dbh_refstudent = new refstudent;
$dbh_refstudent->set_where("student_id='" . quote_smart($student_id) . "'");
if($result = $dbh_refstudent->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$birth_date);
    if(count($data) == 3)
    {
        $birth_date_year = $data[0];
        $birth_date_month = $data[1];
        $birth_date_day = $data[2];
    }
    $data = explode('-',$admission_date);
    if(count($data) == 3)
    {
        $admission_date_year = $data[0];
        $admission_date_month = $data[1];
        $admission_date_day = $data[2];
    }
}

require_once 'subclasses/refstudentfamily.php';
$dbh_refstudentfamily = new refstudentfamily;
$dbh_refstudentfamily->set_fields('relationship, name, email, email_status, address_type, address, postal_code, tel_num, mobile_num1, mobile_num2, attended');
$dbh_refstudentfamily->set_where("student_id='" . quote_smart($student_id) . "'");
if($result = $dbh_refstudentfamily->make_query()->result)
{
    $num_refstudentfamily = $dbh_refstudentfamily->num_rows;
    for($a=0; $a<$num_refstudentfamily; $a++)
    {
        $data = $result->fetch_row();
        $cf_refstudentfamily_relationship[$a] = $data[0];
        $cf_refstudentfamily_name[$a] = $data[1];
        $cf_refstudentfamily_email[$a] = $data[2];
        $cf_refstudentfamily_email_status[$a] = $data[3];
        $cf_refstudentfamily_address_type[$a] = $data[4];
        $cf_refstudentfamily_address[$a] = $data[5];
        $cf_refstudentfamily_postal_code[$a] = $data[6];
        $cf_refstudentfamily_tel_num[$a] = $data[7];
        $cf_refstudentfamily_mobile_num1[$a] = $data[8];
        $cf_refstudentfamily_mobile_num2[$a] = $data[9];
        $cf_refstudentfamily_attended[$a] = $data[10];
    }
}

