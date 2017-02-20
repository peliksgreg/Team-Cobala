<?php
require_once 'log_detail_dd.php';
class log_detail_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'LOG_DETAIL_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'log_detail_html';
    var $data_subclass = 'log_detail';
    var $result_page = 'reporter_result_log_detail.php';
    var $cancel_page = 'listview_log_detail.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_log_detail.php';

    function __construct()
    {
        $this->fields        = log_detail_dd::load_dictionary();
        $this->relations     = log_detail_dd::load_relationships();
        $this->subclasses    = log_detail_dd::load_subclass_info();
        $this->table_name    = log_detail_dd::$table_name;
        $this->tables        = log_detail_dd::$table_name;
        $this->readable_name = log_detail_dd::$readable_name;
        $this->get_report_fields();
    }
}
