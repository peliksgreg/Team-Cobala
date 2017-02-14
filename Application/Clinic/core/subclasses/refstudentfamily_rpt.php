<?php
require_once 'refstudentfamily_dd.php';
class refstudentfamily_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'REFSTUDENTFAMILY_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'refstudentfamily_html';
    var $data_subclass = 'refstudentfamily';
    var $result_page = 'reporter_result_refstudentfamily.php';
    var $cancel_page = 'listview_refstudentfamily.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_refstudentfamily.php';

    function __construct()
    {
        $this->fields        = refstudentfamily_dd::load_dictionary();
        $this->relations     = refstudentfamily_dd::load_relationships();
        $this->subclasses    = refstudentfamily_dd::load_subclass_info();
        $this->table_name    = refstudentfamily_dd::$table_name;
        $this->tables        = refstudentfamily_dd::$table_name;
        $this->readable_name = refstudentfamily_dd::$readable_name;
        $this->get_report_fields();
    }
}
