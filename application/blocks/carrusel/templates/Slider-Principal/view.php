<?php defined('C5_EXECUTE') or die("Access Denied.");
$navigationTypeText = ($navigationType == 0) ? 'dots' : 'slide';
$c = Page::getCurrentPage();
if ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item" style="<?php if ($maxWidth) { echo 'width:'.$maxWidth.'px'; } ?>">
        <div style="padding: 40px 0px 40px 0px"><?php echo t('Image Slider disabled in edit mode.')?></div>
    </div>
<?php  } else { ?>
<script>    
    
$(document).ready(function(){
    $(function () {
        $(".carrusel-<?php echo $bID ?>").show();
        
        $(".carrusel-<?php echo $bID ?>").slick({
            <?php if($navigationType == 0) { ?>
                dots: true,
            <?php } ?>
            
            <?php if ($slidesToShow) { echo "slidesToShow: $slidesToShow,"; } ?>
            <?php if ($slidesToScroll) { echo "slidesToScroll: $slidesToScroll,"; } ?>
            <?php if ($timeout) { echo "autoplaySpeed: $timeout,"; } ?>
            <?php if ($speed) { echo "speed: $speed,"; } ?>
            <?php if ($infinite) { echo "infinite: true,"; }else{ echo "infinite: false,";} ?>
            <?php if ($noAnimate) { echo "autoplay: true,"; } ?>
            <?php if ($modo_center) { echo "centerMode: true,"; }else{ echo "centerMode: false,"; } ?>
            <?php if ($auto_height) { echo "adaptiveHeight: true,"; }else{ echo "adaptiveHeight: false,"; } ?>
            responsive: [
                {
                  breakpoint: 1035,
                  settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                  }
                }
              ]
        });
        
    });
});
</script>
<style>
    <?php if ($modo_center) {?>
        .slick-slide{
            opacity: .5; 
            transition: .3s all;
        }
        .slick-center{
            opacity: 1; 
        }
    <?php }?>
    .carrusel-<?php echo $bID ?> .slick-slide img{
        padding: 0px;
    }
    .carrusel-<?php echo $bID ?> .carrusel_description_item{
        bottom: 0px;
        color: #FFF;
        margin: 0px;
        padding: 5px;
    }
</style>
<!--<?php echo $navigationTypeText?>-->
    <?php if(count($rows) > 0) { ?>
    <section class="sliderprincipal carrusel-<?php echo $bID ?> " style="<?php if ($maxWidth) { echo 'width:'.$maxWidth.'px'; } ?> display:none">
        <?php foreach($rows as $row) { ?>
            <div draggable="true">
            <?php if($row['linkURL']) { ?>
                <a href="<?php echo $row['linkURL'] ?>" class="mega-link-overlay" target="<?php if($row['target'] == 0) { echo '_self'; }else{ echo '_blank'; } ?>">
            <?php } ?>
            <?php $f = File::getByID($row['fID']); ?>
            <?php if(is_object($f)) {?>
                    
                <div class="row" style="background:#8c1917; margin:0px !important">
                    <div style="padding:0px !important;" class="<?php if($row['title'] || $row['description']) { echo "col l8 m12 s12"; }else{ echo "col l12"; } ?>">
                        <?php
                        $tag = Core::make('html/image', array($f, false))->getTag();
                        if($row['title']) {
                            $tag->alt($row['title']);
                        }else{
                            $tag->alt("slide");
                        }
                        $tag->addClass('img_responsive_items ');
                        print $tag; ?>
                    </div>
                    <div style="padding:0px !important;" class="<?php if($row['title'] || $row['description']) { echo "col l4 m12 s12"; }else{ echo "oculto"; } ?>">
                        <div class="carrusel_description_item">
                            <?php if($row['title']) { ?>
                                <div class="titulo_item_slider"><?php echo $row['title'] ?></div>
                            <?php } ?>
                            <?php if($row['description']) { ?>
                            <div class="descripcion_item_slider"><?php echo substr($row['description'], 0, 350); ?></div>
                                <?php if($row['linkURL']) { ?>
                                    <p style="text-align:right; color:#FFF !important;">Leer más</p>
                                <?php } ?>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                    
            <?php } ?>
            <?php if($row['linkURL']) { ?>
                </a>
            <?php } ?>    
            
            </div>
        <?php } ?>
    </section>
    <?php } else { ?>
    <div class="ccm-image-slider-placeholder">
        <p><?php echo t('No Slides Entered.'); ?></p>
    </div>
    <?php } ?>
<?php } ?>
