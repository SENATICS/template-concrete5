<?php
defined('C5_EXECUTE') or die("Access Denied.");
$h = Loader::helper('concrete/dashboard');
$ih = Loader::helper('concrete/ui');
$form = Loader::helper('form');
$view = View::getInstance();
if ($canUpgrade) {

    if ($downloadableUpgradeAvailable) {

        ?>
        <div class="ccm-dashboard-header-buttons">
            <a href="<?php echo $view->action('check_for_updates') ?>" class="btn btn-primary">
                <?php echo t('Check For Updates') ?>
            </a>
        </div>

        <h2><?php echo t('Available Update') ?></h2>
        <form method="post" action="<?php echo $view->action('download_update') ?>" id="ccm-download-update-form">

            <?php echo Loader::helper('validation/token')->output('download_update') ?>

            <legend style="line-height:40px">
                <?php echo t('Version: %s', $update->version) ?>.
                <?php echo t('Release Date: %s', date(t('F d, Y'), strtotime($update->date))) ?>
                <?php echo Loader::helper('concrete/ui')->submit(
                    t('Download'),
                    'ccm-download-update-form',
                    'right',
                    'btn-success') ?>
            </legend>
            <div id="ccm-release-notes">
                <?php echo $update->notes ?>
            </div>
            <hr/>
            <span class="help-block"><?php echo t('Note: Downloading an update will NOT automatically install it.') ?></span>

        </form>
        <script>
            $('header.ccm-dashboard-page-header').children().text('<?php echo t('Currently Running %s', config::get('concrete.version')) ?>');
        </script>
    <?php
    } else {
        if (count($updates)) {
            ?>
            <div class="alert alert-warning">
                <i class="fa fa-warning"></i> <?php echo t(
                    'Make sure you <a href="%s">backup your database</a> before updating.',
                    $view->url('/dashboard/system/backup/backup')) ?>
            </div>
            <?php
            $ih = Loader::helper('concrete/ui');

            if (count($updates) == 1) {
                ?>
                <p>
                    <?php echo t(
                        'An update is available. Click below to update to <strong>%s</strong>.',
                        $updates[0]->getUpdateVersion()) ?>
                </p>
                <span class="label"><?php echo t('Current Version %s', config::get('concrete.version')) ?></span>

                <div class="ccm-dashboard-form-actions-wrapper">
                    <div class="ccm-dashboard-form-actions">
                        <form method="post" action="<?php echo $view->action('do_update') ?>" id="ccm-update-form">
                            <input type="hidden" name="updateVersion" value="<?php echo $updates[0]->getUpdateVersion() ?>"/>
                            <?php echo $ih->submit(t('Update'), 'maintenance-mode-form', 'right', 'btn-primary') ?>
                        </form>
                    </div>
                </div>
            <?php } else { ?>
                <p><?php echo t('Several updates are available. Please choose the desired update from the list below.') ?></p>
                <span class="label"><?php echo t('Current Version') ?> <?php echo config::get('concrete.version') ?></span>
                <form method="post" class="form" action="<?php echo $view->action('do_update') ?>" id="ccm-update-form">
                    <?php
                    $checked = true;
                    foreach ($updates as $upd) {
                        ?>
                        <div class="radio">
                            <label>
                                <input type="radio" name="updateVersion"
                                       value="<?php echo $upd->getUpdateVersion() ?>" <?php echo (!$checked ? '' : "checked") ?> />
                                <?php echo $upd->getUpdateVersion() ?>
                            </label>
                        </div>
                        <?php
                        $checked = false;
                    }
                    ?>
                    <div class="ccm-dashboard-form-actions-wrapper">
                        <div class="ccm-dashboard-form-actions">
                            <?php echo $ih->submit(t('Update'), false, 'right', 'btn-primary') ?>
                        </div>
                    </div>
                </form>
            <?php } ?>
            </div>
            <div class="clearfix">&nbsp;</div>
        <?php
        } else {
            ?>

            <div class="ccm-dashboard-header-buttons">
                <a href="<?php echo $view->action('check_for_updates') ?>" class="btn btn-primary">
                    <?php echo t('Check For Updates') ?>
                </a>
            </div>

            <div class="alert alert-info"><?php echo t('Currently Running %s', config::get('concrete.version')) ?></div>

            <p><?php echo t('No updates available.') ?></p>

        <?php
        }
    } ?>

<?php } else { ?>
    <p><?php echo t('You do not have permission to upgrade this installation of concrete5.')?></p>
<?php } ?>
