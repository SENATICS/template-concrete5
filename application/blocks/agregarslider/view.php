<?php defined('C5_EXECUTE') or die("Access Denied.");
if($navigationType == 0) {
    $navigationTypeText = 'fade';
}else{
    if($navigationType == 1) {
        $navigationTypeText = 'backSlide';
    }else{
        if($navigationType == 2) {
            $navigationTypeText = 'goDown';
        }else{
            if($navigationType == 3) {
                $navigationTypeText = 'fadeUp';
            }
        } 
    } 
}
if($navegationShow == 0) {
    $navegationShowText = 'true';
}else{
    if($navegationShow == 1) {
        $navegationShowText = 'false';
    }
}

if($autoHeight == 0) {
    $autoHeightText = 'true';
}else{
    if($autoHeight == 1) {
        $autoHeightText = 'false';
    }
}




$c = Page::getCurrentPage();
?>
<style>
    .owl-theme .owl-controls .owl-buttons div{
        padding:10px !important;   
    }
    .titulo_slider{
        color:#FFF !important;   
        font-weight:bold;
    }
    .col_descripcion{
        position:absolute;
        top:0;
        right:0px;
        width:300px !important;
        height:100%;
        text-align:right;
        padding-left:40px;
        padding-right:20px;
        box-sizing:border-box;
        color:#FFF;
        background: rgba(0,0,0,0);
        background: -moz-linear-gradient(left, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        background: -webkit-gradient(left top, right top, color-stop(0%, rgba(0,0,0,0)), color-stop(23%, rgba(0,0,0,0.7)), color-stop(100%, rgba(0,0,0,0.7)));
        background: -webkit-linear-gradient(left, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        background: -o-linear-gradient(left, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        background: -ms-linear-gradient(left, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        background: linear-gradient(to right, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#000000', endColorstr='#000000', GradientType=1 );
    }
    .col_titulo{
        position:absolute;
        bottom:0;
        right:0px;
        min-width:100%;
        min-height:70px;
        text-align:right;
        padding-left:20px;
        padding-right:20px;
        box-sizing:border-box;
        color:#FFF;
        background: rgba(0,0,0,0);
        background: -moz-linear-gradient(left, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        background: -webkit-gradient(left top, right top, color-stop(0%, rgba(0,0,0,0)), color-stop(23%, rgba(0,0,0,0.7)), color-stop(100%, rgba(0,0,0,0.7)));
        background: -webkit-linear-gradient(left, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        background: -o-linear-gradient(left, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        background: -ms-linear-gradient(left, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        background: linear-gradient(to right, rgba(0,0,0,0) 0%, rgba(0,0,0,0.7) 23%, rgba(0,0,0,0.7) 100%);
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#000000', endColorstr='#000000', GradientType=1 );
    }
    @media only screen and (max-width : 600px) {
        .col_descripcion, .col_titulo{
            position:relative;
            padding-top:20px;
            padding-right:15px;
            padding-left:15px;
            width:100% !important;
            background: transparent;
            text-align:left;
            box-sizing:border-box;
            color:#222 !important;
            background-color:rgba(0,0,0,.5);
        }
        .col_titulo{
            padding-bottom:20px;
        }
        .titulo_slider{
            color:#222 !important;   
        }
        #owl-demo_slide a{
            color:#222;   
        }
    }
    #owl-demo_slide .owl-item img{
      display: block;
      width: 100%;
      height: auto;
      -webkit-border-radius: 3px;
      -moz-border-radius: 3px;
      border-radius: 3px;
    }
    #owl-demo_slide a{
        color:#FFF;   
    }
    #bar{
      width: 0%;
      max-width: 100%;
      height: 4px;
      background: #7fc242;
    }
    #progressBar{
      width: 100%;
      background: #EDEDED;
    }
</style>

<script>
    $(document).ready(function() {
        
      var time = <?php echo $timeSlide?>; // Tiempo 5 Segundos

      var $progressBar,
          $bar, 
          $elem, 
          isPause, 
          tick,
          percentTime;
        
        
      $("#owl-demo_slide").owlCarousel({
        autoPlay : <?php echo $timeSlide?>+'000',
        stopOnHover : true,
          afterInit : progressBar,
          afterMove : moved,
          startDragging : pauseOnDragging,
        paginationSpeed : 1000,
        goToFirstSpeed : 2000,
        singleItem : true,
        autoHeight : <?php echo $autoHeightText?>,
        transitionStyle:"<?php echo $navigationTypeText?>",
        lazyLoad : true,
        navigation:<?php echo $navegationShowText?>
      });
          
          //Init progressBar where elem is $("#owl-demo_slide")
        function progressBar(elem){
          $elem = elem;
          //build progress bar elements
          buildProgressBar();
          //start counting
          start();
        }
          
          //create div#progressBar and div#bar then prepend to $("#owl-demo_slide")
        function buildProgressBar(){
          $progressBar = $("<div>",{
            id:"progressBar"
          });
          $bar = $("<div>",{
            id:"bar"
          });
          $progressBar.append($bar).prependTo($elem);
        }

        function start() {
          //reset timer
          percentTime = 0;
          isPause = false;
          //run interval every 0.01 second
          tick = setInterval(interval, 10);
        };

        function interval() {
          if(isPause === false){
            percentTime += 1 / time;
            $bar.css({
               width: percentTime+"%"
             });
            //if percentTime is equal or greater than 100
            if(percentTime >= 100){
              //slide to next item 
              $elem.trigger('owl.next')
            }
          }
        }

        //pause while dragging 
        function pauseOnDragging(){
          isPause = true;
        }

        //moved callback
        function moved(){
          //clear interval
          clearTimeout(tick);
          //start again
          start();
        }

        //uncomment this to make pause on mouseover 
         $elem.on('mouseover',function(){
           isPause = true;
         })
         $elem.on('mouseout',function(){
           isPause = false;
         })
    });
</script>


<div id="owl-demo_slide" class="owl-carousel Slider <?php echo $navigationTypeText?> Navegacion-<?php echo $navegationShowText?>">
    <?php if(count($rows) > 0) { ?>
    
        <?php foreach($rows as $row) { ?>
            <?php if($row['title'] || $row['description']) { ?>
                <div>    
                    <?php if($row['linkURL']) { ?>
                        <a href="<?php echo $row['linkURL'] ?>" class="mega-link-overlay">
                    <?php } ?>
                    <?php
                        $f = File::getByID($row['fID'])
                    ?>
                    <?php if(is_object($f)) {
                        $tag = Core::make('html/image', array($f, false))->getTag();
                        $tag->alt($row['title']);
                        print $tag; ?>
                    <?php } ?>
                    <?php if($row['linkURL']) { ?>
                        </a>
                    <?php } ?>        
                            
                            
                    <?php if($row['description']) { ?>
                        <div class="col_descripcion">
                            <?php if($row['linkURL']) { ?>
                                <a href="<?php echo $row['linkURL'] ?>">
                                    <p class="titulo_slider"><?php echo $row['title'] ?></p>
                                    <?php echo $row['description'] ?>
                                </a>
                            <?php }else{ ?>
                                <p class="titulo_slider"><?php echo $row['title'] ?></p>
                                <?php echo $row['description'] ?>
                            <?php } ?>

                        </div>
                    <?php }else{ ?>
                        <div class="col_titulo">
                            <?php if($row['linkURL']) { ?>
                                <a href="<?php echo $row['linkURL'] ?>">
                                    <p class="titulo_slider"><?php echo $row['title'] ?></p>
                                </a>
                            <?php }else{ ?>
                                <p class="titulo_slider"><?php echo $row['title'] ?></p>
                            <?php } ?>
                        </div>
                    <?php } ?>
                    
                </div>
            <?php }else{ ?>
                <div>    
                    <?php if($row['linkURL']) { ?>
                        <a href="<?php echo $row['linkURL'] ?>" class="mega-link-overlay">
                    <?php } ?>
                    <?php
                        $f = File::getByID($row['fID'])
                    ?>
                    <?php if(is_object($f)) {
                        $tag = Core::make('html/image', array($f, false))->getTag();
                        $tag->alt($row['title']);
                        print $tag; ?>
                    <?php } ?>
                    <?php if($row['linkURL']) { ?>
                        </a>
                    <?php } ?>
                </div>
            <?php } ?>
        <?php } ?>
        
    <?php } else { ?>
        <div class="ccm-image-slider-placeholder">
            <p><?php echo t('No hay Diapositivas'); ?></p>
        </div>
    <?php } ?>
</div>
