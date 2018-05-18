<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$this->inc('form_setup_html.php', array(
    'calendars' => $calendars,
    'langs' => $langs,
    'calendarID' => $calendarID,
    'lang' => $lang,
    'types' => $types,
    'typeID' => $typeID,
    'contentHeight' => $contentHeight
));
?>