<?php
require_once 'refstudentclearance_dd.php';
class refstudentclearance_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'REFSTUDENTCLEARANCE_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'refstudentclearance_html';
    var $data_subclass = 'refstudentclearance';
    var $result_page = 'reporter_result_refstudentclearance.php';
    var $cancel_page = 'listview_refstudentclearance.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_refstudentclearance.php';

    function __construct()
    {
        $this->fields        = refstudentclearance_dd::load_dictionary();
        $this->relations     = refstudentclearance_dd::load_relationships();
        $this->subclasses    = refstudentclearance_dd::load_subclass_info();
        $this->table_name    = refstudentclearance_dd::$table_name;
        $this->tables        = refstudentclearance_dd::$table_name;
        $this->readable_name = refstudentclearance_dd::$readable_name;
        $this->get_report_fields();
    }
}
