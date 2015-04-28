<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>

<a name="_edit<?php echo $b->getBlockID()?>"></a>

<?php $bt = $b->getBlockTypeObject(); ?>

<script type="text/javascript">

<?php $ci = Loader::helper("concrete/urls"); ?>
<?php $url = $ci->getBlockTypeJavaScriptURL($bt);
if ($url != '') { ?>
	ccm_addHeaderItem("<?php echo $url?>", 'JAVASCRIPT');
<?php }

$identifier = strtoupper('BLOCK_CONTROLLER_' . $btHandle);
if (is_array($headerItems[$identifier])) {
	foreach($headerItems[$identifier] as $item) {
		if ($item instanceof CSSOutputObject) {
			$type = 'CSS';
		} else {
			$type = 'JAVASCRIPT';
		}
		?>
		ccm_addHeaderItem("<?php echo $item->file?>", '<?php echo $type?>');
	<?php
	}
}
?>
$(function() {
	$('#ccm-block-form').concreteAjaxBlockForm({
		'task': 'edit',
		'bID': <?php if (is_object($b->getProxyBlock())) { ?><?php echo $b->getProxyBlock()->getBlockID()?><?php } else { ?><?php echo $b->getBlockID()?><?php } ?>,
		<?php if ($bt->supportsInlineEdit()) { ?>
			btSupportsInlineEdit: true,
		<?php } else { ?>
			btSupportsInlineEdit: false
		<?php } ?>
	});
});
</script>

<?php
$hih = Loader::helper("concrete/ui/help");
$blockTypes = $hih->getBlockTypes();
$cont = $bt->getController();
if ($b->getBlockTypeHandle() == BLOCK_HANDLE_SCRAPBOOK_PROXY) {
	$bx = Block::getByID($b->getController()->getOriginalBlockID());
	$cont = $bx->getController();
}

if (isset($blockTypes[$bt->getBlockTypeHandle()])) {
	$help = $blockTypes[$bt->getBlockTypeHandle()];
} else {
	if ($cont->getBlockTypeHelp()) {
		$help = $cont->getBlockTypeHelp();
	}
}
if (isset($help) && !$bt->supportsInlineEdit()) { ?>
	<div class="dialog-help" id="ccm-menu-help-content"><?php 
		if (is_array($help)) { 
			print $help[0] . '<br><br><a href="' . $help[1] . '" target="_blank">' . t('Learn More') . '</a>';
		} else {
			print $help;
		}
	?></div>
<?php } ?>

<div <?php if (!$bt->supportsInlineEdit()) { ?>class="ccm-ui"<?php } else { ?>data-container="inline-toolbar"<?php } ?>>

<form method="post" id="ccm-block-form" class="validate" action="<?php echo $dialogController->action('submit')?>" enctype="multipart/form-data">

<?php foreach($this->controller->getJavaScriptStrings() as $key => $val) { ?>
	<input type="hidden" name="ccm-string-<?php echo $key?>" value="<?php echo h($val)?>" />
<?php } ?>

<?php if (!$bt->supportsInlineEdit()) { ?>
<div id="ccm-block-fields">
<?php } else { ?>
    <div>
<?php } ?>
