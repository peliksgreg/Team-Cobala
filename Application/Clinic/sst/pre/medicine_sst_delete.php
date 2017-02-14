<?php
require 'subclasses/medicine_sst.php';
$sst = new medicine_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;