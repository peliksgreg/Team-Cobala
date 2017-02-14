<?php
require_once 'sst_class.php';
require_once 'medicine_dd.php';
class medicine_sst extends sst
{
    function __construct()
    {
        $this->fields        = medicine_dd::load_dictionary();
        $this->relations     = medicine_dd::load_relationships();
        $this->subclasses    = medicine_dd::load_subclass_info();
        $this->table_name    = medicine_dd::$table_name;
        $this->readable_name = medicine_dd::$readable_name;
        parent::__construct();
    }
}
