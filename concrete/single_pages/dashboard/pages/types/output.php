<?php defined('C5_EXECUTE') or die("Access Denied."); ?>


    <table class="table table-striped">

<?php foreach($pagetype->getPageTypePageTemplateObjects() as $pt) { ?>
	

    <tr>
        <td><a href="<?php echo $view->action('edit', $pt->getPageTemplateID())?>"><?php echo $pt->getPageTemplateIconImage()?></a></td>
        <td style="width: 100%; vertical-align: middle"><p class="lead" style="margin-bottom: 0px"><?php echo $pt->getPageTemplateDisplayName()?></p></td>
        <td style="vertical-align: middle"><a href="<?php echo $view->action('edit_defaults', $pagetype->getPageTypeID(), $pt->getPageTemplateID())?>" target="_blank" class="btn btn-default"><?php echo t('Edit Defaults')?></a></td>
    </tr>

<?php } ?>

</table>