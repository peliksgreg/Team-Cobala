<?php
require 'subclasses/refstudentfamily_sst.php';
$sst = new refstudentfamily_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;