<?php
require_once 'medicine_receiving_dd.php';
class medicine_receiving_html extends html
{
    function __construct()
    {
        $this->fields        = medicine_receiving_dd::load_dictionary();
        $this->relations     = medicine_receiving_dd::load_relationships();
        $this->subclasses    = medicine_receiving_dd::load_subclass_info();
        $this->table_name    = medicine_receiving_dd::$table_name;
        $this->readable_name = medicine_receiving_dd::$readable_name;
    }
}
