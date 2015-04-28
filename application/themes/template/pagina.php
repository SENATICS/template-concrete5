<!DOCTYPE html><html lang="es">
<head>
	<!--Desarrollo: Edgar Cabral, Andres Ortiz-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/base.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/estilo.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/menu.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/personalizacion.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/bs_leftnavi.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/960.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/font-awesome.min.css" />
    
    <link href="<?php echo $view->getStyleSheet('personalizacion.less') ?>" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/1000.css" media="only screen and (min-width: 768px) and (max-width: 1000px)" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/767.css" media="only screen and (min-width: 480px) and (max-width: 767px)" />
	<link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/479.css" media="only screen and (min-width: 200px) and (max-width: 479px)" />
	<?php Loader::element('header_required'); ?>
	<script src="<?php echo $view->getThemePath(); ?>/js/jquery.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/bs_leftnavi.js"></script>
	
    <script type="text/javascript">
	function showMenu() {
		normal = document.getElementById("Menu1");
		activado = document.getElementById("Menu2");
		check = document.getElementById("check");
		if (check.checked) {
			activado.style.display='block';
			normal.style.display='none';
		}
		else {
			normal.style.display='block';
			activado.style.display='none';
		}
	}
	</script>
    <script src="<?php echo $view->getThemePath(); ?>/js/jquery.js"></script>
    <link href="<?php echo $view->getThemePath(); ?>/js/shadowbox/shadowbox.css" rel="stylesheet" type="text/css">

	<script type="text/javascript" src="<?php echo $view->getThemePath(); ?>/js/shadowbox/shadowbox.js"></script>
    <script type="text/javascript">
    Shadowbox.init({ skipSetup: true});
    $(function(){
        Shadowbox.setup("a.shadowbox", {
            gallery: "Galeria"
        });
    });
    </script>
</head>
<body>
<div class="<?php echo $c->getPageWrapperClass(); ?>">

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
		
        
		<div class="controlador">
		<div class="controlador_header">
			<?php
				include 'application/themes/template/header.php';
			?>
		</div>
		<div class="controlador">
		<div class="controlador2">
			<!-- Informacion -->
			<section id="central">
				<div class="contenedor_portal" style="margin-top:20px;">
						<?php
						$a = new Area('Titulo');
						$a->display($c); ?>
						<?php
						$a = new Area('Main');
						$a->display($c); ?>
				</div>
			</section>
			<!-- / Informacion -->
			
			<!-- Pie de pagina -->
			<?php
				include 'application/themes/template/footer.php';
			?>
			<!-- / Pie de pagima -->
		</div>
		</div>
	</div>
	<!-- / Fin web -->

</div>
<?php Loader::element('footer_required'); ?>
<style type="text/css">
@media only screen and (min-width: 200px) and (max-width: 479px){
p>img{width:100% !important; height:auto}
}
</style>
</body>
    
</html>
