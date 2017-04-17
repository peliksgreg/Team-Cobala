<?php
require 'path.php';
init_cobalt('Reporting');

init_var($_POST['btn_search']);
init_var($_POST['emergencycase']);
init_var($_POST['btn_cancel']);
init_var($_POST['btn_submit']);
init_var($_POST['patient_type']);
init_var($_POST['complain']);
init_var($_POST['medicine']);
init_var($_POST['from_month']);
init_var($_POST['from_year']);
init_var($_POST['from_day']);
init_var($_POST['to_month']);
init_var($_POST['to_year']);
init_var($_POST['to_day']);
init_var($_POST['id_number']);
$complain_clause = '';
$medicine_clause = '';
$patient_type_clause = '';
$id_number_clause = '';


// require 'subclasses/log_info.php';


require 'subclasses/log_info.php';
    $dbh_emergencycase = new log_info;

    $object_name = 'dbh_emergencycase';
    require 'components/create_form_data.php';
    $arr_form_data['patient_type'] = $_POST['patient_type'];
    $arr_form_data['id_number'] = $_POST['id_number'];
	$arr_form_data['complain'] = $_POST['complain'];
    $arr_form_data['medicine'] = $_POST['medicine'];
    $arr_form_data['from_month'] = $_POST['from_month'];
    $arr_form_data['from_year'] = $_POST['from_year'];
    $arr_form_data['from_day'] = $_POST['from_day'];
    $arr_form_data['to_month'] = $_POST['to_month'];
    $arr_form_data['to_year'] = $_POST['to_year'];
    $arr_form_data['to_day'] = $_POST['to_day'];
    extract($arr_form_data);

if($_POST['patient_type'] != '')
{
	$patient_type_clause = 'AND log_info.patient_type = "'.$_POST['patient_type'].'"';
}

if($_POST['id_number'] != '')
{
	$id_number_clause = " AND refstudent.student_id LIKE '%".$_POST['id_number']."%' OR employee.emp_id LIKE '%".$_POST['id_number']."%' ";
}

if($_POST['complain'] != '')
{
	$complain_clause = " AND complaints LIKE '%".$_POST['complain']."%'";
}

if($_POST['medicine'] != '')
{
	$medicine_clause = 'AND medicine.medicine_name = "'.$_POST['medicine'].'"';
}

if($_POST['btn_search'])
{
	$date_from = $_POST['from_year'].'-'.$_POST['from_month'].'-'.$_POST['from_day'];
	$date_to = $_POST['to_year'].'-'.$_POST['to_month'].'-'.$_POST['to_day'];
	$dbh = cobalt_load_class('log_info');
	$dbh->set_table('log_info left join log_detail on log_detail.log_id = log_info.log_id LEFT join medicine on log_detail.medicine_id = medicine.medicine_id LEFT JOIN employee on log_info.emp_id = employee.emp_id LEFT JOIN refstudent on log_info.student_id = refstudent.student_id');
	$dbh->set_where('date BETWEEN "'.$date_from.'" AND "'.$date_to.'" '.$patient_type_clause .' '.$id_number_clause.' '.$complain_clause.' '.$medicine_clause.' ');
	$dbh->exec_fetch('');
	$arr_result = $dbh->dump;
	// debug($dbh->query);
}


$html = cobalt_load_class('log_info_html');
$html->draw_header('Reporting Tool');
$html->draw_container_div_start();
$html->draw_fieldset_header('Generate Reports');
$html->draw_fieldset_body_start();
echo '<table>';
$html->draw_select_field(array('items'=>array('Student','Employee'),
	'values'=>array('Student','Employee')),'Patient Type' , $form_control_name='patient_type', $draw_table_tags=TRUE, $extra='');
$html->draw_text_field('ID number', $tf_control_name='id_number', $detail_view=FALSE, $control_type='', $draw_table_tags=TRUE, $extra='');	
$html->draw_text_field('Complain', $tf_control_name='complain', $detail_view=FALSE, $control_type='', $draw_table_tags=TRUE, $extra='');		
$html->draw_select_field_from_query("SELECT medicine_id, medicine_name from medicine",'medicine_id' , array('medicine_name'), 'Medicine', $form_control_name='medicine', $detail_view=FALSE, $draw_table_tags=TRUE, $list_separators='', $extra='');
$html->draw_date_field($draw_table_tags=TRUE, $cobalt_field_label='Date From', $cobalt_field_date_year='from_year', $cobalt_field_date_month='from_month', $cobalt_field_date_day='from_day','', FALSE,'date_from');
$html->draw_date_field($draw_table_tags=TRUE, $cobalt_field_label='Date To', $cobalt_field_date_year='to_year', $cobalt_field_date_month='to_month', $cobalt_field_date_day='to_day','', FALSE,'date_to');
// $html->draw_select_field_from_query("");	


echo '</table>';

$html->draw_fieldset_body_end();
$html->draw_fieldset_footer_start();
$html->draw_button('special', null, 'btn_search', 'Search', $draw_table_tags=FALSE, $colspan="2", $extra='');

$html->draw_fieldset_footer_end();
$html->draw_container_div_end();

$student_report = FALSE;
$emp_report = FALSE;

//insert table here
$html->draw_container_div_start();
$html->draw_fieldset_header('Result');
$html->draw_fieldset_body_start();
echo '<center>';
echo '<style>';
echo 'table td {
	padding:10px 10px 10px 10px;
}';		
echo '</style>';
echo '<table border = 1 >';

if ($arr_result['patient_type'] != 'Employee') {
	echo '<tr><td>Patient Type</td><td>ID number</td><td>Medicine</td></td><td>Quantity</td></tr>';
	$student_report = TRUE;
}else if ($arr_result['patient_type'] != 'Student') {
	echo '<tr><td>Patient Type</td><td>ID number</td><td>Medicine</td></td><td>Quantity</td></tr>';
	$emp_report = TRUE;
}
for($a = 0;$a < count($arr_result['patient_type']);++$a)
{

// echo '<tr><td>Patient Type</td><td>Student number</td><td>Employee number</td><td>Medicine</td></tr>';
if ($student_report == TRUE) {
	echo '<tr><td>'.$arr_result['patient_type'][$a].'</td><td>'.$arr_result['student_id'][$a].'</td><td>'.$arr_result['medicine_name'][$a].'</td><td>'.$arr_result['qty'][$a].'</td></tr>';
	
}else if ($emp_report == TRUE) {
	echo '<tr><td>'.$arr_result['patient_type'][$a].'</td><td>'.$arr_result['log_info.emp_id'][$a].'</td><td>'.$arr_result['medicine_name'][$a].'</td><td>'.$arr_result['qty'][$a].'</td></tr>';
}
}

echo '</table>';
$html->draw_fieldset_body_end();
$html->draw_fieldset_footer_start();
$html->draw_fieldset_footer_end();
$html->draw_container_div_end();
?>

