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

