<!--Template Diseñador por: Edgar Missael Cabral Báez-->
<!DOCTYPE html>
<html lang="en">
<head>
  <?php Loader::element('header_required'); ?>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="<?php echo $view->getThemePath(); ?>/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="<?php echo $view->getThemePath(); ?>/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="<?php echo $view->getThemePath(); ?>/css/animate.css" type="text/css" rel="stylesheet"/>
    
    <link href="<?php echo $view->getThemePath(); ?>/css/custom.css" rel="stylesheet">
    <style>
        .web_page img { opacity:0; }
    </style>

    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.transitions.css" rel="stylesheet">

    <link href="<?php echo $view->getThemePath(); ?>/js/google-code-prettify/prettify.css" rel="stylesheet">
    
    <link href="<?php echo $view->getThemePath(); ?>/css/personalizacion.css" type="text/css" rel="stylesheet"/>
    <link href="<?php echo $view->getStyleSheet('personalizacion.less') ?>" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="<?php echo $c->getPageWrapperClass(); ?> web_page">
        <div class="progress centrado_superior">
          <div class="indeterminate blue lighten-1"></div>
        </div>

  <div class="container contenedor_principal">
    <div class="section contenido_principal">

            <?php 
            $a = new Area("Contenido");
            $a->display($c); 
            ?>

    </div>
  </div>
</div>

  <!--  Scripts-->
  <script src="<?php echo $view->getThemePath(); ?>/js/jquery-2.1.1.min.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.carousel.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/materialize.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/init.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/script.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/waypoints.min.js"></script>
    
    
    <script>
        $(document).ready(function() {
          $("#owl-demo").owlCarousel({
            navigation : true,
            items : 3,
            lazyLoad : true
          });
        });
    </script>
    <script type="text/javascript">
    jQuery(function($) { 
        $('.web_page img').waypoint(function() {
            $(this).toggleClass( 'animated fadeIn mostrar' );
        },
        {
            offset: '95%',
            triggerOnce: true
        });        
    });
    </script>
    

    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-collapse.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-transition.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-tab.js"></script>

    <script src="<?php echo $view->getThemePath(); ?>/js/google-code-prettify/prettify.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/application.js"></script>
    
    
    
    <?php Loader::element('footer_required'); ?>
  </body>
</html>
