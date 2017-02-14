<?php
require_once 'sst_class.php';
require_once 'refstudentclearance_dd.php';
class refstudentclearance_sst extends sst
{
    function __construct()
    {
        $this->fields        = refstudentclearance_dd::load_dictionary();
        $this->relations     = refstudentclearance_dd::load_relationships();
        $this->subclasses    = refstudentclearance_dd::load_subclass_info();
        $this->table_name    = refstudentclearance_dd::$table_name;
        $this->readable_name = refstudentclearance_dd::$readable_name;
        parent::__construct();
    }
}
