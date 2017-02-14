<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Edit xrefstudentschedule');

if(isset($_GET['subject_offering_id']) && isset($_GET['student_id']))
{
    $subject_offering_id = urldecode($_GET['subject_offering_id']);
    $student_id = urldecode($_GET['student_id']);
    require 'form_data_xrefstudentschedule.php';
    $orig_subject_offering_id = $subject_offering_id;
    $orig_student_id = $student_id;
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/xrefstudentschedule.php';
    $dbh_xrefstudentschedule = new xrefstudentschedule;

    $object_name = 'dbh_xrefstudentschedule';
    require 'components/create_form_data.php';
    $arr_form_data['orig_subject_offering_id'] = $_POST['orig_subject_offering_id'];
    $arr_form_data['orig_student_id'] = $_POST['orig_student_id'];
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_xrefstudentschedule.php?$query_string");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        $message .= $dbh_xrefstudentschedule->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_xrefstudentschedule->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {

            $dbh_xrefstudentschedule->edit($arr_form_data);

            redirect("listview_xrefstudentschedule.php?$query_string");
        }
    }
}
require 'subclasses/xrefstudentschedule_html.php';
$html = new xrefstudentschedule_html;
$html->draw_header('Edit %%', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('orig_subject_offering_id');
$html->draw_hidden('orig_student_id');
$html->draw_controls('edit');

$html->draw_footer();