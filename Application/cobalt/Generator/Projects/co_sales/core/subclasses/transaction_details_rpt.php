<?php
require_once 'transaction_details_dd.php';
class transaction_details_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'TRANSACTION_DETAILS_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'transaction_details_html';
    var $data_subclass = 'transaction_details';
    var $result_page = 'reporter_result_transaction_details.php';
    var $cancel_page = 'listview_transaction_details.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_transaction_details.php';

    function __construct()
    {
        $this->fields        = transaction_details_dd::load_dictionary();
        $this->relations     = transaction_details_dd::load_relationships();
        $this->subclasses    = transaction_details_dd::load_subclass_info();
        $this->table_name    = transaction_details_dd::$table_name;
        $this->tables        = transaction_details_dd::$table_name;
        $this->readable_name = transaction_details_dd::$readable_name;
        $this->get_report_fields();
    }
}
