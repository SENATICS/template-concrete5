<?php  defined('C5_EXECUTE') or die('Access denied.'); ?>
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

<div class="row">
	<div class="col-xs-6">

		<form class="form-horizontal" method="post" id="ccm-multilingual-page-report-form" style="margin-top: 15px;">

			<fieldset class="control-group">
				<label class="control-label"><?php  echo t('Language') ?></label>

				<div class="controls">
					<select class="form-control" name="lang" id="lang" value="<?php  echo $lang; ?>">
						<?php  foreach ($lang_list as $ll): ?>
							<option value="<?php  echo $ll; ?>" <?php  $selected = $ll==$lang ? "selected" : ""; echo $selected; ?> ><?php  echo $ll; ?></option>
						<?php  endforeach; ?>
					</select>
				</div>
			</fieldset>

			<fieldset class="control-group">
				<label class="control-label"><?php  echo t('Language - datepicker') ?></label>

				<div class="controls">
					<select class="form-control" name="lang_datepicker" id="lang_datepicker" value="<?php  echo $lang_datepicker; ?>">
						<?php  foreach ($lang_datepicker_list as $ldl): ?>
							<option value="<?php  echo $ldl; ?>" <?php  $selected = $ldl==$lang_datepicker ? "selected" : ""; echo $selected; ?> ><?php  echo $ldl; ?></option>
						<?php  endforeach; ?>
					</select>
				</div>
			</fieldset>

			<fieldset class="control-group">
				<label class="control-label"><?php  echo t('Event date format') ?></label>
				<div class="controls">
					<p><small><?php  echo t("Format will be apply only on calendar view - not while adding or editing") ?></small></p>
					<input maxlength="255" class="form-control" type="text" name="formatEvent" id="formatEvent" value="<?php  echo $formatEvent; ?>">
				</div>
			</fieldset>

			<fieldset class="control-group">
				<label class="control-label"><?php  echo t('Event time format') ?></label>
				<p><small><?php  echo t("Format will be apply only on calendar view - not while adding or editing") ?></small></p>
				<div class="controls">
					<input maxlength="255" class="form-control" type="text" name="timeFormat" id="timeFormat" value="<?php  echo $timeFormat; ?>">
				</div>
			</fieldset>

			<fieldset class="control-group">
				<!-- <label class="control-label"></label> -->
				<div class="controls">
					<a href="http://momentjs.com/docs/#/displaying/format/" class="btn btn-primary" target="_blank"><?php  echo t('Available formats') ?></a>
				</div>
			</fieldset>

			<fieldset class="control-group">
				<label class="control-label"><?php  echo t('Start from') ?></label>
				<div class="controls">
					<select class="form-control" name="startFrom" id="startFrom" value="<?php  echo $startFrom; ?>">
						<?php  $index = 1; ?>
						<?php  foreach ($days as $d): ?>

							<option value="<?php  echo $index%7 ?>" <?php  $selected = $index%7==$startFrom ? "selected" : ""; echo $selected; ?> ><?php  echo $d ?></option>
							<?php  $index++; ?>
						<?php  endforeach; ?>
					</select>
				</div>
			</fieldset>

			<fieldset class="control-group">
				<label class="control-label"><?php  echo t('Number of events in day') ?></label>
				<div class="controls">
					<input maxlength="255" class="form-control" type="text" name="eventsInDay" id="eventsInDay" value="<?php  echo $eventsInDay; ?>">
				</div>
			</fieldset>

			<fieldset class="control-group">
				<label class="control-label"><?php  echo t('Default color of event') ?></label>
				<div class="controls">
					<input maxlength="255" class="form-control" type="text" name="default_color" id="default_color" value="<?php  echo $default_color; ?>">
				</div>
			</fieldset>


            <fieldset class="control-group">
                <label><?php  echo t('Scroll time in datepicker') ?></label>
                <div class="controls">
                    <input type="checkbox"
                           name="scrollTime"
                           id="scrollTime"
                           value="1"
                            <?php  echo $scrollTime == '1' ? "checked" : '' ?>
                        >
                </div>
            </fieldset>

            <fieldset class="control-group">
                <label><?php  echo t('Scroll month in datepicker') ?></label>
                <div class="controls">
                    <input
                        type="checkbox"
                        name="scrollMonth"
                        id="scrollMonth"
                        value="1"
                        <?php  echo $scrollMonth == '1' ? "checked" : '' ?>
                        >
                </div>
            </fieldset>

            <fieldset class="control-group">
                <label><?php  echo t('Scroll on input to change date / time (to enable this option you have to enable scroll time or month)') ?></label>
                <div class="controls">
                    <input
                        type="checkbox"
                        name="scrollInput"
                        id="scrollInput"
                        value="1"
                        <?php  echo $scrollInput == '1' ? "checked" : '' ?>>
                </div>
            </fieldset>



			<fieldset class="control-group offset2">
				<div class="clearfix">
					<div style="margin-top: 10px;">
						<input class="btn btn-success" id="submit-update" type="submit" value="<?php  echo t('Update settings') ?>">
					</div>
				</div>
			</fieldset>
		</form>
	</div>
	<div class="col-xs-5 col-xs-offset-1">
		<h3><?php  echo t('Help') ?></h3>
		<blockquote><p><?php  echo t('Create calendar and add event to created calendar.'); ?></p></blockquote>
		<blockquote>
			<p><?php  echo t('After add event go to Calendar list -> show events for calendar. At now, you can manage events.'); ?></p>
		</blockquote>
		<blockquote><p><?php  echo t('Drag and drop to change date.'); ?></p></blockquote>
		<blockquote><p><?php  echo t('Click for edit details.'); ?></p></blockquote>
		<blockquote><p><?php  echo t('If you choose "All day" event you can resize event for more days.'); ?></p></blockquote>
		<blockquote><p><?php  echo t('If you choose "One day with time" event you can resize event for more hours.'); ?></p></blockquote>
	</div>
</div>



<hr>

<div class="row">
	<div class="col-xs-12">
		<p><?php  echo t('Author:') ?> Damian Szymczuk</p>
		<p><?php  echo t('Site:') ?> <a target="_blank" href="http://dszymczuk.pl">dszymczuk.pl</a></p>
		<p><?php  echo t('Project on GitHub:') ?> <a target="_blank" href="https://github.com/dszymczuk/dsEventCalendar">dsEventCalendar</a></p>
		<p><?php  echo t('Do you like it? Maybe some donate? :)') ?></p>
		<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
			<input type="hidden" name="cmd" value="_s-xclick">
			<input type="hidden" name="hosted_button_id" value="CREWJUVCCFC5C">
			<input type="image" src="https://www.paypalobjects.com/pl_PL/PL/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal — Płać wygodnie i bezpiecznie">
			<img alt="" border="0" src="https://www.paypalobjects.com/pl_PL/i/scr/pixel.gif" width="1" height="1">
		</form>
	</div>
</div>


<script>
$(document).ready(function () {

	var default_color_element = $('#default_color');

	default_color_element.ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			default_color_element.val('#'+hex);
			$('.colorpicker').hide();
		}
	});

	var default_color = default_color_element.val();
    default_color_element.ColorPickerSetColor(default_color);
});
</script>


<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper();
