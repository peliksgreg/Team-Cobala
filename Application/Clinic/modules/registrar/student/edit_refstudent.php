<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Edit refstudent');

if(isset($_GET['student_id']))
{
    $student_id = urldecode($_GET['student_id']);
    require 'form_data_refstudent.php';
    $orig_student_id = $student_id;
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/refstudent.php';
    $dbh_refstudent = new refstudent;

    $object_name = 'dbh_refstudent';
    require 'components/create_form_data.php';
    $arr_form_data['orig_student_id'] = $_POST['orig_student_id'];
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_refstudent.php?$query_string");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');

        $message .= $dbh_refstudent->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_refstudent->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            require_once 'subclasses/refstudentfamily.php';
            $dbh_refstudentfamily = new refstudentfamily;
            $dbh_refstudentfamily->delete_many($arr_form_data);

            for($a=0; $a<$refstudentfamily_count;$a++)
            {
                
                $param = array(
                               'student_id'=>$student_id,
                               'relationship'=>$cf_refstudentfamily_relationship[$a],
                               'name'=>$cf_refstudentfamily_name[$a],
                               'email'=>$cf_refstudentfamily_email[$a],
                               'email_status'=>$cf_refstudentfamily_email_status[$a],
                               'address_type'=>$cf_refstudentfamily_address_type[$a],
                               'address'=>$cf_refstudentfamily_address[$a],
                               'postal_code'=>$cf_refstudentfamily_postal_code[$a],
                               'tel_num'=>$cf_refstudentfamily_tel_num[$a],
                               'mobile_num1'=>$cf_refstudentfamily_mobile_num1[$a],
                               'mobile_num2'=>$cf_refstudentfamily_mobile_num2[$a],
                               'attended'=>$cf_refstudentfamily_attended[$a]
                              );
                $dbh_refstudentfamily->add($param);
            }


            $dbh_refstudent->edit($arr_form_data);

            redirect("listview_refstudent.php?$query_string");
        }
    }
}
require 'subclasses/refstudent_html.php';
$html = new refstudent_html;
$html->draw_header('Edit %%', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('orig_student_id');
$html->draw_controls('edit');

$html->draw_footer();