<?php defined('C5_EXECUTE') or die('Access denied.'); ?>

<div class="forgotPassword">
	<h4><?php echo t('Forgot Your Password?') ?></h4>
	<div class="ccm-message"><?php echo isset($intro_msg) ? $intro_msg : '' ?></div>
	<div class="help-block">
		<?php echo t('If there is an account associated with this email, instructions for resetting your password have been sent.') ?>
	</div>
	<a href="<?php echo URL::to('/login') ?>" class="btn btn-block btn-primary">
		<?php echo t('Go Back') ?>
	</a>
</div>
