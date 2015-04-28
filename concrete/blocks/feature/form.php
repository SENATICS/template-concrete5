<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<div class="form-group ccm-block-feature-select-icon">
    <label class="control-label"><?php echo t("Icon")?></label>
    <?php echo $form->select('icon', $icons, $icon, array('style' => 'width: 360px'));?>
    <i data-preview="icon" <?php if ($icon) { ?>class="fa fa-<?php echo $icon?>"<?php } ?>></i>
</div>

<div class="form-group">
	<?php echo $form->label('title', t('Title'))?>
    <?php echo $form->text('title', $title); ?>
</div>

<div class="form-group">
    <?php echo $form->label('paragraph', t('Paragraph'))?>
    <?php echo $form->textarea('paragraph', $paragraph, array('rows' => 5)); ?>
</div>

<script type="text/javascript">
$(function() {
    $('div.ccm-block-feature-select-icon').on('change', 'select', function() {
        var $preview = $('i[data-preview=icon]');
            icon = $(this).val();

        $preview.removeClass();
        if (icon) {
            $preview.addClass('fa fa-' + icon);
        }
    });
});
</script>

<style type="text/css">
    div.ccm-block-feature-select-icon {
        position: relative;
    }
    div.ccm-block-feature-select-icon i {
        position: absolute;
        right: 15px;
        top: 35px;
    }
</style>