<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php
$title = h($title);
if ($linkURL) {
    $title = '<a href="' . $linkURL . '">' . $title . '</a>';
}
?>
<div class="icon-block">
    <h2 class="center brown-text"><i class="fa fa-<?php echo $icon?>"></i></h2>
    <?php if ($title) { ?>
        <h5 class="center">
            <?php echo $title?>
        </h5>
    <?php } ?>
    <?php
        if ($paragraph) {?>
            <p class="light"><?php echo $paragraph;?></p>
        <?php 
        }?>
</div>