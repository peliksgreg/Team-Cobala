<?php
require_once 'documentation_class.php';
require_once 'hospital_dd.php';
class hospital_doc extends documentation
{
    function __construct()
    {
        $this->fields        = hospital_dd::load_dictionary();
        $this->relations     = hospital_dd::load_relationships();
        $this->subclasses    = hospital_dd::load_subclass_info();
        $this->table_name    = hospital_dd::$table_name;
        $this->readable_name = hospital_dd::$readable_name;
        parent::__construct();
    }
}
