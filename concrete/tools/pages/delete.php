<?php defined('C5_EXECUTE') or die("Access Denied.");

$u = new User();

$form = Loader::helper('form');
$dh = Core::make('helper/date'); /* @var $dh \Concrete\Core\Localization\Service\Date */

$sh = Loader::helper('concrete/dashboard/sitemap');
if (!$sh->canRead()) {
	die(t('Access Denied'));
}
$u = new User();

if ($_POST['task'] == 'delete_pages') {

	$q = Queue::get('delete_page_request');

	if ($_POST['process']) {
		$obj = new stdClass;
		$js = Loader::helper('json');
		$messages = $q->receive(Config::get('concrete.limits.delete_pages'));
		foreach($messages as $key => $p) {
			// delete the page here
			$page = unserialize($p->body);
			$c = Page::getByID($page['cID']);
			if ($c->getCollectionID() > 1) {
				$pkr = new \Concrete\Core\Workflow\Request\DeletePageRequest();
				$pkr->setRequestedPage($c);
				$pkr->setRequesterUserID($u->getUserID());
				$u->unloadCollectionEdit($c);
				$pkr->trigger();
			}
			$q->deleteMessage($p);
		}
		$obj->totalItems = $q->count();
		if ($q->count() == 0) {
			$q->deleteQueue('delete_page_request');
		}
		print $js->encode($obj);
		exit;
	} else if ($q->count() == 0) {
		if (is_array($_POST['cID'])) {
			foreach($_POST['cID'] as $cID) {
				$c = Page::getByID($cID);
				$cp = new Permissions($c);
				$children = $c->getNumChildren();
				if (($u->isSuperUser() || $children == 0) && $cp->canDeletePage()) {
					$c->queueForDeletionRequest();
				}
			}
		}
	}

	$totalItems = $q->count();
	Loader::element('progress_bar', array('totalItems' => $totalItems, 'totalItemsSummary' => t2("%d page", "%d pages", $totalItems)));
	exit;
}

$form = Loader::helper('form');

$pages = array();
if (is_array($_REQUEST['item'])) {
	foreach($_REQUEST['item'] as $cID) {
		$pages[] = Page::getByID($cID);
	}
} else {
	$pages[] = Page::getByID($_REQUEST['cID']);
}

$pcnt = 0;
foreach($pages as $c) {
	$cp = new Permissions($c);
	if ($cp->canDeletePage()) {
		$pcnt++;
	}
}

?>
<div class="ccm-ui">

<?php if ($pcnt == 0) { ?>
	<?php echo t("You do not have permission to delete any of the selected pages."); ?>
<?php } else { ?>

	<?php echo t('Are you sure you want to delete the following pages?')?><br/><br/>

	<form data-action="delete-bulk-pages" method="post" action="<?php echo REL_DIR_FILES_TOOLS_REQUIRED?>/pages/delete">
	<?php echo $form->hidden('task', 'delete_pages')?>
	<table border="0" cellspacing="0" cellpadding="0" width="100%" class="table table-striped">
	<tr>
		<th><?php echo t('Name')?></th>
		<th><?php echo t('Page Type')?></th>
		<th><?php echo t('Date Added')?></th>
		<th><?php echo t('Author')?></th>
	</tr>

	<?php foreach($pages as $c) {
		$cp = new Permissions($c);
		$c->loadVersionObject();
		if ($cp->canDeletePage() && $c->getCollectionID() > 1) { ?>

		<?php echo $form->hidden('cID[]', $c->getCollectionID())?>

		<tr>
			<td class="ccm-page-list-name"><?php echo $c->getCollectionName()?></td>
			<td><?php echo $c->getPageTypeName()?></td>
			<td><?php echo $dh->formatDateTime($c->getCollectionDatePublic())?></td>
			<td><?php
				$ui = UserInfo::getByID($c->getCollectionUserID());
				if (is_object($ui)) {
					print $ui->getUserName();
				}
			}?></td>

		</tr>

		<?php }  ?>
	</table>
	</form>


    <script type="text/javascript">
        ccm_sitemapDeletePages = function() {
            var params = $('form[data-action=delete-bulk-pages]').formToArray(true);
            ccm_triggerProgressiveOperation(
                CCM_TOOLS_PATH + '/pages/delete',
                params,
                ccmi18n_sitemap.deletePages,
                function() {
                    jQuery.fn.dialog.closeAll();
                    ConcreteEvent.publish('SitemapDeleteRequestComplete');
                    ConcreteAlert.notify({message: <?php echo json_encode(t('Pages deleted successfully.'))?>});
                }
            );
        }
    </script>

	<div class="dialog-buttons">
	<?php $ih = Loader::helper('concrete/ui')?>
	<?php echo $ih->button_js(t('Cancel'), 'jQuery.fn.dialog.closeTop()', 'left', 'btn')?>
	<?php echo $ih->button_js(t('Delete'), 'ccm_sitemapDeletePages()', 'right', 'btn btn-danger')?>
	</div>

	<?php

}
?>
</div>
