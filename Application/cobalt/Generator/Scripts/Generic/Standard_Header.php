<?php

function createStandardHeader($Module_Name)
{
    $content=<<<EOD
<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt($Module_Name);

EOD;
    return $content;
}
