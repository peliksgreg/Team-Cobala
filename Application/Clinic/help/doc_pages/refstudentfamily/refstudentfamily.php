<?php
require 'path.php';
init_cobalt();
require 'subclasses/refstudentfamily_doc.php';
$obj_doc = new refstudentfamily_doc;
$obj_doc->auto_doc();