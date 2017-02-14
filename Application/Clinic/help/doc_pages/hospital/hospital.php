<?php
require 'path.php';
init_cobalt();
require 'subclasses/hospital_doc.php';
$obj_doc = new hospital_doc;
$obj_doc->auto_doc();