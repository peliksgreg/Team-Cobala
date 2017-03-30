<?php

function check_stock_levels()
{
	//For each item we are tracking...
	for($a=0; $a<$medicine_id_count;$a++){
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
}
//for displaying of single record

	
	//Get reorder point
	
	//If current stock < reorder point, add to list of items to restock
	
	
	//If items to restock > 0, return TRUE
	//else, return FALSE
	
	return TRUE;
}