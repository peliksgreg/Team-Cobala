<?php
require_once 'sst_class.php';
require_once 'transaction_details_dd.php';
class transaction_details_sst extends sst
{
    function __construct()
    {
        $this->fields        = transaction_details_dd::load_dictionary();
        $this->relations     = transaction_details_dd::load_relationships();
        $this->subclasses    = transaction_details_dd::load_subclass_info();
        $this->table_name    = transaction_details_dd::$table_name;
        $this->readable_name = transaction_details_dd::$readable_name;
        parent::__construct();
    }
}
