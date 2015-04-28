<?php defined('C5_EXECUTE') or die("Access Denied.");
do {

	if (!Config::get('concrete.user.profiles_enabled')) {
		break;
	}

	$u = new User();
	if (!$u->isRegistered()) {
		 break;
	}

	$account = Page::getByPath('/account');
	if (!is_object($account) || $account->isError()) {
		 break;
	}

	$cp = new Permissions($account);
	if(!$cp->canRead()) {
		break;
	}
?>

<div style="display: none">
<div class="btn-group" id="ccm-account-menu">
  <button class="btn" data-toggle="dropdown"><?php echo t('My Account')?></button>
  <button class="btn dropdown-toggle" data-toggle="dropdown">
	<span class="caret"></span>
  </button>
  <ul class="dropdown-menu pull-right">
  <?php
	$children = $account->getCollectionChildrenArray(true);
	foreach($children as $cID) {
		$nc = Page::getByID($cID, 'ACTIVE');
		$ncp = new Permissions($nc);
		if ($ncp->canRead() && (!$nc->getAttribute('exclude_nav'))) {
			$categories[] = $nc;
		}
	}

	foreach($categories as $cc) { ?>
		<li class="nav-header"><?php echo $cc->getCollectionName()?></li>
<?php
		$subchildren = $cc->getCollectionChildrenArray(true);
		foreach($subchildren as $cID) {
			$nc = Page::getByID($cID, 'ACTIVE');
			$ncp = new Permissions($nc);
			if ($ncp->canRead() && (!$nc->getAttribute('exclude_nav'))) { ?>

				<li><a href="<?php echo Loader::helper('navigation')->getLinkToCollection($nc)?>"><?php echo $nc->getCollectionName()?></a></li>

			<?php

			}
		}
	}
	?>

	<li class="divider"></li>
	<li><a href="<?php echo DIR_REL?>/"><i class="icon-home"></i> <?php echo t("Home")?></a></li>
	<li><a href="<?php echo $view->url('/login', 'logout', Loader::helper('validation/token')->generate('logout'))?>"><i class="icon-remove"></i> <?php echo t("Sign Out")?></a></li>
 </ul>
</div>
</div>

<?php
} while(false);
