<!--Desarrollo: Edgar Cabral, Andres Ortiz-->
<!DOCTYPE html><html lang="es">
<head>
	<?php Loader::element('header_required'); ?>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/loader.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/base.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/concrete-style.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/estilo.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/menu.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/personalizacion.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/bs_leftnavi.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/960.css" />
    
    <link href="<?php echo $view->getStyleSheet('personalizacion.less')?>" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/1000.css" media="only screen and (min-width: 768px) and (max-width: 1000px)" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/767.css" media="only screen and (min-width: 480px) and (max-width: 767px)" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/479.css" media="only screen and (min-width: 200px) and (max-width: 479px)" />
	
	<script src="<?php echo $view->getThemePath(); ?>/js/jquery.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/bs_leftnavi.js"></script>
	<script>
	$(window).ready(function () {
	  $("#tapa").fadeOut();
	  $(".preloader-wrapper").delay(1000).fadeOut();
		  
		  var menu = $('#menu_ordenador');
		  var contenedor = $('#barrademenu');
		  var cont_offset = contenedor.offset();
		  $(window).on('scroll', function() {
			if($(window).scrollTop() > cont_offset.top) {
			  menu.addClass('menu-fijo');
			} else {
			  menu.removeClass('menu-fijo');
			}
		  });
	
	});
	</script>
    
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
    
    <script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	  ga('create', 'UA-58961527-1', 'auto');
	  ga('send', 'pageview');
	
	</script>
	
</head>
<body>

<div id="fb-root"></div>
<script>
	window.fbAsyncInit = function() {
		FB.init({
			xfbml	:true,
			version	:'v2.1'
		});
	};
	(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.0";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<div class="<?php echo $c->getPageWrapperClass(); ?>">
	<!-- Cargador Nuevo -->
    <div id="tapa">
        <div class="preloader-wrapper big active" >
          <div class="spinner-layer spinner-blue">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div><div class="gap-patch">
              <div class="circle"></div>
            </div><div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>
    
          <div class="spinner-layer spinner-red">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div><div class="gap-patch">
              <div class="circle"></div>
            </div><div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>
    
          <div class="spinner-layer spinner-yellow">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div><div class="gap-patch">
              <div class="circle"></div>
            </div><div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>
    
          <div class="spinner-layer spinner-green">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div><div class="gap-patch">
              <div class="circle"></div>
            </div><div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>
        </div>
    </div> 
    <!-- Cargador Nuevo -->


		<div class="controlador">
		<div class="controlador_header">
		
		<?php
			include 'application/themes/template/header.php';
		?>
		
	</div>
		<div class="controlador">
		<div class="controlador2">
        			
			<!-- Contenido -->
			<section id="Contenido">
				<div class="contenedor_portal">
					<!-- Contenido Principal -->
                    <div class="columna-uno">
								<?php 
								$a = new Area("Campo_slider");
								$a->display($c); 
								?>
                        </div>
					<div class="Principal-contenido">
                    	
						<!-- Noticias -->
						<div class="columna-dos-tres">
							<!-- 1 -->
							<!--
							<div class="publicaciones">
								<h4 class="normal"><a href="#">Titulo</a> - <spam style="font-size:14px;">fecha de publicacion</spam></h4>
								<div class="contenido_publicacion">
									<div class="img_pubblicacion"><img src="<?php echo $view->getThemePath(); ?>/img/imagen-referente.jpg" width="100%"/></div>
									<div class="contenido_publicacion">El Ministro - Secretario Ejecutivo de la SENATICs, Ing. David Ocampos y el Director del CERT-py, Ing. Santiago Vázquez se encuentran participando de "Regional Cybersecurity Simposium", un evento de ciberseguridad que se está llevando a cabo en el Hotel Sheraton de la ciudad de</div>
									<div class="detalles_social">
										<a href=""><div class="ver_mas">Ver más</div></a>
										<div class="compartir_social">
										Comparti esto en: 
											<a href=""><img src="<?php echo $view->getThemePath(); ?>/img/facebook 5.png" width="20px" height="20px" /></a>
											<a href=""><img src="<?php echo $view->getThemePath(); ?>/img/twitter 5.png" width="20px" height="20px" /></a>
										</div>
									</div>
								</div>
							</div>
							<!-- /1 -->
							<?php
								$a = new Area('displayNoticias');
								$a->display($c); ?>
							<div class="cargar_mas_noticias">
								<?php
								$a = new Area("CargarMasNoticias");
								$a->display($c); ?>
							</div>
							
							<div id="contenido_adicional">
								<?php 
								$a = new Area("ContenidoAdicional");
								$a->display($c); 
								?>
							</div> 
						</div>
						<!-- /Noticias -->
						
					</div>
					<!-- /Contenido Principal -->
					
					<!--Laterar infos -->
					<div class="columna-uno-tres" style="margin-top:20px;">
						<div class="paneles" id="banner1">
							
							<?php
								$a = new Area("Banners");
								$a->display($c); ?>
						</div>
					  <div class="paneles">
						<!--<h5 class="linea"><span>Seguinos en Facebbok</span></h5>-->
						<!--<div class="fb-like-box" data-href="https://www.facebook.com/pages/Consejo-de-Gobernadores-del-Paraguay/700717826657295?fref=ts" data-width="300" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="true" data-show-border="true" style="width: 100%;"></div>-->
						<center>
							<?php
								$a = new Area("fb");
								$a->display($c); ?>
						</center>
					  </div>
					</div>
				</div>    
			</section>
			<!-- / Contenidos -->
			
			<!-- Pie de pagina -->
			
			<?php
				include 'application/themes/template/enlaces_externos.php';
				include 'application/themes/template/footer.php';
			?>
				
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
