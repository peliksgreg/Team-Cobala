<?php
require 'components/get_listview_referrer.php';

require 'subclasses/log_detail.php';
$dbh_log_detail = new log_detail;
$dbh_log_detail->set_where("log_detail_id='" . quote_smart($log_detail_id) . "'");
if($result = $dbh_log_detail->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

