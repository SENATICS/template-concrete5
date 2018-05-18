<style>
.page_list .fecha_publicacion{
    color: #AAA !important;
    font-size: 11px;
    vertical-align: super;
}
    .page_list li{
        list-style-type: none !important;   
        color:#FFF;
    }
    .page_list{
        padding-left:0px !important;
    }
    
    
    .pagination .active a{
        color:#FFF !important;   
    }
    .page_list .collapsible-header{
        height:auto !important;   
    }
    .page_list .collapsible-header{
        font-size:14px !important;
        font-weight:500 !important;
    }
    .page_list .collapsible-header i{
        margin-right:0px !important;
        margin-left:10px !important;
    }
    .page_list .descripcion_ubicacion p{
        padding-left:46px;   
        font-size:12px !important;
        line-height:1rem !important;
        margin-top:0px !important;
    }
    .page_list .img_info{
        width:100%;
        max-width:300px;
        float:left;
        margin-right: 20px;
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

    <?php if ($pageListTitle): ?>
        <li class="collection-header">
            <h5><?php echo h($pageListTitle)?></h5>
        </li>
    <?php endif; ?>
    
<ul class="collapsible popout page_list" data-collapsible="accordion" style="padding-left:0px !important">

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

            <?php if ($includeEntryText): ?> 
                <?php if ($includeName): ?>
                    <li class="collection-item">
                        <div class="collapsible-header" >
                            <a href="#!" class="secondary-content right"><i class="material-icons">info_outline</i></a>
                            <?php if ($includeDate): ?>
                                <span class="fecha_publicacion right"><?php echo $date?></span>
                            <?php endif; ?>
                            <b style="color:#222" class="truncate"><?php echo $title ?></b>
                            
                        </div>
                            
                        <?php if ($includeDescription): ?>
                            <div class="collapsible-body" style="padding:20px">
                                
                                <?php if (is_object($thumbnail)): ?>
                                <div class="img_info">
                                    <?php
                                    $img = Core::make('html/image', array($thumbnail));
                                    $tag = $img->getTag();
                                    $tag->addClass('img-responsive');
                                    print $tag;
                                    ?>
                                </div>
                                <style>
                                    .collapsible-body p{ padding:0px !important; }
                                </style>
                                <?php endif; ?>
                                <p><?php echo $description ?></p>
                                <?php if ($useButtonForLink): ?>
                                    <div class="right"><i class="material-icons" style="vertical-align:bottom">send</i><a href="<?php echo $url?>" style="margin:10px 5px"><?php echo $buttonLinkText?></a></div>
                                <?php endif; ?>
                                <div style="clear:both"></div>
                            </div>    
                        <?php endif; ?>
                    <?php endif; ?>
            <?php endif; ?>

        
	<?php endforeach; ?>

    <?php if (count($pages) == 0): ?>
        <div class="ccm-block-page-list-no-pages"><?php echo h($noResultsMessage)?></div>
    <?php endif;?>
</ul>

<?php if ($showPagination): ?>
    <?php echo $pagination;?>
<?php endif; ?>

<?php } ?>