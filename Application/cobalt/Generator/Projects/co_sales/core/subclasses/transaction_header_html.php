<?php
require_once 'transaction_header_dd.php';
class transaction_header_html extends html
{
    function __construct()
    {
        $this->fields        = transaction_header_dd::load_dictionary();
        $this->relations     = transaction_header_dd::load_relationships();
        $this->subclasses    = transaction_header_dd::load_subclass_info();
        $this->table_name    = transaction_header_dd::$table_name;
        $this->readable_name = transaction_header_dd::$readable_name;
    }
}
