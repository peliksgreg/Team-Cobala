<?php
require 'subclasses/refstudentclearance_sst.php';
$sst = new refstudentclearance_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;