<!--Desarrollo: Edgar Cabral, Andres Ortiz-->
<footer id="footer2" style="background:#eeeeee">
<?php
	$dp = $c->getCollectionID() == 1 ? $c : Page::getByID(1,'ACTIVE');
	$a = new Area('EnlacesExternos');
	$a->display($dp); ?>
</footer>
