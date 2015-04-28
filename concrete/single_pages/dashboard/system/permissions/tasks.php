<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

	<?php ob_start(); ?>
	<?php echo Loader::element('permission/help');?>
	<?php $help = ob_get_contents(); ?>
	<?php ob_end_clean(); ?>
	
	<?php echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Task Permissions'), $help, 'span8 offset2', false)?>
	<form method="post" action="<?php echo $view->action('save')?>">
	<?php echo Loader::helper('validation/token')->output('save_permissions')?>
	
	<?php
	$tp = new TaskPermission();
	if ($tp->canAccessTaskPermissions()) { ?>	
		<?php Loader::element('permission/lists/miscellaneous')?>
	<?php } else { ?>
		<p><?php echo t('You cannot access task permissions.')?></p>
	<?php } ?>
	
	<div class="ccm-dashboard-form-actions-wrapper">
        <div class="ccm-dashboard-form-actions">
            <button class="pull-right btn btn-success" type="submit" ><?php echo t('Save')?> <i class="icon-ok-sign icon-white"></i></button>
        </div>
    </div>
	</form>
	<?php echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(false)?>