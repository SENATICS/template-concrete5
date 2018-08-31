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
<!--    <style>
        .web_page img { opacity:0; }
        .googleMapCanvas img, .no-opacity img{ opacity: 1 !important;}
    </style>
-->
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.transitions.css" rel="stylesheet">

    <link href="<?php echo $view->getThemePath(); ?>/js/google-code-prettify/prettify.css" rel="stylesheet">
    
    <link href="<?php echo $view->getThemePath(); ?>/css/personalizacion.css" type="text/css" rel="stylesheet"/>
    <link href="<?php echo $view->getStyleSheet('personalizacion.less') ?>" rel="stylesheet" type="text/css" />
    
    <script src="<?php echo $view->getThemePath(); ?>/js/jquery-2.1.1.min.js"></script>
</head>
<body>
<div class="<?php echo $c->getPageWrapperClass(); ?>">
        <div class="progress centrado_superior">
          <div class="indeterminate blue lighten-1"></div>
        </div>
<div class="linea_superior" id="linea_superior">
    <div class="container">
        <div class="row">
            <div class="col l8 s12">
                <?php 
                $a = new GlobalArea("info_superior");
                $a->display(); 
                ?>
            </div>
            <div class="col l4 s12">
                <?php 
                $a = new GlobalArea("search");
                $a->display(); 
                ?>
            </div>
        </div>
    </div>
</div>

<div class="cabecera web_page web_page_transparente no_shadow">
    <?php 
    $a = new GlobalArea("Header Site Title");
    $a->display(); 
    ?>  
</div>
    
<div class="web_page">

  <nav class="white menu_color">
    <div class="container">
        <?php 
        $a = new GlobalArea("Header Navigation");
        $a->display(); 
        ?>
    </div>
  </nav>

  <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container" style="padding-bottom:10px;">
            <?php 
            $a = new Area("Titulo");
            $a->display($c); 
            ?>
      </div>
    </div>
  </div>


  <div class="container contenedor_principal">
    <div class="section contenido_principal">
            <div class="row">
                <div class="col l9 s12">
                    <?php 
                    $a = new Area("Contenido");
                    $a->display($c); 
                    ?>
                </div>
                <div class="col l3 s12">
                    <?php 
                    $a = new Area("Contenido Lateral");
                    $a->display($c); 
                    ?>
                </div>
            </div>

    </div>
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
                <p>Basado en la <a href="https://www.paraguay.gov.py/guia-estandar" target="_blank">Guía estándar para sitios web del Gobierno</a></p>
                <p style="vertical-align:middle">
                    <img src="https://cdn.paraguay.gov.py/marca-SENATICs/plantilla-v2.2.5.png" style="height:30px;">
                    <a href="https://www.senatics.gov.py" target="_blank"><img src="https://cdn.paraguay.gov.py/marca-SENATICs/marca-senatics-claro.png" style="height:30px;"></a>
                </p>
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
  
  <script src="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.carousel.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/materialize.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/init.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/script.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/waypoints.min.js"></script>
    
    
<!--    
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
-->    

    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-collapse.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-transition.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/bootstrap-tab.js"></script>

    <script src="<?php echo $view->getThemePath(); ?>/js/google-code-prettify/prettify.js"></script>
    <script src="<?php echo $view->getThemePath(); ?>/js/application.js"></script>
    
    
    
    <?php Loader::element('footer_required'); ?>
  </body>
</html>
