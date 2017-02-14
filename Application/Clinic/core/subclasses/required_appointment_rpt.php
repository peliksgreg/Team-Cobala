<?php
require_once 'required_appointment_dd.php';
class required_appointment_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'REQUIRED_APPOINTMENT_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'required_appointment_html';
    var $data_subclass = 'required_appointment';
    var $result_page = 'reporter_result_required_appointment.php';
    var $cancel_page = 'listview_required_appointment.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_required_appointment.php';

    function __construct()
    {
        $this->fields        = required_appointment_dd::load_dictionary();
        $this->relations     = required_appointment_dd::load_relationships();
        $this->subclasses    = required_appointment_dd::load_subclass_info();
        $this->table_name    = required_appointment_dd::$table_name;
        $this->tables        = required_appointment_dd::$table_name;
        $this->readable_name = required_appointment_dd::$readable_name;
        $this->get_report_fields();
    }
}
