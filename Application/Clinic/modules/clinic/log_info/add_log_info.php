<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Add log info');

init_var($student_name);
init_var($emp_name);


require 'components/get_listview_referrer.php';

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/log_info.php';
    $dbh_log_info = new log_info;

    $object_name = 'dbh_log_info';
    require 'components/create_form_data.php';
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_log_info.php?$query_string");
    }

    if($_POST)
    {
        $dbh = cobalt_load_class('refstudent');
        $dbh1 = cobalt_load_class('employee');
        $result = $dbh->execute_query("SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id ='".$_POST['student_id']."'")->result;
        $result1 = $dbh->execute_query("SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id ='".$_POST['emp_id']."'")->result;
   $row = $result->fetch_assoc();
   $row1 = $result1->fetch_assoc();

   $student_name = $row['student_first_name'].' '.$row['student_middle_name'].' '.$row['student_last_name'];
   $employee_name = $row1['emp_first_name'].' '.$row1['emp_middle_name'].' '.$row1['emp_last_name'];


    }

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');


        if($arr_form_data['patient_type'] == 'Student')
        {
            $dbh_log_info->fields['emp_id']['required'] = FALSE;
        }
        else
        {
            $dbh_log_info->fields['student_id']['required'] = FALSE;   
        }

        $message .= $dbh_log_info->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_log_info->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $arr_form_data['date'] = date('Y-m-d');
            $arr_form_data['time'] = date('h:i:s');

            $dbh_log_info->add($arr_form_data);
            $log_id = $dbh_log_info->auto_id;
            require_once 'subclasses/log_detail.php';
            $dbh_log_info = new log_detail;
            for($a=0; $a<$log_detail_count;$a++)
            {
                
                $param = array(
                               'log_id'=>$log_id,
                               'medicine_id'=>$cf_log_detail_medicine_id[$a],
                               'qty'=>$cf_log_detail_qty[$a]
                              );
                $dbh_log_info->add($param); 
            }


            redirect("listview_log_info.php?$query_string");
        }
    }
}
require 'subclasses/log_info_html.php';
$html = new log_info_html;
$html->draw_header('Add %%', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

if(isset($patient_type) && $patient_type == 'Employee')
{
    //Show only Employee ID textbox
    $html->fields['student_id']['control_type'] = 'hidden';
    $html->fields['emp_id']['companion'] = '<input type="text" name="employee_name" placeholder="patient name" value="'.$employee_name.'" disabled>';

}
else
{
    //Show only Student ID textbox
    $html->fields['emp_id']['control_type'] = 'hidden';
    $html->fields['student_id']['companion'] = '<input type="text" name="student_name" placeholder="patient name" value="'.$student_name.'" disabled>';

    $patient_type = 'Student';
}

$html->draw_controls('add');
$html->draw_footer();