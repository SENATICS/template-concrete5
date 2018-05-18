<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>

<section class="ccm-ui">
	<header><?php echo t('SEO')?></header>
	<form method="post" action="<?php echo $controller->action('submit')?>" class="ccm-panel-detail-content-form" data-dialog-form="seo" data-panel-detail-form="seo" data-action-after-save="reload">

	<?php if ($allowEditName) { ?>
	<div class="form-group">
		<label class="control-label" for="cName"><?php echo t('Name')?></label>
		<div>
			<input type="text" class="form-control" name="cName" id="cName" value="<?php echo $c->getCollectionName()?>">
    	</div>
	</div>
	<?php } ?>

	<?php if ($allowEditPaths && !$c->isGeneratedCollection()) { ?>
	<div class="form-group">
		<label class="control-label launch-tooltip" data-placement="bottom" title="<?php echo t('This page must always be available from at least one URL. This is that URL.')?>" class="launch-tooltip"><?php echo t('URL Slug')?></label>
		<div>
			<input type="text" class="form-control" name="cHandle" value="<?php echo $c->getCollectionHandle()?>" id="cHandle"><input type="hidden" name="oldCHandle" id="oldCHandle" value="<?php echo $c->getCollectionHandle()?>">
		</div>
	</div>
	<?php } ?>

    <hr/>

	<?php foreach ($attributes as $ak) { ?>
		<?php $av = $c->getAttributeValueObject($ak); ?>
		<div class="form-group">
			<label class="control-label"><?php echo $ak->getAttributeKeyDisplayName()?></label>
			<div>
			<?php echo $ak->render('form', $av); ?>
			</div>
		</div>
	<?php } ?>

        <?php if (isset($sitemap) && $sitemap) { ?>
            <input type="hidden" name="sitemap" value="1" />
        <?php } ?>

	</form>
	<div class="ccm-panel-detail-form-actions dialog-buttons">
		<button class="pull-left btn btn-default" type="button" data-dialog-action="cancel" data-panel-detail-action="cancel"><?php echo t('Cancel')?></button>
		<button class="pull-right btn btn-success" type="button" data-dialog-action="submit" data-panel-detail-action="submit"><?php echo t('Save Changes')?></button>
	</div>
</section>

<script type="text/javascript">
    $(function() {
        ConcreteEvent.unsubscribe('AjaxFormSubmitSuccess.saveSeo');
        ConcreteEvent.subscribe('AjaxFormSubmitSuccess.saveSeo', function(e, data) {
            if (data.form == 'seo') {
				ConcreteToolbar.disableDirectExit();
                ConcreteEvent.publish('SitemapUpdatePageRequestComplete', {'cID': data.response.cID});
            }
        });
		$('#ccm-panel-detail-page-seo .form-control').textcounter({
			type: "character",
			max: -1,
			countSpaces: true,
			stopInputAtMaximum: false,
			counterText: '<?php echo t('Characters'); ?>: ',
			countContainerClass: 'help-block'
		});
    });
</script>
