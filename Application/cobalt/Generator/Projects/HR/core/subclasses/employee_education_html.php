<?php
require_once 'employee_education_dd.php';
class employee_education_html extends html
{
    function __construct()
    {
        $this->fields        = employee_education_dd::load_dictionary();
        $this->relations     = employee_education_dd::load_relationships();
        $this->subclasses    = employee_education_dd::load_subclass_info();
        $this->table_name    = employee_education_dd::$table_name;
        $this->readable_name = employee_education_dd::$readable_name;
    }
}
