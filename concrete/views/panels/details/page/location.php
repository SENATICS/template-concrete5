<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>
<section class="ccm-ui">
	<header><?php echo t('Location')?></header>
	<form method="post" action="<?php echo $controller->action('submit')?>" data-dialog-form="location" data-panel-detail-form="location">

		<?php echo Loader::helper('concrete/ui/help')->notify('panel', '/page/location')?>

	<div style="min-height: 140px">
		<?php if ($c->isPageDraft()) { ?>
			<p class="lead"><?php echo t('Where will this page live on the site?')?></p>
		<?php } else { ?>
			<p class="lead"><?php echo t('Where does this page live on the site?')?></p>
		<?php } ?>

		<div id="ccm-panel-detail-location-display"></div>

		<input type="hidden" name="cParentID" value="<?php echo $cParentID?>" />
		<button class="btn btn-info"type="button" name="location"><?php echo t('Choose Location')?></button>

	</div>

		<hr/>
		<p class="lead"><?php echo t('Current Canonical URL')?></p>
		<div class="breadcrumb">
			<?php if ($c->isPageDraft()) { ?>
				<?php echo t('None. Pages do not have canonical URLs until they are published.')?>
			<?php } else { ?>
				<?php echo Loader::helper('navigation')->getLinkToCollection($c, true)?>
			<?php } ?>
		</div>

	<?php if (!$c->isGeneratedCollection()) { ?>

		<hr/>
		<p class="lead"><?php echo t('Other URLs that should redirect to this page')?></p>

		<div id="ccm-panel-detail-location-page-paths">

		</div>

		<button class="btn btn-info" type="button" name="addRedirect"><?php echo t('Add URL Redirect')?></button>

		<br/><br/>
 		<span class="help-block"><?php echo t('Note: Additional page paths are not versioned. They will be available immediately.')?></span>


	<?php } ?>

	</form>
	<div class="ccm-panel-detail-form-actions dialog-buttons">
		<button class="pull-left btn btn-default" type="button" data-dialog-action="cancel" data-panel-detail-action="cancel"><?php echo t('Cancel')?></button>
		<button class="pull-right btn btn-success" type="button" data-dialog-action="submit" data-panel-detail-action="submit"><?php echo t('Save Changes')?></button>
	</div>

</section>

<?php $requestID = mt_rand(100000000,999999999); ?>

<script type="text/template" class="breadcrumb">
	<% if (parentID && parentID > 0) { %>
	<ol class="breadcrumb">
	  <li><a href="<%=parentLink%>" target="_blank"><%=parentName%></a></li>
	  <li class="active"><?php echo $c->getCollectionName()?></li>
	</ol>
	<% } else { %>
		<div class="breadcrumb">
		<?php echo t('A location has not yet been chosen.')?>
		</div>
	<% } %>
</script>

<script type="text/template" class="pagePath">
<div class="ccm-panel-detail-location-page-path">
	<input class="control-input" type="text" name="additionalPath[]" value="<%=path%>" />
	<a href="#"><i class="fa fa-minus-circle" /></a>
</div>
</script>

<script type="text/javascript">

var renderBreadcrumb = _.template(
    $('script.breadcrumb').html()
);
var renderPagePath = _.template(
    $('script.pagePath').html()
);

$(function() {

	$('button[name=location]').on('click', function() {
		jQuery.fn.dialog.open({
			width: '90%',
			height: '70%',
			modal: true,
			title: '<?php echo t("Choose New Page Parent")?>',
			href: '<?php echo REL_DIR_FILES_TOOLS_REQUIRED?>/sitemap_search_selector?requestID=<?php echo $requestID?>&amp;cID=<?php echo $c->getCollectionID()?>'
		});
	});
	$('#ccm-panel-detail-location-display').html(renderBreadcrumb({
		parentLink: '<?php echo Loader::helper('navigation')->getLinkToCollection($parent);?>',
		parentName: '<?php echo $parent->getCollectionName()?>',
		parentID: '<?php echo $cParentID?>'
	}));
	$('#ccm-panel-detail-location-page-paths').on('click', '.ccm-panel-detail-location-page-path a', function() {
		$(this).parent().remove();
		return false;
	});
	$('button[name=addRedirect]').on('click', function() {
		$('#ccm-panel-detail-location-page-paths').append(
			renderPagePath({
				path: ''
			})
		);
	});

    <?php foreach($additionalPaths as $path) { ?>
    $('#ccm-panel-detail-location-page-paths').append(
        renderPagePath({path: '<?php echo $path->getPagePath()?>'})
    );
    <?php } ?>

    ConcreteEvent.subscribe('SitemapSelectPage', function(e, data) {
		$('#ccm-panel-detail-location-display').html(renderBreadcrumb({
			parentLink: '<?php echo DIR_REL?>/<?php echo DISPATCHER_FILENAME?>?cID=' + data.cID,
			parentName: data.title,
			parentID: data.cID
		}));

		var container = $('form[data-panel-detail-form=location]');
		container.find('input[name=cParentID]').val(data.cID);
		$.fn.dialog.closeTop();
	});
});
</script>
