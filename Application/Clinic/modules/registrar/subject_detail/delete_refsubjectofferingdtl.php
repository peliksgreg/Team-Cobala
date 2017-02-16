<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Delete refsubjectofferingdtl');

if(isset($_GET['subject_offering_id']))
{
    $subject_offering_id = urldecode($_GET['subject_offering_id']);
    require_once 'form_data_refsubjectofferingdtl.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_refsubjectofferingdtl.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/refsubjectofferingdtl.php';
        $dbh_refsubjectofferingdtl = new refsubjectofferingdtl;

        $object_name = 'dbh_refsubjectofferingdtl';
        require 'components/create_form_data.php';

        require_once 'subclasses/refsubjectofferinghdr.php';
        $dbh_refsubjectofferinghdr = new refsubjectofferinghdr;
        $dbh_refsubjectofferinghdr->delete_many($arr_form_data);


        $dbh_refsubjectofferingdtl->delete($arr_form_data);

        redirect("listview_refsubjectofferingdtl.php?$query_string");
    }
}
require 'subclasses/refsubjectofferingdtl_html.php';
$html = new refsubjectofferingdtl_html;
$html->draw_header('Delete %%', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('subject_offering_id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();