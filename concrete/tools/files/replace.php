<?php
defined('C5_EXECUTE') or die("Access Denied.");
$u = new User();
$ch = Loader::helper('concrete/file');
$valt = Loader::helper('validation/token');
$form = Loader::helper('form');


$f = File::getByID($_REQUEST['fID']);
$fp = new Permissions($f);
if (!$fp->canEditFileContents()) {
	die(t('Access Denied.'));
}

$searchInstance = Loader::helper('text')->entities($_REQUEST['searchInstance']);
?>

<div class="ccm-ui">


<form method="post" class="form-inline" id="ccm-file-manager-replace-upload" data-dialog-form="replace-file" action="<?php echo REL_DIR_FILES_TOOLS_REQUIRED?>/files/importers/single">
	<h4><?php echo t('Add From Computer')?></h4>
	<input type="file" name="Filedata" class="form-control" style="width: 195px" />
	<?php echo $valt->output('upload');?>
	<?php echo $form->hidden('fID', $f->getFileID()); ?>
	<button type="submit" class="btn btn-default btn-sm"><?php echo t('Upload')?></button>
</form>


<hr />

<h4><?php echo t('Add from Incoming Directory')?></h4>
<div>
<?php
$contents = array();
$con1 = $ch->getIncomingDirectoryContents();
foreach($con1 as $con) {
	$contents[$con['name']] = $con['name'];
}
if (count($contents) > 0) { ?>
<form method="post" id="ccm-file-manager-replace-incoming" class="form-inline" data-dialog-form="replace-file" action="<?php echo REL_DIR_FILES_TOOLS_REQUIRED?>/files/importers/incoming">
	<?php echo $form->select('send_file', $contents, array('style' => 'width:195px'));?>
	&nbsp;&nbsp;
	<button type="submit" class="btn btn-default btn-sm"><?php echo t('Replace')?></button>
	<?php echo $form->hidden('fID', $f->getFileID()); ?>
	<?php echo $valt->output('import_incoming');?>
</form>
<?php } else { ?>
	<?php echo t('No files found in %s', REL_DIR_FILES_INCOMING)?>
<?php } ?>
</div>

<hr />

<h4><?php echo t("Add from Remote URL")?></h4>


<form method="post" id="ccm-file-manager-replace-remote" class="form-inline" data-dialog-form="replace-file" action="<?php echo REL_DIR_FILES_TOOLS_REQUIRED?>/files/importers/remote">
<?php echo $valt->output('import_remote');?>
    <input type="hidden" name="searchInstance" value="<?php echo $searchInstance?>" />
<?php echo $form->hidden('fID', $f->getFileID()); ?>

<?php echo $form->text('url_upload_1', array('style' => 'width:195px'))?>

<button type="submit" class="btn btn-default btn-sm"><?php echo t('Replace')?></button>


</form>
</div>

<script type="text/javascript">
$(function() {
	$('#ccm-file-manager-replace-incoming,#ccm-file-manager-replace-remote,#ccm-file-manager-replace-upload').concreteAjaxForm();
	ConcreteEvent.subscribe('AjaxFormSubmitSuccess', function(e, data) {
		if (data.form == 'replace-file') {
			ConcreteEvent.publish('FileManagerUpdateRequestComplete', {files: data.response.files});
		}
	});
});
</script>