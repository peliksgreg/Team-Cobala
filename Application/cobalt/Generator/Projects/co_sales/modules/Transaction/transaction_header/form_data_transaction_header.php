<?php
require 'components/get_listview_referrer.php';

require 'subclasses/transaction_header.php';
$dbh_transaction_header = new transaction_header;
$dbh_transaction_header->set_where("transaction_header_id='" . quote_smart($transaction_header_id) . "'");
if($result = $dbh_transaction_header->make_query()->result)
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

require_once 'subclasses/transaction_details.php';
$dbh_transaction_details = new transaction_details;
$dbh_transaction_details->set_fields('product_id, unit_price, quantity, net_amount, discount_type, discount_value');
$dbh_transaction_details->set_where("transaction_header_id='" . quote_smart($transaction_header_id) . "'");
if($result = $dbh_transaction_details->make_query()->result)
{
    $num_transaction_details = $dbh_transaction_details->num_rows;
    for($a=0; $a<$num_transaction_details; $a++)
    {
        $data = $result->fetch_row();
        $cf_transaction_details_product_id[$a] = $data[0];
        $cf_transaction_details_unit_price[$a] = $data[1];
        $cf_transaction_details_quantity[$a] = $data[2];
        $cf_transaction_details_net_amount[$a] = $data[3];
        $cf_transaction_details_discount_type[$a] = $data[4];
        $cf_transaction_details_discount_value[$a] = $data[5];
    }
}

