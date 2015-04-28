<?php defined('C5_EXECUTE') or die("Access Denied."); 
if(!strlen($titleText)) { $titleText = $controller->getTitleText();}
?>

<div class="form-group" class="ccm-ui">
    <label><?php echo t("Custom Title")?></label>
	<div class="checkbox"><label>
        <?php echo $form->checkbox('useCustomTitle', 1, $useCustomTitle);?>
        <?php echo t('Override page name with custom title?')?>
    </label></div>
</div>

<div class="form-group">
	<?php echo $form->label('titleText', t('Custom Title Text'))?>
    <?php echo $form->text('titleText', $titleText); ?>
</div>
