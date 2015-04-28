<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
	<div id="footer">
			<span class="powered-by"><a href="http://www.concrete5.org" title="<?php echo t('concrete5 - open source content management system for PHP and MySQL')?>"><?php echo t('concrete5 - open source CMS')?></a></span>
			&copy; <?php echo date('Y')?> <a href="<?php echo DIR_REL?>/"><?php echo h(SITE)?></a>.
			&nbsp;&nbsp;
			<?php echo t('All rights reserved.')?>
			<?php
			$u = new User();
			if ($u->isRegistered()) { ?>
				<?php
				if (Config::get("concrete.user.profiles_enabled")) {
					$userName = '<a href="' . $view->url('/account/profile/public_profile') . '">' . $u->getUserName() . '</a>';
				} else {
					$userName = $u->getUserName();
				}
				?>
				<span class="sign-in"><?php echo t('Currently logged in as <b>%s</b>.', $userName)?> <a href="<?php echo $view->url('/login', 'logout', Loader::helper('validation/token')->generate('logout'))?>"><?php echo t('Sign Out')?></a></span>
			<?php } else { ?>
				<span class="sign-in"><a href="<?php echo $view->url('/login')?>"><?php echo t('Sign In to Edit this Site')?></a></span>
			<?php } ?>

	</div>

</div>

<?php Loader::element('footer_required'); ?>

</body>
</html>
