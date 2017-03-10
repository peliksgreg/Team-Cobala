<?php
require 'components/get_listview_referrer.php';

require 'subclasses/medicine_receiving.php';
$dbh_medicine_receiving = new medicine_receiving;
$dbh_medicine_receiving->set_where("medicine_count_id='" . quote_smart($medicine_count_id) . "'");
if($result = $dbh_medicine_receiving->make_query()->result)
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

