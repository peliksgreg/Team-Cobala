<?php
require 'components/get_listview_referrer.php';

require 'subclasses/medicine.php';
$dbh_medicine = new medicine;
$dbh_medicine->set_where("medicine_id='" . quote_smart($medicine_id) . "'");
if($result = $dbh_medicine->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_expiration);
    if(count($data) == 3)
    {
        $date_expiration_year = $data[0];
        $date_expiration_month = $data[1];
        $date_expiration_day = $data[2];
    }
}

