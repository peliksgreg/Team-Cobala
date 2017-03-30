<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Edit emergencycase');

if(isset($_GET['id']))
{
    $id = urldecode($_GET['id']);
    require 'form_data_emergencycase.php';
	init_var($employee_name);
	init_var($student_name);

}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
 
    
    require 'components/query_string_standard.php';
    require 'subclasses/emergencycase.php';
    $dbh_emergencycase = new emergencycase;

    $object_name = 'dbh_emergencycase';
    require 'components/create_form_data.php';

    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_emergencycase.php?$query_string");
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
		
        $message .= $dbh_emergencycase->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_emergencycase->check_uniqueness_for_editing($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {

            $dbh_emergencycase->edit($arr_form_data);

            redirect("listview_emergencycase.php?$query_string");
        }
    }
}
require 'subclasses/emergencycase_html.php';
$html = new emergencycase_html;
$html->draw_header('Edit %%', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->draw_hidden('id');

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

if(isset($patient_type) && $patient_type == 'Employee')
{
    //Show only Employee ID textbox
    $html->fields['patient_type']['control_type'] = 'hidden';
    $html->fields['emp_id']['companion'] = '<input type="text" name="employee_name" placeholder="patient name" value="'.$employee_name.'" disabled>';
}
else if(isset($patient_type) && $patient_type == 'Student')
{
   //Show only Student ID textbox
    $html->fields['patient_type']['control_type'] = 'hidden';
    $html->fields['student_id']['companion'] = '<input type="text" name="student_name" placeholder="patient name" value="'.$student_name.'" disabled>';
}

$html->draw_controls('edit');

$html->draw_footer();