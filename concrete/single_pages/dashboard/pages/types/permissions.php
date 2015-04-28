<?php defined('C5_EXECUTE') or die("Access Denied."); ?>


	<?php ob_start(); ?>
	<?php echo Loader::element('permission/help');?>
	<?php $help = ob_get_contents(); ?>
	<?php ob_end_clean(); ?>

    <form method="post" action="<?php echo $view->action('save')?>">
	<?php echo Loader::helper('validation/token')->output('save_permissions')?>
	<input type="hidden" name="ptID" value="<?php echo $pagetype->getPageTypeID()?>" />
	<?php
	$tp = new TaskPermission();
	if ($tp->canAccessPageTypePermissions()) { ?>	
		<?php Loader::element('permission/lists/page_type', array(
			'pagetype' => $pagetype
		))?>
	<?php } else { ?>
		<p><?php echo t('You cannot access page type permissions.')?></p>
	<?php } ?>
	<div class="ccm-dashboard-form-actions-wrapper">
        <div class="ccm-dashboard-form-actions">
		    <a href="<?php echo $view->url('/dashboard/pages/types')?>" class="btn btn-default"><?php echo t('Back')?></a>
		    <button type="submit" value="<?php echo t('Save')?>" class="btn btn-primary pull-right"><?php echo t('Save')?> <i class="icon-ok-sign icon-white"></i></button>
	    </div>
    </div>
	</form>
	<?php echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(false)?>