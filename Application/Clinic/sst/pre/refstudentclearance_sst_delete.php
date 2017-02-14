<?php
require 'subclasses/refstudentclearance_sst.php';
$sst = new refstudentclearance_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;