<?php
require_once 'documentation_class.php';
require_once 'log_detail_dd.php';
class log_detail_doc extends documentation
{
    function __construct()
    {
        $this->fields        = log_detail_dd::load_dictionary();
        $this->relations     = log_detail_dd::load_relationships();
        $this->subclasses    = log_detail_dd::load_subclass_info();
        $this->table_name    = log_detail_dd::$table_name;
        $this->readable_name = log_detail_dd::$readable_name;
        parent::__construct();
    }
}
