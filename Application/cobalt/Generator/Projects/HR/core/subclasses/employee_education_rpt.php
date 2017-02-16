<?php
require_once 'employee_education_dd.php';
class employee_education_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EMPLOYEE_EDUCATION_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'employee_education_html';
    var $data_subclass = 'employee_education';
    var $result_page = 'reporter_result_employee_education.php';
    var $cancel_page = 'listview_employee_education.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_employee_education.php';

    function __construct()
    {
        $this->fields        = employee_education_dd::load_dictionary();
        $this->relations     = employee_education_dd::load_relationships();
        $this->subclasses    = employee_education_dd::load_subclass_info();
        $this->table_name    = employee_education_dd::$table_name;
        $this->tables        = employee_education_dd::$table_name;
        $this->readable_name = employee_education_dd::$readable_name;
        $this->get_report_fields();
    }
}
