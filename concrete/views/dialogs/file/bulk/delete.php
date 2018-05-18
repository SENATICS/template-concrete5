<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<div class="ccm-ui">
    <br/>
<?php if ($fcnt == 0) { ?>
<p><?php echo t("You do not have permission to delete any of the selected files."); ?><p>
        <?php } else { ?>

    <div class="alert alert-warning"><?php echo t('Are you sure you want to delete the following files?')?></div>

    <form data-dialog-form="delete-file" method="post" action="<?php echo $controller->action('delete_files')?>">
        <?php
        \Core::make('token')->output('files/bulk_delete');
        ?>

        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="table table-striped">

            <?php foreach($files as $f) {
                $fp = new Permissions($f);
                if ($fp->canDeleteFile()) {
                    $fv = $f->getApprovedVersion();
                    if (is_object($fv)) { ?>

                        <?php echo $form->hidden('fID[]', $f->getFileID())?>

                        <tr>
                            <td><?php echo $fv->getType()?></td>
                            <td class="ccm-file-list-filename" width="100%"><div style="word-wrap: break-word; width: 150px"><?php echo h($fv->getTitle())?></div></td>
                            <td><?php echo $dh->formatDateTime($f->getDateAdded()->getTimestamp())?></td>
                            <td><?php echo $fv->getSize()?></td>
                            <td><?php echo $fv->getAuthorName()?></td>
                        </tr>

                    <?php }
                }

            } ?>
        </table>
    </form>

    <div class="dialog-buttons">
        <button class="btn btn-default pull-left" data-dialog-action="cancel"><?php echo t('Cancel')?></button>
        <button type="button" data-dialog-action="submit" class="btn btn-danger pull-right"><?php echo t('Delete')?></button>
    </div>

    </div>

    <script type="text/javascript">
        $(function() {
            ConcreteEvent.subscribe('AjaxFormSubmitSuccess', function(e, data) {
                if (data.form == 'delete-file') {
                    ConcreteEvent.publish('FileManagerDeleteFilesComplete', {files: data.response.files});
                }
            });
        });
    </script>

<?php

}
