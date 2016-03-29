<style>
    @media only screen and (min-width : 600px) {
        .img_cabecera_lg{
            display:inline-block;
        }
        .img_cabecera_sm{
            display:none;
        }
    }
    @media only screen and (max-width : 600px) {
        .img_cabecera_lg{
            display:none;
        }
        .img_cabecera_sm{
            display:inline-block;
            width:100%;
        }
    }
</style>
<?php defined('C5_EXECUTE') or die("Access Denied.");

$c = Page::getCurrentPage();
if (is_object($f)) {
    if ($maxWidth > 0 || $maxHeight > 0) {
        $im = Core::make('helper/image');
        $thumb = $im->getThumbnail(
            $f,
            $maxWidth,
            $maxHeight
        ); //<-- set these 2 numbers to max width and height of thumbnails
        $tag = new \HtmlObject\Image();
        $tag->src($thumb->src)->width($thumb->width)->height($thumb->height);
    } else {
        $image = Core::make('html/image', array($f));
        $tag = $image->getTag();
    }
    $tag->addClass('ccm-image-block img-responsive bID-'.$bID);
    if ($altText) {
        $tag->alt(h($altText));
    }
    if ($title) {
        $tag->title(h($title));
    }
    if ($linkURL):
        print '<a href="' . $linkURL . '">';
    endif;

    print '<img src="' . $imgPath["default"] . '" class="img_cabecera_lg" id="img_cabecera_lg">';
    print '<img src="' . $imgPath["hover"] . '" class="img_cabecera_sm" id="img_cabecera_sm">';

    if ($linkURL):
        print '</a>';
    endif;
    
} else if ($c->isEditMode()) { ?>

    <div class="ccm-edit-mode-disabled-item"><?php echo t('Empty Image Block.')?></div>

<?php } ?>
