<?php
defined('C5_EXECUTE') or die("Access Denied.");

// now that we're in the specialized content file for this block type,
// we'll include this block type's class, and pass the block to it, and get
// the content

?>
<div style="text-align:center; margin-top: 20px; margin-bottom: 20px;">

<?php
$c = Page::getCurrentPage();
$vWidth=intval($controller->width);
$vHeight=intval($controller->height);


if ($c->isEditMode()) { ?>
	<div class="ccm-edit-mode-disabled-item" style="width:<?php echo $vWidth?>px; height:<?php echo $vHeight?>px;  max-width: 100%; ">
		<div style="padding:8px 0px; padding-top: <?php echo round($vHeight/2)-10?>px;"><?php echo t('Content disabled in edit mode.')?></div>
	</div>
<?php }else if (!$webmURL && !$oggURL && !$mp4URL) { ?>
    <div class="ccm-edit-mode-disabled-item" style="width:<?php echo $vWidth?>px; height:<?php echo $vHeight?>px; max-width: 100%; ">
		<div style="padding:8px 0px; padding-top: <?php echo round($vHeight/2)-10?>px;"><?php echo t('No Video Files Selected.')?></div>
    </div>
<?php } else if ($webmURL || $oggURL || $mp4URL){ ?>
    <video controls="controls" <?php echo $posterURL ? 'poster="'.$posterURL.'"' : '' ?> style="max-width: 100%;">
        <?php if($webmURL) { ?>
        <source src="<?php echo $webmURL ?>" type="video/webm" />
        <?php }
        if ($oggURL) { ?>
        <source src="<?php echo $oggURL ?>" type="video/ogg" />
        <?php }
        if ($mp4URL) { ?>
            <source src="<?php echo $mp4URL ?>" type="video/mp4" />
	    <?php // quicktime player for older IE ?>
		<object CLASSID="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" width="<?php echo $controller->width?>" height="<?php echo $controller->height?>" CODEBASE="http://www.apple.com/qtactivex/qtplugin.cab">
			<param name="src" value="<?php echo $mp4URL?>">
			<param name="autoplay" value="true">
			<param name="loop" value="false">
			<param name="controller" value="true">
			<embed src="<?php echo $mp4URL?>" width="<?php echo $controller->width?>" height="<?php echo $controller->height?>" autoplay="true" loop="false" controller="true" pluginspage="http://www.apple.com/quicktime/"></embed>
		</object>
        <?php } ?>
   </video>
<?php } ?>
</div>
