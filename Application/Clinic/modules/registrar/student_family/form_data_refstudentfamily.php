<?php
require 'components/get_listview_referrer.php';

require 'subclasses/refstudentfamily.php';
$dbh_refstudentfamily = new refstudentfamily;
$dbh_refstudentfamily->set_where("family_id='" . quote_smart($family_id) . "'");
if($result = $dbh_refstudentfamily->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

