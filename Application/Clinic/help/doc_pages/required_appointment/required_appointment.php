<?php
require 'path.php';
init_cobalt();
require 'subclasses/required_appointment_doc.php';
$obj_doc = new required_appointment_doc;
$obj_doc->auto_doc();