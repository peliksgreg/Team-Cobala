<?php
require 'path.php';
init_cobalt();
require 'subclasses/medicine_doc.php';
$obj_doc = new medicine_doc;
$obj_doc->auto_doc();