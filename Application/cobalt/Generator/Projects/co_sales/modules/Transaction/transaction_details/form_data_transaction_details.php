<?php
require 'components/get_listview_referrer.php';

require 'subclasses/transaction_details.php';
$dbh_transaction_details = new transaction_details;
$dbh_transaction_details->set_where("entry_id='" . quote_smart($entry_id) . "'");
if($result = $dbh_transaction_details->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

