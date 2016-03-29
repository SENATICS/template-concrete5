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
    
    
    <link href="<?php echo $view->getThemePath(); ?>/css/custom.css" rel="stylesheet">

    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.theme.css" rel="stylesheet">
    <link href="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.transitions.css" rel="stylesheet">

    <link href="<?php echo $view->getThemePath(); ?>/js/google-code-prettify/prettify.css" rel="stylesheet">
</head>
<body>
<div class="<?php echo $c->getPageWrapperClass(); ?> web_page">
    <div id="tapa_carga">
        <div class="progress centrado">
          <div class="indeterminate blue lighten-1"></div>
        </div>
    </div>
<div class="cabecera fondo_color">
    <div class="container">
        
      <div class="row">
        <div class="col l9 m8 s12">
            <?php 
            $a = new GlobalArea("Header Site Title");
            $a->display(); 
            ?>
        </div>
        <div class="col l3 m4 s12 ">
            <?php 
            $a = new GlobalArea("Search");
            $a->display(); 
            ?>
        </div>
      </div>
        
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

  <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container" style="padding-bottom:10px;" style="color:#444">
        
            <?php 
            $a = new Area("Titulo");
            $a->display($c); 
            ?>
      </div>
    </div>
    <div class="parallax"><img src="<?php echo $view->getThemePath(); ?>/img/background1.jpg" alt="Unsplashed background img 1"></div>
  </div>


  <div class="container">
    <div class="section">
        <div class="row">
            <div class="col l9 m8 s12">
                <?php 
                $a = new Area("Contenido A");
                $a->display($c); 
                ?>
            </div>
            <div class="col l3 m4 s12 barra_lateral">
                <?php 
                $a = new Area("Contenido B");
                $a->display($c); 
                ?>
            </div>
        </div>
    </div>
  </div>

  <footer class="page-footer teal">
    <div class="container">
      <div class="row">
        <div class="col l4 s12">
            <img src="<?php echo $view->getThemePath(); ?>/img/Logo-de-la-SENATICS-en-alfacolor.png">
        </div>
          <div class="col l8 s12">
            <h5 class="white-text">Enlaces de Interes</h5>
            <div class="col l6 s12">
              <ul>
                <li><a class="white-text" href="#!">Secretaría de Acción Social (SAS)</a></li>
                <li><a class="white-text" href="#!">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>
                <li><a class="white-text" href="#!">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>
                <li><a class="white-text" href="#!">Instituto Nacional de Desarrollo Rural y de la Tierra (INDERT)</a></li>
              </ul>
            </div>
            <div class="col l6 s12">
              <ul>
                <li><a class="white-text" href="#!">Instituto Forestal Nacional (INFONA)</a></li>
                <li><a class="white-text" href="#!">Secretaría de Información y Comunicación (SICOM)</a></li>
                <li><a class="white-text" href="#!">Instituto PAraguayo del Indigena (INDI)</a></li>
                <li><a class="white-text" href="#!">Ministerio de Industria y Comercio (MIC)</a></li>
                <li><a class="white-text" href="#!">Ministerio de Hacienda (MH)</a></li>
                <li><a class="white-text" href="#!">Secretaría Nacional de Deportes (SND)</a></li>
              </ul>
            </div>
          </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <p>Basado en la Guía estándar web</p>
                <p><small>Versión del Template 2.0.0</small></p>
            </div>
            <div class="col l6 s12" style="text-align:right">
                <p>Portal construido conjuntamente con la SENATICs</p>
                <p>2015 Secretaría Nacional de Tecnologías de la Información y Comunicación</p>
            </div>
        </div>
      </div>
    </div>
  </footer>
</div>

  <!--  Scripts-->
  <script src="<?php echo $view->getThemePath(); ?>/js/jquery-2.1.1.min.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/owl-carousel/owl.carousel.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/materialize.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/init.js"></script>
  <script src="<?php echo $view->getThemePath(); ?>/js/script.js"></script>

    <script>
        $(document).ready(function() {
          $("#owl-demo").owlCarousel({
            navigation : true,
            items : 3,
            lazyLoad : true
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
