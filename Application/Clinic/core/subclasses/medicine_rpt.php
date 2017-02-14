<?php
require_once 'medicine_dd.php';
class medicine_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'MEDICINE_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'medicine_html';
    var $data_subclass = 'medicine';
    var $result_page = 'reporter_result_medicine.php';
    var $cancel_page = 'listview_medicine.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_medicine.php';

    function __construct()
    {
        $this->fields        = medicine_dd::load_dictionary();
        $this->relations     = medicine_dd::load_relationships();
        $this->subclasses    = medicine_dd::load_subclass_info();
        $this->table_name    = medicine_dd::$table_name;
        $this->tables        = medicine_dd::$table_name;
        $this->readable_name = medicine_dd::$readable_name;
        $this->get_report_fields();
    }
}
