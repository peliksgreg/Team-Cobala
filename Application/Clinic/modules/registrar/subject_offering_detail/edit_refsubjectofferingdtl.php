<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Edit refsubjectofferingdtl');

if()
{

    require 'form_data_refsubjectofferingdtl.php';

}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/refsubjectofferingdtl.php';
    $dbh_refsubjectofferingdtl = new refsubjectofferingdtl;

    $object_name = 'dbh_refsubjectofferingdtl';
    require 'components/create_form_data.php';

    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_refsubjectofferingdtl.php?$query_string");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        $message .= $dbh_refsubjectofferingdtl->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_refsubjectofferingdtl->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {

            $dbh_refsubjectofferingdtl->edit($arr_form_data);

            redirect("listview_refsubjectofferingdtl.php?$query_string");
        }
    }
}
require 'subclasses/refsubjectofferingdtl_html.php';
$html = new refsubjectofferingdtl_html;
$html->draw_header('Edit %%', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);


$html->draw_controls('edit');

$html->draw_footer();