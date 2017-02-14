<?php
require_once 'refempfamily_dd.php';
class refempfamily_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'REFEMPFAMILY_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'refempfamily_html';
    var $data_subclass = 'refempfamily';
    var $result_page = 'reporter_result_refempfamily.php';
    var $cancel_page = 'listview_refempfamily.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_refempfamily.php';

    function __construct()
    {
        $this->fields        = refempfamily_dd::load_dictionary();
        $this->relations     = refempfamily_dd::load_relationships();
        $this->subclasses    = refempfamily_dd::load_subclass_info();
        $this->table_name    = refempfamily_dd::$table_name;
        $this->tables        = refempfamily_dd::$table_name;
        $this->readable_name = refempfamily_dd::$readable_name;
        $this->get_report_fields();
    }
}
