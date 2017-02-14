<?php
require 'path.php';
init_cobalt();
require 'subclasses/refstudentclearance_doc.php';
$obj_doc = new refstudentclearance_doc;
$obj_doc->auto_doc();