<?php defined('C5_EXECUTE') or die("Access Denied.");


if(isset($foS) && is_object($foS)) { ?>
    <style>
        .Header_<?php echo $bID;?>{
            float:right;
        }
        .Header_<?php echo $bID;?> a{
            background-color:#FFF;
            padding:4px 6px;
            color:#001c54;
            font-size:16px;
            font-weight:bold;
            border-radius:3px;
            cursor:pointer;
        }
        .Header_<?php echo $bID;?> a.active{
            background-color:#001c54;
            color:#fff;
        }
    </style>
    <div class="Header_<?php echo $bID;?>">
        <a class="btnHeader_<?php echo $bID;?>_A active" onclick="pictureChange(1)">G</a>
        <span style="margin:0 1px; color:#001c54; font-weight:bold;">/</span>
        <a class="btnHeader_<?php echo $bID;?>_B" onclick="pictureChange(2)">C</a>
    </div>
    <script>
        function pictureChange(param){
            if(param == 1){
                $('.bID-<?php echo $bID;?>').attr("src", '<?php echo $imgPath["default"];?>');
                $('.btnHeader_<?php echo $bID;?>_A').addClass("active");
                $('.btnHeader_<?php echo $bID;?>_B').removeClass("active");
            }else{
                $('.bID-<?php echo $bID;?>').attr("src", '<?php echo $imgPath["hover"];?>');
                $('.btnHeader_<?php echo $bID;?>_B').addClass("active");
                $('.btnHeader_<?php echo $bID;?>_A').removeClass("active");
            }
        }
    </script>
<?php } ?>


<?php $c = Page::getCurrentPage();
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
    } else {
        $tag->alt('');
    }
    if ($title) {
        $tag->title(h($title));
    }
    if ($linkURL):
        print '<a href="' . $linkURL . '">';
    endif;

    print $tag;

    if ($linkURL):
        print '</a>';
    endif;
} else if ($c->isEditMode()) { ?>

    <div class="ccm-edit-mode-disabled-item"><?php echo t('Empty Image Block.')?></div>

<?php } ?>