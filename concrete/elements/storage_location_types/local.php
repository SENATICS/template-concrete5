<?php
if (is_object($configuration)) {
	$path = $configuration->getRootPath();
	$relativePath = $configuration->getWebRootRelativePath();
}
?>
<?php $form = Loader::helper('form'); ?>
<div class="form-group">
    <label for="path"><?php echo t('Root Path')?></label>
    <?php echo $form->text('fslType[path]', $path)?>
</div>
<div class="form-group">
    <label for="path"><?php echo t('Relative Path')?></label>
    <div class="input-group">
        <?php echo $form->text('fslType[relativePath]', $relativePath)?>
        <span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
    </div>
</div>