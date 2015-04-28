<?php
defined('C5_EXECUTE') or die("Access Denied.");
$form = Loader::Helper('form');
$selectedThemeID = 0;
$selectedTemplateID = 0;
if (is_object($selectedTheme)) {
	$selectedThemeID = $selectedTheme->getThemeID();
}
if (is_object($selectedTemplate)) {
	$selectedTemplateID = $selectedTemplate->getPageTemplateID();
}
?>

<div class="ccm-ui">
<form method="post" data-dialog-form="design" action="<?php echo $controller->action('submit')?>">

    <input type="hidden" name="sitemap" value="1" />
    
    <?php if ($cp->canEditPageTemplate()) { ?>
        <?php echo $form->label('pTemplateID', t('Page Template'))?>

        <?php if ($c->isGeneratedCollection()) { ?>
            <div class="alert alert-info"><?php echo t('This is a single page. It does not have a page template.')?></div>
        <?php } else { ?>
            <div class="form-group">
                <?php echo $form->select('pTemplateID', $templatesSelect, $selectedTemplateID)?>
            </div>
        <?php } ?>
    <?php } ?>

	<div class="form-group">
		<?php echo $form->label('pThemeID', t('Theme'))?>
		<?php echo $form->select('pThemeID', $themesSelect, $selectedThemeID)?>
	</div>



	<div class="dialog-buttons">
	<button class="btn btn-default pull-left" data-dialog-action="cancel"><?php echo t('Cancel')?></button>
	<button type="button" data-dialog-action="submit" class="btn btn-primary pull-right"><?php echo t('Save')?></button>
	</div>

</form>
</div>