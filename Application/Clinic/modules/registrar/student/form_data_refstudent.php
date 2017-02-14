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

require_once 'subclasses/xrefstudentschedule.php';
$dbh_xrefstudentschedule = new xrefstudentschedule;
$dbh_xrefstudentschedule->set_fields('subject_offering_id, enrollment_status, date, term_id, subject_code');
$dbh_xrefstudentschedule->set_where("student_id='" . quote_smart($student_id) . "'");
if($result = $dbh_xrefstudentschedule->make_query()->result)
{
    $num_xrefstudentschedule = $dbh_xrefstudentschedule->num_rows;
    for($a=0; $a<$num_xrefstudentschedule; $a++)
    {
        $data = $result->fetch_row();
        $cf_xrefstudentschedule_subject_offering_id[$a] = $data[0];
        $cf_xrefstudentschedule_enrollment_status[$a] = $data[1];
        $data_temp_cf_date = explode('-',$data[2]);
        $cf_xrefstudentschedule_date_year[$a] = $data_temp_cf_date[0];
        $cf_xrefstudentschedule_date_month[$a] = $data_temp_cf_date[1];
        $cf_xrefstudentschedule_date_day[$a] = $data_temp_cf_date[2];
        $cf_xrefstudentschedule_term_id[$a] = $data[3];
        $cf_xrefstudentschedule_subject_code[$a] = $data[4];
    }
}

require_once 'subclasses/log_info.php';
$dbh_log_info = new log_info;
$dbh_log_info->set_fields('date, time, complaints, medicine_id, emp_id');
$dbh_log_info->set_where("student_id='" . quote_smart($student_id) . "'");
if($result = $dbh_log_info->make_query()->result)
{
    $num_log_info = $dbh_log_info->num_rows;
    for($a=0; $a<$num_log_info; $a++)
    {
        $data = $result->fetch_row();
        $data_temp_cf_date = explode('-',$data[0]);
        $cf_log_info_date_year[$a] = $data_temp_cf_date[0];
        $cf_log_info_date_month[$a] = $data_temp_cf_date[1];
        $cf_log_info_date_day[$a] = $data_temp_cf_date[2];
        $cf_log_info_time[$a] = $data[1];
        $cf_log_info_complaints[$a] = $data[2];
        $cf_log_info_medicine_id[$a] = $data[3];
        $cf_log_info_emp_id[$a] = $data[4];
    }
}

