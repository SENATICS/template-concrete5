<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
<div class="row">
<div class="span10 offset1">
<div class="page-header">
	<h1><?php echo t('Site Registration')?></h1>
</div>
</div>
</div>

<?php
$attribs = UserAttributeKey::getRegistrationList();

if($success) { ?>
<div class="row">
<div class="span10 offset1">
<?php	switch($success) {
		case "registered":
			?>
			<p><strong><?php echo $successMsg ?></strong><br/><br/>
			<a href="<?php echo $view->url('/')?>"><?php echo t('Return to Home')?></a></p>
			<?php
		break;
		case "validate":
			?>
			<p><?php echo $successMsg[0] ?></p>
			<p><?php echo $successMsg[1] ?></p>
			<p><a href="<?php echo $view->url('/')?>"><?php echo t('Return to Home')?></a></p>
			<?php
		break;
		case "pending":
			?>
			<p><?php echo $successMsg ?></p>
			<p><a href="<?php echo $view->url('/')?>"><?php echo t('Return to Home')?></a></p>
            <?php
		break;
	} ?>
</div>
</div>
<?php
} else { ?>
	<form method="post" action="<?php echo $view->url('/register', 'do_register')?>" class="form-horizontal">
		<div class="row">
			<div class="span10 offset1">
				<fieldset>
					<legend><?php echo t('Your Details')?></legend>
					<?php
					if ($displayUserName) {
						?>
						<div class="control-group">
							<?php echo $form->label('uName',t('Username'))?>
							<div class="controls">
								<?php echo $form->text('uName')?>
							</div>
						</div>
						<?php
					}
					?>
					<div class="control-group">
						<?php echo $form->label('uEmail',t('Email Address'))?>
						<div class="controls">
							<?php echo $form->text('uEmail')?>
						</div>
					</div>
					<div class="control-group">
						<?php echo $form->label('uPassword',t('Password'))?>
						<div class="controls">
							<?php echo $form->password('uPassword')?>
						</div>
					</div>
					<div class="control-group">
						<?php echo $form->label('uPasswordConfirm',t('Confirm Password'))?>
						<div class="controls">
							<?php echo $form->password('uPasswordConfirm')?>
						</div>
					</div>

				</fieldset>
			</div>
		</div>
		<?php
		if (count($attribs) > 0) {
			?>
			<div class="row">
				<div class="span10 offset1">
					<fieldset>
						<legend><?php echo t('Options')?></legend>
						<?php
						$af = Loader::helper('form/attribute');
						foreach($attribs as $ak) {
							echo $af->display($ak, $ak->isAttributeKeyRequiredOnRegister());
						}
						?>
					</fieldset>
				</div>
			</div>
			<?php
		}
		if (Config::get('concrete.user.registration.captcha')) {
			?>
			<div class="row">
				<div class="span10 offset1 ">

					<div class="control-group">
						<?php
						$captcha = Loader::helper('validation/captcha');
						echo $captcha->label();
						?>
						<div class="controls">
							<?php
							$captcha->showInput();
							$captcha->display();
							?>
						</div>
					</div>

				</div>
			</div>

		<?php } ?>
		<div class="row">
			<div class="span10 offset1">
				<div class="actions">
					<?php echo $form->hidden('rcID', $rcID); ?>
					<?php echo $form->submit('register', t('Register') . ' &gt;', array('class' => 'primary'))?>
				</div>
			</div>
		</div>
	</form>

	<?php
}
?>
