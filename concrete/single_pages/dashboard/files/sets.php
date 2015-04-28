<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php $ih = Loader::helper('concrete/ui'); ?>
<?php if ($this->controller->getTask() == 'view_detail') { ?>

	<?php
	$u=new User();
	$delConfirmJS = t('Are you sure you want to permanently remove this file set?');
	?>
	<script type="text/javascript">
		deleteFileSet = function() {
			if (confirm('<?php echo $delConfirmJS?>')) { 
				location.href = "<?php echo $view->url('/dashboard/files/sets', 'delete', $fs->getFileSetID(), Loader::helper('validation/token')->generate('delete_file_set'))?>";				
			}
		}
	</script>

	<?php
	$fsp = new Permissions($fs);
	if ($fsp->canDeleteFileSet()) { ?>
	<div class="ccm-dashboard-header-buttons">
		<button class="btn btn-danger" onclick="deleteFileSet()"><?php echo t('Delete Set')?></button>
	</div>
	<?php } ?>

	<form method="post" class="form-horizontal" id="file_sets_edit" action="<?php echo $view->url('/dashboard/files/sets', 'file_sets_edit')?>">
		<?php echo $validation_token->output('file_sets_edit');?>

		<?php print Loader::helper('concrete/ui')->tabs(array(
			array('details', t('Details'), true),
			array('files', t('Files in Set'))
		));?>

		<div id="ccm-tab-content-details" class="ccm-tab-content">

			<div class="form-group">
                <?php echo $form->label('file_set_name', t('Name'))?>
                <?php echo $form->text('file_set_name',$fs->fsName, array('class' => 'span5'));?>
			</div>

			<?php
			if (Config::get('concrete.permissions.model') != 'simple') {
				if ($fsp->canEditFileSetPermissions()) { ?>
			
                    <div class="form-group">
                        <div class="checkbox">
                            <label class="checkbox"><?php echo $form->checkbox('fsOverrideGlobalPermissions', 1, $fs->overrideGlobalPermissions())?> <?php echo t('Enable custom permissions for this file set.')?></label>
                        </div>
                    </div>

                    <div id="ccm-permission-list-form" <?php if (!$fs->overrideGlobalPermissions()) { ?> style="display: none" <?php } ?>>

                    <?php Loader::element('permission/lists/file_set', array("fs" => $fs)); ?>

                    </div>
				<?php } 
			
			}

			?>
			

			<?php echo $form->hidden('fsID',$fs->getFileSetID()); ?>
			
		</div>

		<div class="ccm-tab-content" id="ccm-tab-content-files">
		<?php
		
		$fl = new FileList();
		$fl->filterBySet($fs);
		$fl->sortByFileSetDisplayOrder();
		$files = $fl->get();
		if (count($files) > 0) { ?>

            <span class="help-block"><?php echo t('Click and drag to reorder the files in this set. New files added to this set will automatically be appended to the end.')?></span>
            <div class="ccm-spacer">&nbsp;</div>

            <ul class="ccm-file-set-file-list  item-select-list">

            <?php
            foreach($files as $f) { ?>

                <li id="fID_<?php echo $f->getFileID()?>" class="">
                    <div>
                        <?php echo $f->getListingThumbnailImage()?>
                        <input type="hidden" name="fsDisplayOrder[]" value="<?php echo $f->getFileID()?>" />
                        <span style="word-wrap: break-word"><?php echo $f->getTitle()?></span>
                    </div>
                </li>

            <?php } ?>

            </ul>
		<?php } else { ?>
			<div class="alert alert-info"><?php echo t('There are no files in this set.')?></div>
		<?php } ?>
		</div>
		<div class="ccm-dashboard-form-actions-wrapper">
		<div class="ccm-dashboard-form-actions">
			<a href="<?php echo View::url('/dashboard/files/sets')?>" class="btn btn-default pull-left"><?php echo t('Cancel')?></a>
			<?php echo Loader::helper("form")->submit('save', t('Save'), array('class' => 'btn btn-primary pull-right'))?>
		</div>
		</div>
	</form>
	
	
	<script type="text/javascript">

	$(function() {
		$(".ccm-file-set-file-list").sortable({
			cursor: 'move',
			opacity: 0.5
		});
		
	});
	
	</script>
	
	<style type="text/css">
	    .ccm-file-set-file-list:hover {cursor: move}
	</style>

<?php } else { ?>

<div class="ccm-dashboard-content-full">
    <div data-search-element="wrapper">
        <form role="form" id="ccm-file-set-search" method="get" action="<?php echo $view->url('/dashboard/files/sets')?>" class="form-inline ccm-search-fields">
            <div class="ccm-search-fields-row">
                <div class="form-group">
                    <?php echo $form->label('keywords', t('Search'))?>
                    <div class="ccm-search-field-content">
                        <div class="ccm-search-main-lookup-field">
                            <i class="fa fa-search"></i>
				            <?php echo $form->search('fsKeywords', Loader::helper('text')->entities($_REQUEST['fsKeywords']), array('placeholder' => t('File Set Name')))?>
                            <button type="submit" class="ccm-search-field-hidden-submit" tabindex="-1"><?php echo t('Search')?></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ccm-search-fields-row">
                <div class="form-group">
                    <?php echo $form->label('fsType', t('Type'))?>
                    <div class="ccm-search-field-content">
                        <select id="fsType" class="form-control" name="fsType" style="width: 200px; float: right">
                        <option value="<?php echo FileSet::TYPE_PUBLIC?>" <?php if ($fsType != FileSet::TYPE_PRIVATE) { ?> selected <?php } ?>><?php echo t('Public Sets')?></option>
                        <option value="<?php echo FileSet::TYPE_PRIVATE?>" <?php if ($fsType == FileSet::TYPE_PRIVATE) { ?> selected <?php } ?>><?php echo t('My Sets')?></option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="ccm-search-fields-submit">
                <button type="submit" class="btn btn-primary pull-right"><?php echo t('Search')?></button>
            </div>

        </form>

    </div>

  	<div class="ccm-dashboard-header-buttons">
		<a href="<?php echo View::url('/dashboard/files/add_set')?>" class="btn btn-default"><?php echo t('Add File Set')?></a>
	</div>
	<style type="text/css">
		form#ccm-file-set-search {
			margin-left: 0px !important;
		}
	</style>

    <section style="margin-right: 20px">
	<?php if (count($fileSets) > 0) { ?>
		

		<?php foreach ($fileSets as $fs) { ?>
		
			<div class="ccm-group">
				<a class="ccm-group-inner" href="<?php echo $view->url('/dashboard/files/sets/', 'view_detail', $fs->getFileSetID())?>"><i class="fa fa-cubes"></i> <?php echo $fs->getFileSetName()?></a>
			</div>
		
		<?php }
		
		
	} else { ?>
	
		<p><?php echo t('No file sets found.')?></p>
	
	<?php } ?>


	<?php if ($fsl->requiresPaging()) { ?>
		<?php $fsl->displayPagingV2(); ?>
	<?php } ?>

        </section>

	</div>
<?php } ?>	