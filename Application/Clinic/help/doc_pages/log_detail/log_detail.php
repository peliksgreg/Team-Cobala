<?php
require 'path.php';
init_cobalt();
require 'subclasses/log_detail_doc.php';
$obj_doc = new log_detail_doc;
$obj_doc->auto_doc();