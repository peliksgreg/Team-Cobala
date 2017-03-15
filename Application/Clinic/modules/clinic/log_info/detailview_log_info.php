<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('View log info');

if(isset($_GET['log_id']))
{
    $log_id = urldecode($_GET['log_id']);
    require 'form_data_log_info.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_back']);

    if($_POST['btn_back'])
    {
        log_action('Pressed cancel button');
        require 'components/query_string_standard.php';
        redirect("listview_log_info.php?$query_string");
    }
}
require 'subclasses/log_info_html.php';
$html = new log_info_html;
$html->draw_header('Detail View: %%', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->detail_view = TRUE;

if(isset($patient_type) && $patient_type == 'Employee')
{
    //Show only Employee ID textbox
    $html->fields['student_id']['control_type'] = 'hidden';
}
else
{
    //Show only Student ID textbox
    $html->fields['emp_id']['control_type'] = 'hidden';
    $patient_type = 'Student';
}
$html->draw_controls('view');

$html->draw_footer();