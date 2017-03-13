<?php
require 'components/get_listview_referrer.php';

require 'subclasses/log_info.php';
$dbh_log_info = new log_info;
$dbh_log_info->set_where("log_id='" . quote_smart($log_id) . "'");
if($result = $dbh_log_info->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date);
    if(count($data) == 3)
    {
        $date_year = $data[0];
        $date_month = $data[1];
        $date_day = $data[2];
    }
}

require_once 'subclasses/log_detail.php';
$dbh_log_detail = new log_detail;
$dbh_log_detail->set_fields('medicine_id, qty');
$dbh_log_detail->set_where("log_id='" . quote_smart($log_id) . "'");
if($result = $dbh_log_detail->make_query()->result)
{
    $num_log_detail = $dbh_log_detail->num_rows;
    for($a=0; $a<$num_log_detail; $a++)
    {
        $data = $result->fetch_row();
        $cf_log_detail_medicine_id[$a] = $data[0];
        $cf_log_detail_qty[$a] = $data[1];
    }
}

