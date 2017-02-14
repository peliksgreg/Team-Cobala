<?php
require 'subclasses/hospital_sst.php';
$sst = new hospital_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;