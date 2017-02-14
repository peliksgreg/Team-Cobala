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

require_once 'subclasses/log_info.php';
$dbh_log_info = new log_info;
$dbh_log_info->set_fields('date, time, complaints, medicine_id, student_id');
$dbh_log_info->set_where("emp_id='" . quote_smart($emp_id) . "'");
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
        $cf_log_info_student_id[$a] = $data[4];
    }
}

