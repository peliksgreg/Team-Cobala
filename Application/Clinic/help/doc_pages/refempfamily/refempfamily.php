<?php
require 'path.php';
init_cobalt();
require 'subclasses/refempfamily_doc.php';
$obj_doc = new refempfamily_doc;
$obj_doc->auto_doc();