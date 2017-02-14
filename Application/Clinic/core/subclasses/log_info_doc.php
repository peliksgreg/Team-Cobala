<?php
require_once 'documentation_class.php';
require_once 'log_info_dd.php';
class log_info_doc extends documentation
{
    function __construct()
    {
        $this->fields        = log_info_dd::load_dictionary();
        $this->relations     = log_info_dd::load_relationships();
        $this->subclasses    = log_info_dd::load_subclass_info();
        $this->table_name    = log_info_dd::$table_name;
        $this->readable_name = log_info_dd::$readable_name;
        parent::__construct();
    }
}
