<?php
require 'components/get_listview_referrer.php';

require 'subclasses/dept.php';
$dbh_dept = new dept;
$dbh_dept->set_where("dept_id='" . quote_smart($dept_id) . "'");
if($result = $dbh_dept->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

require_once 'subclasses/refstudentclearance.php';
$dbh_refstudentclearance = new refstudentclearance;
$dbh_refstudentclearance->set_fields('term_id, date, student_id, remarks, is_clear, emp_id');
$dbh_refstudentclearance->set_where("dept_id='" . quote_smart($dept_id) . "'");
if($result = $dbh_refstudentclearance->make_query()->result)
{
    $num_refstudentclearance = $dbh_refstudentclearance->num_rows;
    for($a=0; $a<$num_refstudentclearance; $a++)
    {
        $data = $result->fetch_row();
        $cf_refstudentclearance_term_id[$a] = $data[0];
        $data_temp_cf_date = explode('-',$data[1]);
        $cf_refstudentclearance_date_year[$a] = $data_temp_cf_date[0];
        $cf_refstudentclearance_date_month[$a] = $data_temp_cf_date[1];
        $cf_refstudentclearance_date_day[$a] = $data_temp_cf_date[2];
        $cf_refstudentclearance_student_id[$a] = $data[2];
        $cf_refstudentclearance_remarks[$a] = $data[3];
        $cf_refstudentclearance_is_clear[$a] = $data[4];
        $cf_refstudentclearance_emp_id[$a] = $data[5];
    }
}

