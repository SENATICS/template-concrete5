<?php
defined('C5_EXECUTE') or die("Access Denied.");
$u = new User();
?>
<?php if ($u->isRegistered()) {
	$ui = $u->getUserInfoObject();?>
	<div class="ccm-conversation-avatar"><?php echo $ui->getUserAvatar()->output()?></div>
<?php } else {
	// non-logged-in posting. ?>
	<div class="form-group">
		<label class="control-label" for="cnvMessageAuthorName"><?php echo t('Full Name')?></label>
		<input type="text" class="form-control" name="cnvMessageAuthorName" />
	</div>
	<div class="form-group">
		<label class="control-label" for="cnvMessageAuthorEmail"><?php echo t('Email Address')?></label>
		<input type="text" class="form-control" name="cnvMessageAuthorEmail" />
	</div>
    <div class="form-group">
        <label class="control-label" for="cnvMessageAuthorWebsite"><?php echo t('Website')?></label>
        <input type="text" class="form-control" name="cnvMessageAuthorWebsite" />
    </div>
	<?php
	$captcha = Core::make('captcha');
	?>
	<div class="form-group">
		<?php $captcha->label()?>
		<?php $captcha->showInput();?>
		<?php $captcha->display();?>
	</div>
<?php } ?>
