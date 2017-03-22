<?php
require 'components/get_listview_referrer.php';

require 'subclasses/emergencycase.php';
$dbh_emergencycase = new emergencycase;
$dbh_emergencycase->set_where("id='" . quote_smart($id) . "'");
if($result = $dbh_emergencycase->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

