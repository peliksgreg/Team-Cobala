<?php
require_once 'documentation_class.php';
require_once 'required_appointment_dd.php';
class required_appointment_doc extends documentation
{
    function __construct()
    {
        $this->fields        = required_appointment_dd::load_dictionary();
        $this->relations     = required_appointment_dd::load_relationships();
        $this->subclasses    = required_appointment_dd::load_subclass_info();
        $this->table_name    = required_appointment_dd::$table_name;
        $this->readable_name = required_appointment_dd::$readable_name;
        parent::__construct();
    }
}
