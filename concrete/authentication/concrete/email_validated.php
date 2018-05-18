<?php defined('C5_EXECUTE') or die('Access denied.'); ?>

<div class="forgotPassword">
	<h4><?php echo t('Email Validated') ?></h4>
	<div class="help-block">
		<?php echo t('This email address has been validated! You may now access the features of this site.') ?>
	</div>
	<a href="<?php echo URL::to('/') ?>" class="btn btn-block btn-primary">
		<?php echo t('Continue') ?>
	</a>
</div>
