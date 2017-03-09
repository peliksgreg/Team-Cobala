<?php
require_once 'medicine_receiving_dd.php';
class medicine_receiving_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'MEDICINE_RECEIVING_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'medicine_receiving_html';
    var $data_subclass = 'medicine_receiving';
    var $result_page = 'reporter_result_medicine_receiving.php';
    var $cancel_page = 'listview_medicine_receiving.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_medicine_receiving.php';

    function __construct()
    {
        $this->fields        = medicine_receiving_dd::load_dictionary();
        $this->relations     = medicine_receiving_dd::load_relationships();
        $this->subclasses    = medicine_receiving_dd::load_subclass_info();
        $this->table_name    = medicine_receiving_dd::$table_name;
        $this->tables        = medicine_receiving_dd::$table_name;
        $this->readable_name = medicine_receiving_dd::$readable_name;
        $this->get_report_fields();
    }
}
