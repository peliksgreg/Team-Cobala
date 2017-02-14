<?php
require 'path.php';
init_cobalt();
require 'subclasses/log_info_doc.php';
$obj_doc = new log_info_doc;
$obj_doc->auto_doc();