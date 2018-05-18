<?php  defined('C5_EXECUTE') or die('Access denied.');
$form = Loader::helper('form');
?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Event Calendar')); ?>

    <div class="ccm-dashboard-header-buttons">
        <div class="btn-group">
            <a class="btn btn-primary" href="<?php  echo View::url('dashboard/event_calendar/list_calendar') ?>"><?php  echo t('Calendars list'); ?>&nbsp;/&nbsp;<?php  echo t('Manage events'); ?></a>
        </div>
        <div class="btn-group">
            <a class="btn btn-success" href="<?php  echo View::url('dashboard/event_calendar/calendar') ?>"><?php  echo t('Add calendar'); ?></a>
            <a class="btn btn-success" href="<?php  echo View::url('dashboard/event_calendar/event') ?>"><?php  echo t('Add event'); ?></a>
        </div>
        <div class="btn-group">
            <a class="btn btn-default" href="<?php  echo View::url('dashboard/event_calendar/types') ?>"><?php  echo t('Type of events'); ?></a>
            <a class="btn btn-default" href="<?php  echo View::url('dashboard/event_calendar/settings') ?>"><?php  echo t('Settings'); ?></a>
        </div>
    </div>

    <form class="form-horizontal col-xs-6" method="post" id="ccm-multilingual-page-report-form" style="margin-top: 35px;">
        <fieldset class="control-group">
            <label class="control-label"><?php  echo t('Calendar title') ?></label>

            <div class="controls">
                <input maxlength="255" class="form-control col-xs-6" type="text" name="calendar_title" id="calendar_title" value="<?php  echo ( isset( $calendar_title ) ) ? $calendar_title : ''; ?>">
            </div>
        </fieldset>


        <fieldset class="control-group offset2">
            <div class="clearfix">
                <div style="margin-top: 10px;">
                    <input class="<?php  echo $button['class'] ?>" type="submit" value="<?php  echo $button['label'] ?>">
                    <a class="btn btn-default" href="<?php  echo View::url('dashboard/event_calendar/list_calendar') ?>"><?php  echo t('Return to calendar list'); ?></a>
                </div>
            </div>
        </fieldset>
    </form>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>