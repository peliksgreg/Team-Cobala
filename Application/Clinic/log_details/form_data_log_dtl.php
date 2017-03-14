<?php
require 'components/get_listview_referrer.php';

require 'subclasses/log_dtl.php';
$dbh_log_dtl = new log_dtl;
$dbh_log_dtl->set_where("log_dtl_id='" . quote_smart($log_dtl_id) . "'");
if($result = $dbh_log_dtl->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

require_once 'subclasses/log_info.php';
$dbh_log_info = new log_info;
$dbh_log_info->set_fields('date, time, complaints, student_id, emp_id');
$dbh_log_info->set_where("log_dtl_id='" . quote_smart($log_dtl_id) . "'");
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
        $cf_log_info_student_id[$a] = $data[3];
        $cf_log_info_emp_id[$a] = $data[4];
    }
}

