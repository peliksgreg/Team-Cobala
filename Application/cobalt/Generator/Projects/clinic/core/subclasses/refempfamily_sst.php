<?php
require_once 'sst_class.php';
require_once 'refempfamily_dd.php';
class refempfamily_sst extends sst
{
    function __construct()
    {
        $this->fields        = refempfamily_dd::load_dictionary();
        $this->relations     = refempfamily_dd::load_relationships();
        $this->subclasses    = refempfamily_dd::load_subclass_info();
        $this->table_name    = refempfamily_dd::$table_name;
        $this->readable_name = refempfamily_dd::$readable_name;
        parent::__construct();
    }
}
