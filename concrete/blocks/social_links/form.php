<?php defined('C5_EXECUTE') or die("Access Denied.");  ?>

<div class="form-group">
    <label class="control-label"><?php echo t('Choose Social Links to Show')?></label>
    <div id="ccm-block-social-links-list">
    <?php
    if (count($links) == 0) { ?>
        <p><?php echo t('You have not added any social links.')?></p>
    <?php }

    foreach($links as $link) {
        $service = $link->getServiceObject();
        ?>
        <div class="checkbox">
            <label><input type="checkbox" name="slID[]"
               <?php if (is_array($selectedLinks) && in_array($link, $selectedLinks)) { ?>
                 checked
                <?php } ?>
            value="<?php echo $link->getID()?>" />
            <?php echo $service->getDisplayName()?>
            </label>

            <i class="pull-right fa fa-arrows"></i>
        </div>
    <?php } ?>
    </div>
</div>

<hr/>
<div class="alert alert-info">
    <?php echo t('Add social links <a href="%s">in the dashboard</a>', URL::to('/dashboard/system/basics/social'))?>
</div>

<style type="text/css">
#ccm-block-social-links-list {
    -webkit-user-select: none;
}
#ccm-block-social-links-list i.fa-arrows {
    display: none;
    color: #666;
    cursor: move;
}

#ccm-block-social-links-list div.checkbox:hover i.fa-arrows {
    display: block;
}
</style>

<script type="text/javascript">
$(function() {
    $('#ccm-block-social-links-list').sortable();
});
</script>