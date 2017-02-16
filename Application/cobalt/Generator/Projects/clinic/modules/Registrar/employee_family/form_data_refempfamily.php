<?php
require 'components/get_listview_referrer.php';

require 'subclasses/refempfamily.php';
$dbh_refempfamily = new refempfamily;
$dbh_refempfamily->set_where("family_id='" . quote_smart($family_id) . "'");
if($result = $dbh_refempfamily->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

