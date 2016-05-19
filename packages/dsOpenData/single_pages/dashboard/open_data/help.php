<?php  defined('C5_EXECUTE') or die('Access denied.');
?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Help for dsEventCalendar')); ?>

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


<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>