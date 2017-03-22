<?php
require 'subclasses/log_detail_sst.php';
$sst = new log_detail_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;