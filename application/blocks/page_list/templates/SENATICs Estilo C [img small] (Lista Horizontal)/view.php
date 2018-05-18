<style>
    .tarjeta{
        background:rgba(250,250,250,.5);
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .07), 0 2px 10px 0 rgba(0, 0, 0, .09);
        margin: 2rem 0 2rem 0;
        transition: box-shadow .25s;
        border-radius: 2px;
        position: relative;
        display:block;
        padding-bottom:15px;
        padding-right:10px;
    }
    .tarjeta:hover{background:#fff; box-shadow:0 8px 17px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.13)}
    
    .tarjeta .card-title{
        color: #fff;
        margin-top:7px;
        margin-bottom:7px;
        font-size: 20px;
        font-weight: 300; 
    }
    .tarjeta .card-title.activator {
        cursor: pointer;   
    }
    .tarjeta .oculto{
        clear: left;   
    }
    .tarjeta .card-content p{
        margin-top:5px;   
    }
.portada_imagen{
    max-width:160px;
    width:100%;
    padding:10px;
    float:left;
}
.contenido_detalle{
    padding-left:180px !important;
    margin-top:-15px;
    padding-top:4px;
}
@media only screen and (max-width : 600px) {
    .portada_imagen{
        max-width:100% !important;
        padding:0;
        float:none !important;
    }
    .contenido_detalle{
        padding:10px !important;
        margin-top:0px;
    }
    .fecha_publicacion{
        padding-left:10px;   
    }
}
</style>
<?php
defined('C5_EXECUTE') or die("Access Denied.");
$th = Loader::helper('text');
$c = Page::getCurrentPage();
$dh = Core::make('helper/date'); /* @var $dh \Concrete\Core\Localization\Service\Date */
?>

<?php if ( $c->isEditMode() && $controller->isBlockEmpty()) { ?>
    <div class="ccm-edit-mode-disabled-item"><?php echo t('Empty Page List Block.')?></div>
<?php } else { ?>

<div class="listado_enlaces">

    <?php if ($pageListTitle): ?>
        <div class="ccm-block-page-list-header">
            <h5><?php echo h($pageListTitle)?></h5>
        </div>
    <?php endif; ?>

    <?php if ($rssUrl): ?>
        <a href="<?php echo $rssUrl ?>" target="_blank" class="ccm-block-page-list-rss-feed"><i class="fa fa-rss"></i></a>
    <?php endif; ?>
    <?php foreach ($pages as $page):

		// Prepare data for each page being listed...
        $buttonClasses = 'ccm-block-page-list-read-more';
        $entryClasses = 'ccm-block-page-list-page-entry';
		$title = $th->entities($page->getCollectionName());
		$url = $nh->getLinkToCollection($page);
		$target = ($page->getCollectionPointerExternalLink() != '' && $page->openCollectionPointerExternalLinkInNewWindow()) ? '_blank' : $page->getAttribute('nav_target');
		$target = empty($target) ? '_self' : $target;
		$description = $page->getCollectionDescription();
		$description = $controller->truncateSummaries ? $th->wordSafeShortText($description, $controller->truncateChars) : $description;
		$description = $th->entities($description);
        $thumbnail = false;
        if ($displayThumbnail) {
            $thumbnail = $page->getAttribute('thumbnail');
        }
        $includeEntryText = false;
        if ($includeName || $includeDescription || $useButtonForLink) {
            $includeEntryText = true;
        }
        if (is_object($thumbnail) && $includeEntryText) {
            $entryClasses = 'ccm-block-page-list-page-entry-horizontal';
        }

        $date = $dh->formatDateTime($page->getCollectionDatePublic(), true);


		//Other useful page data...


		//$last_edited_by = $page->getVersionObject()->getVersionAuthorUserName();

		//$original_author = Page::getByID($page->getCollectionID(), 1)->getVersionObject()->getVersionAuthorUserName();

		/* CUSTOM ATTRIBUTE EXAMPLES:
		 * $example_value = $page->getAttribute('example_attribute_handle');
		 *
		 * HOW TO USE IMAGE ATTRIBUTES:
		 * 1) Uncomment the "$ih = Loader::helper('image');" line up top.
		 * 2) Put in some code here like the following 2 lines:
		 *      $img = $page->getAttribute('example_image_attribute_handle');
		 *      $thumb = $ih->getThumbnail($img, 64, 9999, false);
		 *    (Replace "64" with max width, "9999" with max height. The "9999" effectively means "no maximum size" for that particular dimension.)
		 *    (Change the last argument from false to true if you want thumbnails cropped.)
		 * 3) Output the image tag below like this:
		 *		<img src="<?php echo $thumb->src ?>" width="<?php echo $thumb->width ?>" height="<?php echo $thumb->height ?>" alt="" />
		 *
		 * ~OR~ IF YOU DO NOT WANT IMAGES TO BE RESIZED:
		 * 1) Put in some code here like the following 2 lines:
		 * 	    $img_src = $img->getRelativePath();
		 *      $img_width = $img->getAttribute('width');
		 *      $img_height = $img->getAttribute('height');
		 * 2) Output the image tag below like this:
		 * 	    <img src="<?php echo $img_src ?>" width="<?php echo $img_width ?>" height="<?php echo $img_height ?>" alt="" />
		 */

		/* End data preparation. */

		/* The HTML from here through "endforeach" is repeated for every item in the list... */ ?>

        <div class="<?php echo $entryClasses?> item">
            <div class="tarjeta">
            
                <?php if (is_object($thumbnail)){ ?>
                    <div class="portada_imagen">
                        <?php
                        $img = Core::make('html/image', array($thumbnail));
                        $tag = $img->getTag();
                        $tag->addClass('activator img-responsive materialboxed');
                        print $tag;
                        ?>
                        
                        <?php if ($includeDate): ?>
                        <div class="fecha_publicacion">
                            <i class="Tiny material-icons left" style="margin-right:5px; margin-top:-1px;">schedule</i><div class="ccm-block-page-list-date"><?php echo $date?></div>
                        </div>
                        <?php endif; ?>
                        
                    </div>
                <?php }else{ ?>
                    <style>
                        .contenido_detalle{
                            padding-left:10px !important;
                        }
                    </style>
                <?php } ?>
                
                
            

            <?php if ($includeEntryText): ?>
                <div class="card-content contenido_detalle">
                    <?php if (is_object($thumbnail)){}else{ ?>
                        <?php if ($includeDate): ?>
                            <div class="fecha_publicacion right">
                                <i class="Tiny material-icons left" style="margin-right:5px; margin-top:-1px;">schedule</i><div class="ccm-block-page-list-date"><?php echo $date?></div>
                            </div>
                        <?php endif; ?>
                    <?php } ?>
                    
                    
                    <?php if ($includeName): ?>
                        <span class="card-title activator grey-text text-darken-4"><a href="<?php echo $url ?>" target="<?php echo $target ?>"><?php echo $title ?></a></span>
                    <?php endif; ?>
                    
                    <?php if ($includeDescription): ?>
                        <p><?php echo $description ?></p>
                    <?php endif; ?>
                    <!--<a class="right" href="<?php echo $url ?>" target="<?php echo $target ?>">Ver info</a>-->
                    
                    <?php if ($useButtonForLink): ?>
                        <a href="<?php echo $url?>" style="margin:10px 5px; text-align:right"><?php echo $buttonLinkText?></a>
                    <?php endif; ?>
                </div>
            <?php endif; ?>
                <div class="oculto"></div>
                <div style="clear:both"></div>
            </div>
        </div>

	<?php endforeach; ?>

    <?php if (count($pages) == 0): ?>
        <div class="ccm-block-page-list-no-pages"><?php echo h($noResultsMessage)?></div>
    <?php endif;?>

</div><!-- end .ccm-block-page-list -->

<?php if ($showPagination): ?>
    <?php echo $pagination;?>
<?php endif; ?>

<?php } ?>