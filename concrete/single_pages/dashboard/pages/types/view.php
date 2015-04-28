<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php if ($this->controller->getTask() == 'edit' && is_object($pagetype)) { ?>

<form class="form-horizontal" method="post" action="<?php echo $view->action('submit', $pagetype->getPageTypeID())?>">
<div class="ccm-pane-body">
<?php echo Loader::element('page_types/form/base', array('pagetype' => $pagetype));?>
</div>
<div class="ccm-dashboard-form-actions-wrapper">
<div class="ccm-dashboard-form-actions">
	<a href="<?php echo $view->url('/dashboard/pages/types')?>" class="btn btn-default pull-left"><?php echo t('Cancel')?></a>
	<button class="pull-right btn btn-primary" type="submit"><?php echo t('Save')?></button>
</div>
</div>

</form>

<?php } else {
	$pk = PermissionKey::getByHandle('access_page_type_permissions');
	 ?>

    <div class="ccm-dashboard-header-buttons btn-group">
        <a href="<?php echo $view->url('/dashboard/pages/types/organize')?>" class="btn btn-default"><?php echo t('Order &amp; Group')?></a>
        <a href="<?php echo $view->url('/dashboard/pages/types/add')?>" class="btn btn-primary"><?php echo t('Add Page Type')?></a>
    </div>


    <?php if (count($pagetypes) > 0) { ?>

	<table class="table table-striped">
	<thead>
		<tr>
			<th><?php echo t('Name')?></th>
            <th></th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($pagetypes as $cm) {  ?>
		<tr>
			<td class="page-type-name"><?php echo $cm->getPageTypeName()?></td>
			<td class="page-type-tasks">
				<a href="<?php echo $view->action('edit', $cm->getPageTypeID())?>" class="btn btn-default btn-xs"><?php echo t('Basic Details')?></a>
				<a href="<?php echo $view->url('/dashboard/pages/types/form', $cm->getPageTypeID())?>" class="btn btn-default btn-xs"><?php echo t('Edit Form')?></a>
				<a href="<?php echo $view->url('/dashboard/pages/types/output', $cm->getPageTypeID())?>" class="btn btn-default btn-xs"><?php echo t('Output')?></a>
				<?php if ($pk->can()) { ?>
					<a href="<?php echo $view->url('/dashboard/pages/types/permissions', $cm->getPageTypeID())?>" class="btn btn-default btn-xs"><?php echo t('Permissions')?></a>
				<?php } ?>
				<a href="#" data-delete="<?php echo $cm->getPageTypeID()?>" class="btn btn-default btn-xs btn-danger"><?php echo t('Delete')?></a>

				<div style="display: none">
					<div data-delete-dialog="<?php echo $cm->getPageTypeID()?>">
						<form data-delete-form="<?php echo $cm->getPageTypeID()?>" action="<?php echo $view->action('delete', $cm->getPageTypeID())?>" method="post">
						<?php echo t("Delete this page type? This cannot be undone.")?>
						<?php echo Loader::helper('validation/token')->output('delete_page_type')?>
						</form>
					</div>
				</div>
			</td>
		</tr>
		<?php } ?>
	</tbody>
	</table>

	<?php } else { ?>
		<p><?php echo t('You have not created any page types yet.')?></p>
		<a href="<?php echo $view->url('/dashboard/pages/types/add')?>" class="btn btn-primary"><?php echo t('Add Page Type')?></a>
	<?php } ?>

	<style type="text/css">
	td.page-type-name {
		width: 100%;
	}

	td.page-type-tasks {
		text-align: right !important;
		white-space: nowrap;
	}
	</style>

	<script type="text/javascript">
	$(function() {
		$('a[data-delete]').on('click', function() {
			var ptID = $(this).attr('data-delete');
			$('div[data-delete-dialog=' + ptID + ']').dialog({
				modal: true,
				width: 320,
				dialogClass: 'ccm-ui',
				title: '<?php echo t("Delete Page Type")?>',
				height: 200, 
				buttons: [
					{
						'text': '<?php echo t("Cancel")?>',
						'class': 'btn pull-left',
						'click': function() {
							$(this).dialog('close');
						}
					},
					{
						'text': '<?php echo t("Delete")?>',
						'class': 'btn pull-right btn-danger',
						'click': function() {
							$('form[data-delete-form=' + ptID + ']').submit();
						}
					}
				]
			});
		});
	});
	</script>

<?php } ?>