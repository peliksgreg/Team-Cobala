<?php
require_once 'emergencycase_dd.php';
class emergencycase_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EMERGENCYCASE_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'emergencycase_html';
    var $data_subclass = 'emergencycase';
    var $result_page = 'reporter_result_emergencycase.php';
    var $cancel_page = 'listview_emergencycase.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_emergencycase.php';

    function __construct()
    {
        $this->fields        = emergencycase_dd::load_dictionary();
        $this->relations     = emergencycase_dd::load_relationships();
        $this->subclasses    = emergencycase_dd::load_subclass_info();
        $this->table_name    = emergencycase_dd::$table_name;
        $this->tables        = emergencycase_dd::$table_name;
        $this->readable_name = emergencycase_dd::$readable_name;
        $this->get_report_fields();
    }
}
