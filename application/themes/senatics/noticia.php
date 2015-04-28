<!DOCTYPE html><html lang="es">
<head>
	<?php Loader::element('header_required'); ?>
	<!--
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Portal único de informaciones y servicios orientados al ciudadano">
    <meta name="author" content="SENATICs">
	-->
<!--<title>.:: Portal Paraguay ::. Portal Único de Gobierno - Encontrá todas las informaciones y servicios que el Estado Paraguayo tiene para ofrecerte - Portal Paraguay</title>-->
	
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/base.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/estilo.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/960.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/1000.css" media="only screen and (min-width: 768px) and (max-width: 1000px)" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/767.css" media="only screen and (min-width: 480px) and (max-width: 767px)" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/479.css" media="only screen and (min-width: 200px) and (max-width: 479px)" />
    <link href='http://fonts.googleapis.com/css?family=Merriweather+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="<?php echo $c->getPageWrapperClass(); ?>">
<div id="fb-root"></div>
<!-- SDK de facebook -->
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<div class="body_detallado">
<div class="fondo_base">
<div class="controlador">
    <div class="controlador2">
		<div class="cabecera_general">
        	<div class="logo">
                <a href="/index.php"><img src="<?php echo $view->getThemePath(); ?>/img/company_logo.jpg" alt="Portal Paraguay" /></a>
            </div>
            <div class="logo2">
                <img src="<?php echo $view->getThemePath(); ?>/img/gobierno.jpg" alt="Gobierno Nacional Paraguay" /><br />
                <div class="Buscador">
                <form action="" method="post">
                	<div class="icono-buscador"></div>
                    <input type="text" value="" class="bases_buscador" placeholder="buscar..."/>
                </form>
            	</div>
            </div>
            <!-- Navegacion -->
            <nav id="nav">
                <ul class="Menu_general">
                    <li class="seleccion"><a href="/index.php">Portada</a></li>
                    <li><a href="#">Institucional</a></li>
                    <li><a href="#">Agenda</a></li>
                    <li><a href="/index.php/noticias">Noticias</a></li>
                    <li><a href="#">Marco Legal</a></li>
                    <li><a href="#">Audiovisual</a></li>
                    <li><a href="#">Integridad</a></li>
                    <li><a href="#">Contacto</a></li> 
                </ul>
            </nav>
            <!-- /Navegacion -->
            
        </div>
    </div>
</div>

</div>
	<div class="controlador">
    <div class="controlador2">
        <!-- Cabecera -->
        <header id="header">
            <div class="contenedor_portal">
                <div class="izquierda">
                <br />
                	<a href=""><div class="secciones">
                    	<div class="texto-menu">Compras Publicas</div>
                    </div></a>
                    <a href=""><div class="secciones">
                    	<div class="texto-menu">Curso de Oposición</div>
                    </div></a>
                    <a href=""><div class="secciones">
                    	<div class="texto-menu">Trámites</div>
                    </div></a>
                    <a href=""><div class="secciones">
                    	<div class="texto-menu">Becas</div>
                    </div></a>
                    
                    <div class="social">
                    <a href=""><img src="<?php echo $view->getThemePath(); ?>/img/facebook-1.png" width="30px" height="30px" /></a>
                    <a href=""><img src="<?php echo $view->getThemePath(); ?>/img/twitter-1.png" width="30px" height="30px" /></a>
                    <a href=""><img src="<?php echo $view->getThemePath(); ?>/img/contacto-1.png" width="30px" height="30px" /></a>
                    <a href=""><img src="<?php echo $view->getThemePath(); ?>/img/telefono-1.png" width="30px" height="30px" /></a>
                    </div>
                </div>
                <div class="derecha">
                	<!-- <img src="<?php echo $view->getThemePath(); ?>/img/slider.jpg"/> -->
					<?php
						$a = new Area('Main');
						$a->display($c);
						?>
					<?php
						$a = new Area('Imagen');
						$a->display($c);
						?>
                </div>
            </div>
        </header>
        <!-- /Cabecera -->
        
       
        
        <!-- Pie de pagina -->
        <footer id="footer" style="background:#eeeeee">
            <div class="contenedor_portal">
            	<a href=""><div class="enlace_footer">
                    <img src="<?php echo $view->getThemePath(); ?>/img/mapa del sitio 3.png" width="27" height="auto">
                    <div class="titulo_footer">Mapa del Sitio</div>
                </div></a>
                <a href=""><div class="enlace_footer">
                    <img src="<?php echo $view->getThemePath(); ?>/img/agenda 3.png" width="27" height="auto">
                    <div class="titulo_footer">Agenda</div>
                </div></a>
                <a href=""><div class="enlace_footer">
                    <img src="<?php echo $view->getThemePath(); ?>/img/multimedia 3.png" width="27" height="auto">
                    <div class="titulo_footer">Multimedia</div>
                </div></a>
                <a href=""><div class="enlace_footer">
                    <img src="<?php echo $view->getThemePath(); ?>/img/sitio web 3.png" width="27" height="auto">
                    <div class="titulo_footer">Otros Sitios de Interes</div>
                </div></a>
                <a href=""><div class="enlace_footer">
                    <img src="<?php echo $view->getThemePath(); ?>/img/etiqueta 3.png" width="27" height="auto">
                    <div class="titulo_footer">Etiquetas</div>
                </div></a>
                <a href=""><div class="enlace_footer">
                    <img src="<?php echo $view->getThemePath(); ?>/img/contacto 3.png" width="27" height="auto">
                    <div class="titulo_footer">Contacto</div>
                </div></a>
            </div>
        </footer>
        
        <footer id="footer" style="background:#465f6e;">
            <div class="contenedor_portal">
            	<div class="logo"><img src="<?php echo $view->getThemePath(); ?>/img/Logo-de-la-SENATICS-en-alfacolor.png" width="250" height="49"></div>
              	<div class="detalles">
                	Portal Único de Gobierno<br />
                    República del Paraguay<br />
                    Portal construido y mantenido por la SENATICs<br />
                    2014 Secretaría Nacional de Tecnologías de la Información y Comunicación<br />
                	<img src="<?php echo $view->getThemePath(); ?>/img/80x15.png" width="80" height="15"> 
                </div>
            </div>
        </footer>
        <!-- / Pie de pagima -->
    </div>
	</div>
</div>
<!-- / Fin web -->

<!-- SCRIPTS -->
<script type="text/javascript" src="<?php echo $view->getThemePath(); ?>/js/jquery.js"></script>
</div>
<?php Loader::element('footer_required'); ?>
</body>
</html>
