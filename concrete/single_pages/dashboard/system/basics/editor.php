<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Rich Text Editor'), t('Control the options available for TinyMCE.'), false, false);?>
<?php
$h = Loader::helper('concrete/ui');
?>	
<div class="ccm-pane-body ccm-pane-body-footer">
	<?php echo t('The editor currently has no globally configurable options.')?>
</div>

<?php echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(false);?>