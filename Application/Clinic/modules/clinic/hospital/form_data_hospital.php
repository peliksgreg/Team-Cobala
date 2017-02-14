<?php
require 'components/get_listview_referrer.php';

require 'subclasses/hospital.php';
$dbh_hospital = new hospital;
$dbh_hospital->set_where("hospital_id='" . quote_smart($hospital_id) . "'");
if($result = $dbh_hospital->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

