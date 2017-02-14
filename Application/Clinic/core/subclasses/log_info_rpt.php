<?php
require_once 'log_info_dd.php';
class log_info_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'LOG_INFO_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'log_info_html';
    var $data_subclass = 'log_info';
    var $result_page = 'reporter_result_log_info.php';
    var $cancel_page = 'listview_log_info.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_log_info.php';

    function __construct()
    {
        $this->fields        = log_info_dd::load_dictionary();
        $this->relations     = log_info_dd::load_relationships();
        $this->subclasses    = log_info_dd::load_subclass_info();
        $this->table_name    = log_info_dd::$table_name;
        $this->tables        = log_info_dd::$table_name;
        $this->readable_name = log_info_dd::$readable_name;
        $this->get_report_fields();
    }
}
