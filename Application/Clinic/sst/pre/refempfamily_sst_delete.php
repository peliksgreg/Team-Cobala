<?php
require 'subclasses/refempfamily_sst.php';
$sst = new refempfamily_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;