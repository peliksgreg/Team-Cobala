<?php
require_once 'sst_class.php';
require_once 'emergencycase_dd.php';
class emergencycase_sst extends sst
{
    function __construct()
    {
        $this->fields        = emergencycase_dd::load_dictionary();
        $this->relations     = emergencycase_dd::load_relationships();
        $this->subclasses    = emergencycase_dd::load_subclass_info();
        $this->table_name    = emergencycase_dd::$table_name;
        $this->readable_name = emergencycase_dd::$readable_name;
        parent::__construct();
    }
}
