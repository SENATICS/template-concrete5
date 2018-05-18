<?php 
defined('C5_EXECUTE') or die("Access Denied.");

function se($s) {return preg_replace(array ('/"/','/,/','/\n/','/\r/','/:/','/;/','/\\//'), array ('\"','\\,','\\n','','\:','\\;','\\\\'), $s);}

?>
