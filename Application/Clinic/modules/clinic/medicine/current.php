<?php
require 'path.php';
init_cobalt('Current Quantity');

init_var($_POST['btn_cancel']);
$html = cobalt_load_class('employee_html');
$dbh = cobalt_load_class('medicine_receiving');

// debug($_GET['medicine_id']);
if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_medicine.php");
    }
$medicine_id = $_GET['medicine_id'];
$result = $dbh->execute_query("SELECT sum(qty) as 'current_status',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = ".$medicine_id."")->result;
//multiple records
$arr_result = array();
// while($row = $result->fetch_assoc())
// {
// 	$arr_result[] = $row;
// }

//single record
$row = $result->fetch_assoc();
// debug($arr_result);

$dbh = cobalt_load_class('log_info');
$deduct = $dbh->execute_query("SELECT sum(qty) as 'current_status' FROM log_detail WHERE medicine_id = ".$medicine_id."")->result;
$row1 = $deduct->fetch_assoc();
// debug($row1);
$difference = $row['current_status'] - $row1['current_status'];
    

$html->draw_header('Medical Stock');	
$html->draw_container_div_start();
$html->draw_fieldset_header('Supplies');
$html->draw_fieldset_body_start();
echo '<table>';
	echo '<tr> <td>Medical Supply</td><td> Quantity</td></tr>';
	echo '<tr><td>'.$row['medicine_name'].'</td><td>'.$difference.'</td></tr>';

echo '</table>';
$html->draw_fieldset_body_end();
$html->draw_fieldset_footer_start();
$html->draw_button('cancel');
$html->draw_fieldset_footer_end();
$html->draw_container_div_end();