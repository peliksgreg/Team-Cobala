<?php
require_once 'transaction_header_dd.php';
class transaction_header_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'TRANSACTION_HEADER_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'transaction_header_html';
    var $data_subclass = 'transaction_header';
    var $result_page = 'reporter_result_transaction_header.php';
    var $cancel_page = 'listview_transaction_header.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_transaction_header.php';

    function __construct()
    {
        $this->fields        = transaction_header_dd::load_dictionary();
        $this->relations     = transaction_header_dd::load_relationships();
        $this->subclasses    = transaction_header_dd::load_subclass_info();
        $this->table_name    = transaction_header_dd::$table_name;
        $this->tables        = transaction_header_dd::$table_name;
        $this->readable_name = transaction_header_dd::$readable_name;
        $this->get_report_fields();
    }
}
