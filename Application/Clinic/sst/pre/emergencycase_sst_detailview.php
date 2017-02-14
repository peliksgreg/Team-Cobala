<?php
require 'subclasses/emergencycase_sst.php';
$sst = new emergencycase_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;