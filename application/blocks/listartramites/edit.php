<!--
	Código al que se llama cuando se edita un bloque existente
-->
<?php
defined('C5_EXECUTE') or die("Access Denied.");
$bObj=$controller;
$this->inc('form_setup_html.php', array('bObj' => $bObj));
