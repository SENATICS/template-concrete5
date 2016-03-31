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

    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.transitions.css" rel="stylesheet">
    
    <style>
        .web_page img { opacity:0; }
        .googleMapCanvas img, .no-opacity img{ opacity: 1 !important;}
    </style>

    <link href="<?php echo $view->getThemePath(); ?>/js/google-code-prettify/prettify.css" rel="stylesheet">
    
    <link href="<?php echo $view->getThemePath(); ?>/css/personalizacion.css" type="text/css" rel="stylesheet"/>
    <link href="<?php echo $view->getStyleSheet('personalizacion.less') ?>" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="<?php echo $c->getPageWrapperClass(); ?>">
    <div class="progress centrado_superior">
      <div class="indeterminate blue lighten-1"></div>
    </div>

<div class="web_page">

    <div class="row cabecera fondo_color" style="margin-bottom: 0px !important;">
        <div class="col l9 m8 s12">
            <?php 
            $a = new GlobalArea("Header Site Title");
            $a->display(); 
            ?>
        </div>
        <div class="col l3 m4 s12 ajustar_img">
            <?php 
            $a = new GlobalArea("Search");
            $a->display(); 
            ?>
        </div>
    </div>

      <nav class="white menu_color">
        <div class="container">
            <?php 
            $a = new GlobalArea("Header Navigation");
            $a->display(); 
            ?>
        </div>
      </nav>

        <?php 
        $a = new Area("Slider");
        $a->display($c); 
        ?>


      <div class="container contenedor_principal">
        <div class="section">
                <?php 
                $a = new Area("Contenido A");
                $a->display($c); 
                ?>
        </div>
      </div>


      <div class="parallax-container valign-wrapper">
          <div class="container">
              <div class="row center">
                <?php 
                $a = new Area("Contenido B");
                $a->display($c); 
                ?>
              </div>
          </div>
        <div class="parallax"><!--<img src="<?php echo $view->getThemePath(); ?>/img/background1.jpg" alt="Unsplashed background img 1">--></div>
      </div>
    
        

      <footer class="page-footer">
        <div class="container">
          <div class="row">
            <div class="col l4 s12">
                <?php 
                $a = new GlobalArea("Footer Contact");
                $a->display(); 
                ?>
            </div>
            <div class="col l8 s12">
                <?php 
                $a = new GlobalArea("Footer Navigation");
                $a->display(); 
                ?>
            </div>
          </div>
        </div>
        <div class="footer-copyright">
          <div class="container">
            <div class="row">
                <div class="col l5 s12">
                    <p>Basado en la <a href="http://www.paraguay.gov.py/guia-estandar" target="_blank">Guía estándar para sitios web del Gobierno</a></p>
                    <p><small>Versión del Template 2.2.0 - Portal Paraguay</small></p>
                </div>
                <div class="col l7 s12" style="text-align:right">
                    <?php 
                    $a = new GlobalArea("Footer Legal");
                    $a->display(); 
                    ?>
                </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
    <div id="fondo_sitio" class="Fondo_diseño animated fadeIn"></div>
    <div class="vegas-overlay"></div>
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
    <style>
        .web_page img { opacity:0; }
    </style>

    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-collapse.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-transition.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-tab.js"></script>

    <script src="<?php echo $view->getThemePath(); ?>/js/google-code-prettify/prettify.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/application.js"></script>
    
    <?php Loader::element('footer_required'); ?>
  </body>
</html>
