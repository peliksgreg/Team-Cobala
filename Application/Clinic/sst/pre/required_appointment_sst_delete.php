<?php
require 'subclasses/required_appointment_sst.php';
$sst = new required_appointment_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;