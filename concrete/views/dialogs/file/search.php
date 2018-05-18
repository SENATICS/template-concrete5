<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>

<div data-search="files" class="ccm-ui">
<?php Loader::element('files/search', array('controller' => $searchController))?>
</div>

<script type="text/javascript">
$(function() {
	$('div[data-search=files]').concreteFileManager({
		result: <?php echo $result?>,
		mode: 'choose',
		upload_token: '<?php echo Core::make('token')->generate()?>'
	});
});
</script>