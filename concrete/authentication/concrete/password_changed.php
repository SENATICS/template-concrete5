<?php defined('C5_EXECUTE') or die('Access denied.'); ?>

<div class="alert alert-success">
	<?php echo t('Successfully changed password'); ?>
</div>
<div>
	<a href="<?php echo URL::to('login', 'callback', 'concrete') ?>" class="btn btn-block btn-success">
		<?php echo t('Click here to log in'); ?>
	</a>
</div>
