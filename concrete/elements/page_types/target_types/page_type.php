<?php
defined('C5_EXECUTE') or die("Access Denied.");
$form = Loader::helper('form');
$ctArray = PageType::getList();
$pageSelector = Core::make('helper/form/page_selector');
$types = array('' => t('** Choose a page type'));
foreach($ctArray as $cta) {
    $types[$cta->getPageTypeID()] = $cta->getPageTypeDisplayName();
}
$ptID = 0;
$factors = array('' => t('Select Menu'), 'sitemap_in_page' => t('In-Page Sitemap'));

if (is_object($pagetype) && $pagetype->getPageTypePublishTargetTypeID() == $type->getPageTypePublishTargetTypeID()) {
	$configuredTarget = $pagetype->getPageTypePublishTargetObject();
	$ptID = $configuredTarget->getPageTypeID();
	$startingPointPageID = $configuredTarget->getStartingPointPageID();
	$selectorFormFactor = $configuredTarget->getSelectorFormFactor();
}
?>
<div class="control-group">
	<?php echo $form->label('ptID', t('Publish Beneath Pages of Type'))?>
	<div class="controls">
		<?php echo $form->select('ptID', $types, $ptID)?>
	</div>
</div>

<div class="control-group">
	<?php echo $form->label('selectorFormFactorPageType', t('Selector Form Factor'))?>
	<div class="controls">
		<?php echo $form->select('selectorFormFactorPageType', $factors, $selectorFormFactor)?>
	</div>
</div>

<div class="control-group" data-page-type-form-factor-display="sitemap_in_page">
	<?php echo $form->label('startingPointPageIDPageType', t('Display Pages Beneath Page'))?>
	<div class="controls">
		<?php echo $pageSelector->selectPage('startingPointPageIDPageType', $startingPointPageID)?>
	</div>
</div>

<script type="text/javascript">
	$(function() {
		$('select[name=selectorFormFactorPageType]').on('change', function() {
			$('div[data-page-type-form-factor-display]').hide();
			if ($(this).val()) {
				$('div[data-page-type-form-factor-display=' + $(this).val() + ']').show();
			}
		}).trigger('change');
	});
</script>