<?php

if($arr_form_data['patient_type'] == "Student")
{
    $patient_type = "S";
} else {
    $patient_type = "E";
}




$patient_type = $arr_form_data['patient_type'];

$location = $arr_form_data['location'];
$location = strtoupper($location);
$location_length = strlen($location);
$consonants = 'BCDFGHJKLMNPQRSTVWXYZ';
$consonants_length = strlen($consonants);
$code = '';
$max_code_chars = 3;

for($i=0; $i < $location_length; ++$i)
{
    if(strlen($code) < $max_code_chars)
    {
        for($j=0; $j < $consonants_length; ++$j)
        {
            if($location[$i] == $consonants[$j])
            {
                $code .= $consonants[$j];
                // $arr_form_data['guarantee_control_no'] = $code;
            }
        }
    }
}

$generated_code = $patient_type.''.$code;
