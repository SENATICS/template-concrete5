<?php defined('C5_EXECUTE') or die('Access Denied.');

use \Concrete\Core\Attribute\Key\Category as AttributeCategory;

$valt = Loader::helper('validation/token');
$ci = Loader::helper('concrete/urls');
$ch = Loader::helper('concrete/ui');
$tp = new TaskPermission();
if ($tp->canInstallPackages()) {
    $mi = Marketplace::getInstance();
}
$pkgArray = Package::getInstalledList();

$ci  = \Core::make('helper/concrete/urls');
$txt = \Core::make('helper/text');
$nav = \Core::make('helper/navigation');

$catList = AttributeCategory::getList();

if (isset($pkg)) {
    if (is_object($pkg)) {
        $pkgID = $pkg->getPackageID();
    }
} else {
    $pkg = null;
}

if ($this->controller->getTask() == 'install_package' && $showInstallOptionsScreen && $tp->canInstallPackages()) { ?>
    <form method="post" action="<?php echo $this->action('install_package', $pkg->getPackageHandle())?>">
    <?php echo Loader::helper('validation/token')->output('install_options_selected')?>
    <?php echo Loader::packageElement('dashboard/install', $pkg->getPackageHandle())?>
    <?php if ($pkg->allowsFullContentSwap()) { ?>
        <h4><?php echo t('Clear this Site?')?></h4>
        <p><?php echo t('%s can fully clear your website of all existing content and install its own custom content in its place. If you\'re installing a theme for the first time you may want to do this. Clear all site content?', $pkg->getPackageName())?></p>
        <?php $u = new User(); ?>
        <?php if ($u->isSuperUser()) {
            $disabled = ''; ?>
        <div class="alert-message warning"><p><?php echo t('This will clear your home page, uploaded files and any content pages out of your site completely. It will completely reset your site and any content you have added will be lost.')?></p></div>
        <?php } else {
            $disabled = 'disabled';?>
        <div class="alert-message info"><p><?php echo t('Only the %s user may reset the site\'s content.', USER_SUPER)?></p></div>
        <?php } ?>
        <div class="form-group">
            <label class="control-label"><?php echo t("Swap Site Contents")?></label>
            <div class="radio"><label><input type="radio" name="pkgDoFullContentSwap" value="0" checked="checked" <?php echo $disabled?> /> <?php echo t('No. Do <strong>not</strong> remove any content or files from this website.')?></label></div>
            <div class="radio"><label><input type="radio" name="pkgDoFullContentSwap" value="1" <?php echo $disabled?> /> <?php echo t('Yes. Reset site content with the content found in this package')?></label></div>
        </div>
    <?php } ?>

    <div class="ccm-dashboard-form-actions-wrapper">
        <div class="ccm-dashboard-form-actions">
    <a href="<?php echo $this->url('/dashboard/extend/install')?>" class="btn btn-default pull-left"><?php echo t('Cancel')?></a>
    <input type="submit" value="<?php echo t('Install %s', $pkg->getPackageName())?>" class="btn btn-primary pull-right" />
        </div>
    </div>

    </form>
<?php
} elseif ($this->controller->getTask() == 'uninstall' && $tp->canUninstallPackages()) {
    ?>
    <form method="post" class="form-stacked" id="ccm-uninstall-form" action="<?php echo $view->action('do_uninstall_package'); ?>">
        <?php echo $valt->output('uninstall'); ?>
        <input type="hidden" name="pkgID" value="<?php echo $pkgID ?>" />
        <fieldset>
            <h2><?php echo t('Uninstall Package'); ?></h2>

            <table class="table table-bordered table-striped">
                <tr>
                    <td class="ccm-marketplace-list-thumbnail"><img src="<?php echo $ci->getPackageIconURL($pkg); ?>" /></td>
                    <td class="ccm-addon-list-description" style="width: 100%"><h3><?php echo $pkg->getPackageName(); ?> - <?php echo $pkg->getPackageVersion(); ?></h3><?php echo $pkg->getPackageDescription(); ?></td>
                </tr>
            </table>

            <?php
            if ($pkg->hasUninstallNotes()) {
                View::element('dashboard/uninstall', null, $pkg->getPackageHandle());
            }
            ?>

            <div class="alert alert-danger">
                <?php echo t('This will remove all elements associated with the %s package. While you can reinstall the package, this may result in data loss.', $pkg->getPackageName())?>
            </div>

            <div class="form-group">
                <label class="control-label"><?php echo t('Move package to trash directory on server?'); ?></label>
                <div class="checkbox">
                    <label><?php echo Loader::helper('form')->checkbox('pkgMoveToTrash', 1); ?>
                    <span><?php echo t('Yes, remove the package\'s directory from the installation directory.'); ?></span></label>
                </div>
            </div>

        </fieldset>

        <div class="ccm-dashboard-form-actions-wrapper">
            <div class="ccm-dashboard-form-actions">
            <?php echo $ch->submit(t('Uninstall'), 'ccm-uninstall-form', 'right', 'btn-danger'); ?>
            <?php echo $ch->button(t('Cancel'), $view->url('/dashboard/extend/install', 'inspect_package', $pkg->getPackageID()), ''); ?>
            </div>
        </div>
    </form>
    <?php

} else {

    // grab the total numbers of updates.
    // this consists of
    // 1. All packages that have greater pkgAvailableVersions than pkgVersion
    // 2. All packages that have greater pkgVersion than getPackageCurrentlyInstalledVersion
    $local = array();
    $remote = array();
    $pkgAvailableArray = array();
    if ($tp->canInstallPackages()) {
        $local = Package::getLocalUpgradeablePackages();
        $remote = Package::getRemotelyUpgradeablePackages();
    }

    // now we strip out any dupes for the total
    $updates = 0;
    $localHandles = array();
    foreach ($local as $_pkg) {
        $updates++;
        $localHandles[] = $_pkg->getPackageHandle();
    }
    foreach ($remote as $_pkg) {
        if (!in_array($_pkg->getPackageHandle(), $localHandles)) {
            $updates++;
        }
    }
    if ($tp->canInstallPackages()) {
        foreach (Package::getAvailablePackages() as $_pkg) {
            if (empty($pkgAvailableArray)) {
                Localization::clearCache();                
            }
            $_pkg->setupPackageLocalization();
            $pkgAvailableArray[] = $_pkg;
        }
    }

    $thisURL = $view->url('/dashboard/extend/install');
    $availableArray = $pkgAvailableArray;
    usort($availableArray, function($a, $b) {
        return strcasecmp($a->getPackageName(), $b->getPackageName());
    });

    /* Load featured add-ons from the marketplace.
     */

    $db = Loader::db();

    if (is_object($mi) && $mi->isConnected() && Config::get('concrete.marketplace.enabled') && $tp->canInstallPackages()) {
        $purchasedBlocksSource = Marketplace::getAvailableMarketplaceItems();
    } else {
        $purchasedBlocksSource = array();
    }

    $skipHandles = array();
    foreach ($availableArray as $ava) {
        foreach ($purchasedBlocksSource as $pi) {
            if ($pi->getHandle() == $ava->getPackageHandle()) {
                $skipHandles[] = $ava->getPackageHandle();
            }
        }
    }

    $purchasedBlocks = array();
    foreach ($purchasedBlocksSource as $pb) {
        if (!in_array($pb->getHandle(), $skipHandles)) {
            $purchasedBlocks[] = $pb;
        }
    }

    if (is_object($pkg)) {
        $items = $pkg->getPackageItems();

        ?>

        <table class="table table-bordered table-striped">
            <tr>
                <td class="ccm-marketplace-list-thumbnail"><img src="<?php echo $ci->getPackageIconURL($pkg); ?>" /></td>
                <td class="ccm-addon-list-description" style="width: 100%"><h3><?php echo $pkg->getPackageName(); ?> - <?php echo $pkg->getPackageVersion(); ?></h3><?php echo $pkg->getPackageDescription(); ?></td>
            </tr>
        </table>


        <?php if (count($items['block_types']) > 0) { ?>
        <div class="form-group">
            <legend><?php echo $pkg->getPackageItemsCategoryDisplayName('block_types_sets'); ?></legend>
            <ul class="list-unstyled">
            <?php foreach ($items['block_type_sets'] as $bset) { ?>
                <li><?php echo ucfirst($bset->getBlockTypeSetName())?></li>
            <?php } ?>
            </ul>
        </div>
        <?php } unset($items['block_type_sets']); ?>

        <?php if (count($items['block_types']) > 0) { ?>
        <legend><?php echo $pkg->getPackageItemsCategoryDisplayName('block_types'); ?></legend>
        <ul id="ccm-block-type-package-list" class="item-select-list ccm-block-type-sortable-list">
            <?php
            foreach ($items['block_types'] as $bt) {
                $btID = $bt->getBlockTypeID;
            ?>

                <li id="btID_<?php echo $btID?>"  data-btid="<?php echo $btID?>">
                    <a href="<?php echo $view->url('/dashboard/blocks/types', 'inspect', $bt->getBlockTypeID()); ?>"><img src="<?php echo $ci->getBlockTypeIconURL($bt)?>" /> <?php echo t($bt->getBlockTypeName()); ?></a>
                </li>

            <?php } unset($items['block_types']) ?>
        </ul>
        <?php } ?>

        <?php if (count($items['attribute_types']) > 0) { ?>
        <div class="form-group">
            <legend><?php echo $pkg->getPackageItemsCategoryDisplayName('attribute_types'); ?></legend>
            <dl class="dl-horizontal">
                <?php foreach ($items['attribute_types'] as $at) { ?>
                <dt><img src="<?php echo $at->getAttributeTypeIconSRC()?>" alt="<?php echo t('attribute type icon')?>"/></dt>
                <dd>
                    <?php echo $at->getAttributeTypeName()?>
                    <?php
                    foreach ($catList as $cat) {
                        if (!$at->isAssociatedWithCategory($cat)) {
                            continue;
                        }
                    ?>
                    <span class="badge"><?php echo $txt->unhandle($cat->getAttributeKeyCategoryHandle())?></span>
                    <?php } ?>
                </dd>

                <?php } ?>
            </dl>
        </div>
        <?php } unset($items['attribute_types']); ?>

        <?php if ( count( $items['attribute_keys'] ) ) { ?>
            <legend><?php echo $pkg->getPackageItemsCategoryDisplayName('attribute_keys'); ?></legend>
            <ul class="list-unstyled">
            <?php foreach ($items['attribute_keys'] as $item) { ?>
                <li><?php echo $item->getAttributeKeyDisplayName(); ?></li>
            <?php } ?>
            </ul>
            <?php unset($items['attribute_keys']); ?>
        <?php } ?>

        <?php if (count($items['page_themes']) > 0) { ?>
        <div class="form-group">
            <legend><?php echo $pkg->getPackageItemsCategoryDisplayName('page_themes'); ?></legend>
            <ul class="list-unstyled">
            <?php foreach($items['page_themes'] as $theme) { ?>
                <li>
                    <div><a href="<?php echo $view->url('/dashboard/pages/themes/inspect', $theme->getThemeID())?>"><?php echo $theme->getThemeDisplayName()?></a></div>
                    <div> <?php echo $theme->getThemeDisplayDescription(); ?> </div>
                </li>
            <?php } ?>
            </ul>
        </div>
        <?php } unset($items['page_themes']); ?>

        <?php if (count($items['single_pages']) > 0) { ?>
        <div class="form-group">
            <legend><?php echo $pkg->getPackageItemsCategoryDisplayName('single_pages'); ?></legend>
            <ul class="list-unstyled">
            <?php foreach ($items['single_pages'] as $page) { ?>
                <li class="clearfix row">
                    <span class="col-sm-2"><a href="<?php echo $nav->getLinkToCollection($page)?>"><?php echo $page->getCollectionName()?></a></span>
                    <span class="col-sm-3"><code><?php echo $page->getCollectionPath()?></code></span>
                    <span class="col-sm-5"><?php echo $page->getCollectionDescription()?></span>
                </li>
            <?php } ?>
            </ul>
        </div>
        <?php } unset($items['single_pages']); ?>

        <!-- Show all remaining items that we don't have a better formatting for !-->

        <?php
        foreach ($items as $key => $itemArray) {
            if (!count($itemArray)) {
                continue;
            }
        ?>
            <legend><?php echo $pkg->getPackageItemsCategoryDisplayName($key); ?></legend>
            <ul class="list-unstyled">
            <?php foreach ($itemArray as $item) { ?>
                <li><?php echo $pkg->getItemName($item); ?></li>
            <?php } ?>
            </ul>
        <?php } ?>

        <div class="ccm-dashboard-form-actions-wrapper">
            <div class="ccm-dashboard-form-actions">
            <?php
            $tp = new TaskPermission();
            if ($tp->canUninstallPackages()) {
                echo $ch->button(t('Uninstall Package'), $view->url('/dashboard/extend/install', 'uninstall', $pkg->getPackageID()), 'right', 'btn-danger');
            }
            ?>
            <a href="<?php echo $view->url('/dashboard/extend/install'); ?>" class=" btn btn-default"><?php echo t('Back to Add Functionality'); ?></a>
        </div>
        </div>
        <?php

     } else {
        if (isset($installedPKG) && is_object($installedPKG) && $installedPKG->hasInstallPostScreen()) {
            ?>
            <div style="display: none">
                <div id="ccm-install-post-notes">
                    <div class="ccm-ui">
                        <?php echo Loader::element('dashboard/install_post', false, $installedPKG->getPackageHandle()); ?>
                        <div class="dialog-buttons">
                            <a href="javascript:void(0)" onclick="jQuery.fn.dialog.closeAll()" class="btn btn-primary pull-right"><?php echo t('Ok'); ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
            $(function () {
                $('#ccm-install-post-notes').dialog({
                    width: 500,
                    modal: true,
                    height: 400,
                    title: <?php echo json_encode(t('Installation Notes')); ?>,
                    buttons:[{}],
                    'open': function () {
                        $(this).parent().find('.ui-dialog-buttonpane').addClass("ccm-ui").html('');
                        $(this).find('.dialog-buttons').appendTo($(this).parent().find('.ui-dialog-buttonpane'));
                        $(this).find('.dialog-buttons').remove();
                    }
                });
            });
            </script>
            <?php
        }
        if ($updates > 0) {
            ?>
            <div class="alert alert-info">
                <h5><?php echo t('Add-On updates are available!'); ?></h5>
                <a class="btn-xs btn-default btn pull-right" href="<?php echo $view->url('/dashboard/extend/update'); ?>"><?php echo t('Update Add-Ons'); ?></a>
                <?php
                if ($updates == 1) {
                    ?><p><?php echo t('There is currently <strong>1</strong> update available.'); ?></p><?php
                } else {
                    ?><p><?php echo t('There are currently <strong>%s</strong> updates available.', $updates); ?></p><?php
                }
                ?>
            </div>
            <?php
        }
        ?>
        <h3><?php echo t('Currently Installed'); ?></h3>
        <?php
        if (count($pkgArray) > 0) {
            foreach ($pkgArray as $pkg) {
                ?>
                <div class="media-row">
                    <div class="pull-left"><img style="width: 49px" src="<?php echo $ci->getPackageIconURL($pkg); ?>" class"media-object" /></div>
                    <div class="media-body">
                        <a href="<?php echo URL::to('/dashboard/extend/install', 'inspect_package', $pkg->getPackageID()); ?>" class="btn pull-right btn-sm btn-default"><?php echo t('Details'); ?></a>
                        <h4 class="media-heading"><?php echo $pkg->getPackageName(); ?> <span class="badge badge-info" style="margin-right: 10px"><?php echo tc('AddonVersion', 'v.%s', $pkg->getPackageVersion()); ?></span></h4>
                        <p><?php echo $pkg->getPackageDescription(); ?></p>
                    </div>
                </div>
                <?php
            }
        } else {
            ?><p><?php echo t('No packages have been installed.'); ?></p><?php
        }
        if ($tp->canInstallPackages()) {
            ?>
            <hr/>
            <h3><?php echo t('Awaiting Installation'); ?></h3>
            <?php
            if (count($availableArray) == 0 && count($purchasedBlocks) == 0) {
                if (!$mi->isConnected()) {
                    ?><p><?php echo t('Nothing currently available to install.'); ?></p><?php
                }
            } else {
                foreach ($purchasedBlocks as $pb) {
                    $file = $pb->getRemoteFileURL();
                    if (!empty($file)) {
                        ?>
                        <div class="media-row">
                            <div class="pull-left"><img style="width: 49px" src="<?php echo $pb->getRemoteIconURL(); ?>" class"media-object" /></div>
                            <div class="media-body">
                                <a href="<?php echo URL::to('/dashboard/extend/install', 'download', $pb->getMarketplaceItemID()); ?>" class="btn pull-right btn-sm btn-default"><?php echo t('Download'); ?></a>
                                <h4 class="media-heading"><?php echo $pb->getName(); ?> <span class="badge badge-info" style="margin-right: 10px"><?php echo tc('AddonVersion', 'v.%s', $pb->getVersion()); ?></span></h4>
                                <p><?php echo $pb->getDescription(); ?></p>
                            </div>
                        </div>
                        <?php
                    }
                }
                foreach ($availableArray as $obj) {
                    ?>
                    <div class="media-row">
                        <div class="pull-left"><img style="width: 49px" src="<?php echo $ci->getPackageIconURL($obj); ?>" class"media-object" /></div>
                        <div class="media-body">
                            <?php if ($obj instanceof \Concrete\Core\Package\BrokenPackage) { ?>
                                <div style="display: inline-block" class="launch-tooltip pull-right" title="<?php echo t('This package is corrupted. Make sure it has a valid controller.php file and that it has been updated for concrete5.7 and later.')?>">
                                    <button type="button" disabled="disabled" class="btn btn-sm btn-default"><i class="fa fa-exclamation-circle"></i> <?php echo t('Can\'t Install!'); ?></button>
                                </div>
                            <?php } else { ?>
                                <a href="<?php echo URL::to('/dashboard/extend/install', 'install_package', $obj->getPackageHandle()); ?>" class="btn pull-right btn-sm btn-default"><?php echo t('Install'); ?></a>
                            <?php } ?>
                            <h4 class="media-heading"><?php echo $obj->getPackageName(); ?> <span class="badge badge-info" style="margin-right: 10px"><?php echo tc('AddonVersion', 'v.%s', $obj->getPackageVersion()); ?></span></h4>
                            <p><?php echo $obj->getPackageDescription(); ?></p>
                        </div>
                    </div>
                    <?php
                }
            }
            if (is_object($mi) && $mi->isConnected()) {
                ?>
                <hr/>
                <h4><?php echo t("Project Page"); ?></h4>
                <p><?php echo t('Your site is currently connected to the concrete5 community. Your project page URL is:'); ?><br/><a href="<?php echo $mi->getSitePageURL(); ?>"><?php echo $mi->getSitePageURL(); ?></a></p>
                <?php
            } elseif (is_object($mi) && $mi->hasConnectionError()) {
                echo Loader::element('dashboard/marketplace_connect_failed');
            } elseif ($tp->canInstallPackages() && Config::get('concrete.marketplace.enabled') == true) {
                ?>
                <hr/>
                <div class="well clearfix" style="padding:10px 20px;">
                    <h4><?php echo t('Connect to Community'); ?></h4>
                    <p><?php echo t('Your site is not connected to the concrete5 community. Connecting lets you easily extend a site with themes and add-ons.'); ?></p>
                    <p><a class="btn btn-primary pull-right" href="<?php echo $view->url('/dashboard/extend/connect', 'register_step1'); ?>"><?php echo t("Connect to Community"); ?></a></p>
                </div>
                <?php
            }
        }
    }
}
