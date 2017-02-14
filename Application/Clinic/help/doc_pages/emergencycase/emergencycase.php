<?php
require 'path.php';
init_cobalt();
require 'subclasses/emergencycase_doc.php';
$obj_doc = new emergencycase_doc;
$obj_doc->auto_doc();