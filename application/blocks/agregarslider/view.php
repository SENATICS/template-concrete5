<?php defined('C5_EXECUTE') or die("Access Denied.");
$navigationTypeText = ($navigationType == 0) ? 'arrows' : 'pages';
$c = Page::getCurrentPage();
if ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item" style="width: <?php echo $width; ?>; height: <?php echo $height; ?>">
        <div style="padding: 40px 0px 40px 0px"><?php echo t('Image Slider disabled in edit mode.')?></div>
    </div>
<?php  } else { ?>
<script>
$(document).ready(function(){
    $(function () {
        $("#ccm-image-slider-<?php echo $bID ?>").responsiveSlides({
            prevText: "",   // String: Text for the "previous" button
            nextText: "",
            <?php if($navigationType == 0) { ?>
            nav:true
            <?php } else { ?>
            pager: true
            <?php } ?>
        });
    });
});
</script>

<div class="ccm-image-slider-container ccm-block-image-slider-<?php echo $navigationTypeText?>" >
    <div class="ccm-image-slider">
        <div class="ccm-image-slider-inner">

        <?php if(count($rows) > 0) { ?>
        <ul class="rslides" id="ccm-image-slider-<?php echo $bID ?>">
            <?php foreach($rows as $row) { ?>
                <?php if($row['title'] || $row['description']) { ?>
                
                    <li>
                        <div class="col_slide">
                            <?php if($row['linkURL']) { ?>
                                <a href="<?php echo $row['linkURL'] ?>" class="mega-link-overlay"></a>
                            <?php } ?>
                            <?php
                            $f = File::getByID($row['fID'])
                            ?>
                            <?php if(is_object($f)) {
                                $tag = Core::make('html/image', array($f, false))->getTag();
                                $tag->alt($row['title']);
                                print $tag; ?>
                            <?php } ?>
                        </div>
                        <div class="col_descripcion">
							<?php if($row['linkURL']) { ?>
                            	<a href="<?php echo $row['linkURL'] ?>">
                                    <div class="leer_mas">+ Info</div>
                                </a>
                                <a href="<?php echo $row['linkURL'] ?>">
                                    <p class="titulo_slider"><?php echo $row['title'] ?></p>
                                </a>
                            <?php }else{ ?>
                                <p class="titulo_slider"><?php echo $row['title'] ?></p>
                            <?php } ?>
                                
                            <?php echo $row['description'] ?>
                            
                            
                        </div>
                    </li>    
                
				<?php }else{ ?>
                
                    <li>
						<?php if($row['linkURL']) { ?>
                            <a href="<?php echo $row['linkURL'] ?>" class="mega-link-overlay"></a>
                        <?php } ?>
                        <?php
                        $f = File::getByID($row['fID'])
                        ?>
                        <?php if(is_object($f)) {
                            $tag = Core::make('html/image', array($f, false))->getTag();
                            $tag->alt($row['title']);
                            print $tag; ?>
                        <?php } ?>
                    </li>    

                    
                <?php } ?>
                
            <?php } ?>
        </ul>
        <?php } else { ?>
        <div class="ccm-image-slider-placeholder">
            <p><?php echo t('No hay Diapositivas'); ?></p>
        </div>
        <?php } ?>
        </div>

    </div>
</div>
<?php } ?>