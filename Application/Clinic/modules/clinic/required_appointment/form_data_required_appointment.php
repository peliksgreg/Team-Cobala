<?php
require 'components/get_listview_referrer.php';

require 'subclasses/required_appointment.php';
$dbh_required_appointment = new required_appointment;
$dbh_required_appointment->set_where("required_appointment_id='" . quote_smart($required_appointment_id) . "'");
if($result = $dbh_required_appointment->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date);
    if(count($data) == 3)
    {
        $date_year = $data[0];
        $date_month = $data[1];
        $date_day = $data[2];
    }
}

