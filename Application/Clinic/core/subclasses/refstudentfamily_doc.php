<?php
require_once 'documentation_class.php';
require_once 'refstudentfamily_dd.php';
class refstudentfamily_doc extends documentation
{
    function __construct()
    {
        $this->fields        = refstudentfamily_dd::load_dictionary();
        $this->relations     = refstudentfamily_dd::load_relationships();
        $this->subclasses    = refstudentfamily_dd::load_subclass_info();
        $this->table_name    = refstudentfamily_dd::$table_name;
        $this->readable_name = refstudentfamily_dd::$readable_name;
        parent::__construct();
    }
}
