<?php
require_once 'hospital_dd.php';
class hospital_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'HOSPITAL_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'hospital_html';
    var $data_subclass = 'hospital';
    var $result_page = 'reporter_result_hospital.php';
    var $cancel_page = 'listview_hospital.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_hospital.php';

    function __construct()
    {
        $this->fields        = hospital_dd::load_dictionary();
        $this->relations     = hospital_dd::load_relationships();
        $this->subclasses    = hospital_dd::load_subclass_info();
        $this->table_name    = hospital_dd::$table_name;
        $this->tables        = hospital_dd::$table_name;
        $this->readable_name = hospital_dd::$readable_name;
        $this->get_report_fields();
    }
}
