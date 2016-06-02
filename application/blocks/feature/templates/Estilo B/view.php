<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php
$title = h($title);
if ($linkURL) {
    $title = '<a href="' . $linkURL . '">' . $title . '</a>';
}
?>
<div class="card teal lighten-3" style="padding:10px; box-sizing:border-box">
    <h2 class="center"><i class="fa fa-<?php echo $icon?>"></i></h2>
    <?php if ($title) { ?>
        <span class="card-title" style="color:#222;">
            <?php echo $title?>
        </span>
    <?php } ?>
    <?php
        if ($paragraph) {?>
            <p class="light"><?php echo $paragraph;?></p>
        <?php 
        }?>
    </div>
</div>