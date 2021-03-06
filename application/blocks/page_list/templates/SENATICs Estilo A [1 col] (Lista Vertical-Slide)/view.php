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
    
    .card .card-title{
        font-size:18px;   
    }
    .card-action a{
        color: #ffab40 !important;
    }
    <?php
        print '#owl-demo'.$bID.' .card .card-action{ border:0; }';
        print '#owl-demo'.$bID.' .card .card-image img{ height:auto; }';
        print '#owl-demo'.$bID.' .item{ margin:5px; }';
        print '#owl-demo'.$bID.' .card-title a{ color:#FFF; }';
        print '#owl-demo'.$bID.' .card-title{ box-sizing:border-box; width:100%; background:rgba(0,0,0,.2); }';
    ?>
</style>
<script>
    <?php 
        print '$(document).ready(function() {';
        print   '$("#owl-demo'.$bID.'").owlCarousel({';
        print     'navigation : true,';
        print     'items : 1,';
        print     'lazyLoad : true,';
        print     'autoHeight : true';
        print   '});';
        print '});';
    ?>
</script>
<?php
defined('C5_EXECUTE') or die("Access Denied.");
$th = Loader::helper('text');
$c = Page::getCurrentPage();
$dh = Core::make('helper/date'); /* @var $dh \Concrete\Core\Localization\Service\Date */
?>

<?php if ( $c->isEditMode() && $controller->isBlockEmpty()) { ?>
    <div class="ccm-edit-mode-disabled-item"><?php echo t('Empty Page List Block.')?></div>
<?php } else { ?>

<?php print '<div id="owl-demo'.$bID.'" class="owl-carousel">'?>

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
            <div class="card estiloA">
            
                <div class="card-image animated bounceIn">
                    <?php if (is_object($thumbnail)): ?>
                        <?php
                        $img = Core::make('html/image', array($thumbnail));
                        $tag = $img->getTag();
                        $tag->addClass('img-responsive');
                        print $tag;
                        ?>
                    <?php endif; ?>
                    <?php if ($includeName): ?>
                        <div class="ccm-block-page-list-title">
                            <?php if ($useButtonForLink) { ?>
                                <span class="card-title"><?php echo $title; ?></span>
                            <?php } else { ?>
                                <span class="card-title"><a href="<?php echo $url ?>" target="<?php echo $target ?>"><?php echo $title ?></a></span>
                            <?php } ?>
                        </div>
                    <?php endif; ?>
                    
                </div>
            

                <?php if ($includeEntryText): ?>
                    <div class="card-content">

                        <?php if ($includeDate): ?>
                            <div class="ccm-block-page-list-date"><?php echo $date?></div>
                        <?php endif; ?>

                        <?php if ($includeDescription): ?>
                            <div class="ccm-block-page-list-description">
                                <?php echo $description ?>
                            </div>
                        <?php endif; ?>

                        <?php if ($useButtonForLink): ?>
                            <div class="card-action">
                                <a href="<?php echo $url?>" class="<?php echo $buttonClasses?>"><?php echo $buttonLinkText?></a>
                            </div>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>
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