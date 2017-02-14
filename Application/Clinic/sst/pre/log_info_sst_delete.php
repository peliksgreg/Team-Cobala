<?php
require 'subclasses/log_info_sst.php';
$sst = new log_info_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;