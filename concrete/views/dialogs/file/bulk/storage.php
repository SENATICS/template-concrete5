<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<form data-dialog-form="bulk-file-storage" method="post" action="<?php echo $controller->action('submit')?>">
    <?php foreach($files as $f) { ?>
        <input type="hidden" name="fID[]" value="<?php echo $f->getFileID()?>" />
    <?php } ?>

    <div class="ccm-ui">
        <?php
        use \Concrete\Core\File\StorageLocation\StorageLocation as FileStorageLocation;
        
        $locations = FileStorageLocation::getList();
        foreach($locations as $fsl) { ?>
            <div class="radio"><label><?php echo $form->radio('fslID', $fsl->getID()) ?> <?php echo $fsl->getDisplayName()?></label></div>
        <?php } ?>
    </div>

    <div class="dialog-buttons">
        <button class="btn btn-default pull-left" data-dialog-action="cancel"><?php echo t('Cancel')?></button>
        <button type="button" data-dialog-action="submit" class="btn btn-primary pull-right"><?php echo t('Move Location')?></button>
    </div>

</form>

<script type="text/javascript">
    $(function() {
        ConcreteEvent.subscribe('AjaxFormSubmitSuccess', function(e, data) {
            if (data.form == 'bulk-file-storage') {
                ConcreteEvent.publish('FileManagerBulkFileStorageComplete', {files: data.response.files});
            }
        });
    });
</script>