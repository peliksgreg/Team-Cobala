<?php
require 'path.php';
init_cobalt('Current Quantity');

init_var($_POST['btn_cancel']);
$html = cobalt_load_class('employee_html');
$dbh = cobalt_load_class('medicine_receiving');

// debug($_GET['medicine_id']);

//The function of back button
if($_POST['btn_back'])
    {
        log_action('Pressed cancel button');
        redirect("listview_medicine.php");
    }
//Initiation of the quering of database
$medicine_id = $_GET['medicine_id']; //['index of feild']
//Query based on what you need
//In our query, we combined the qty of the two fields in the tables which is the 'beggining balance' and the 'delivery' transactions 
$result = $dbh->execute_query("SELECT sum(qty) as 'current_status',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = ".$medicine_id."")->result; 
//for displaying of multiple records
$arr_result = array();
// while($row = $result->fetch_assoc())
// {
// 	$arr_result[] = $row;
// }

//for displaying of single record
$row = $result->fetch_assoc(); ////passing of the variable 
// debug($arr_result); //debug() method is used to display the result of the code!!

$dbh = cobalt_load_class('log_info');
//In this query we also totaled the quantity based on the medicine_id of the medicine.
$deduct = $dbh->execute_query("SELECT sum(qty) as 'current_status' FROM log_detail WHERE medicine_id = ".$medicine_id."")->result;
$row1 = $deduct->fetch_assoc(); //passing of the variable 
// debug($row1); 
//In this variable, we subtracted the total balance of the medicine
$difference = $row['current_status'] - $row1['current_status'];
    
//This is used to draw the HTML fields needed to display the 'cobalt feel'
$html->draw_header('Medical Stock');	
$html->draw_container_div_start();
$html->draw_fieldset_header('Supplies');
$html->draw_fieldset_body_start();
//Print the fields you need here
echo '<table border="1">';
	echo '<tr> <td>Medical Supply</td><td> Quantity</td></tr>';
	echo '<tr><td>'.$row['medicine_name'].'</td><td>'.$difference.'</td></tr>'; //Follow concatination format .$variable['index of field'].

echo '</table>';
$html->draw_fieldset_body_end();
$html->draw_fieldset_footer_start();
//Prints the cancel button
$html->draw_button('back');
$html->draw_fieldset_footer_end();
$html->draw_container_div_end();