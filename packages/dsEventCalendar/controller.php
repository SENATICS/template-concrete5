<?php 

namespace Concrete\Package\Dseventcalendar;
use Package;
use BlockType;
use SinglePage;
use Loader;

defined('C5_EXECUTE') or die(_("Access Denied."));

class Controller extends Package {

    protected $pkgHandle = 'dsEventCalendar';
    protected $appVersionRequired = '5.7.0.4';
    protected $pkgVersion = '3.3.5';
    protected $pkgAutoloaderRegistries = array(
        'src/dsEventCalendar' => '\dsEventCalendar'
    );

    public function getPackageDescription()
    {
        return t('Event Calendar - you can add, edit and remove one day events on your page');
    }

    public function getPackageName()
    {
        return t('Event Calendar');
    }

    public function install() {
        $pkg = parent::install();

        // install block
        BlockType::installBlockTypeFromPackage('event_calendar', $pkg);


        $p2 = SinglePage::add('/dashboard/event_calendar/list_calendar', $pkg);
        if (is_object($p2)) {
            $p2->update(array('cName' => t('Calendars list'), 'cDescription' => ''));
        }

        $p4 = SinglePage::add('/dashboard/event_calendar/list_event', $pkg);
        if (is_object($p4)) {
            $p4->update(array('cName' => t('Events list'), 'cDescription' => ''));
        }

        $p3 = SinglePage::add('/dashboard/event_calendar/calendar', $pkg);
        if (is_object($p3)) {
            $p3->update(array('cName' => t('Add / edit calendar'), 'cDescription' => ''));
        }

        $p5 = SinglePage::add('/dashboard/event_calendar/event', $pkg);
        if (is_object($p5)) {
            $p5->update(array('cName' => t('Add / edit event'), 'cDescription' => ''));
        }

        $p6 = SinglePage::add('/dashboard/event_calendar/types', $pkg);
        if (is_object($p6)) {
            $p6->update(array('cName' => t('Type of events'), 'cDescription' => ''));
        }

        $p7 = SinglePage::add('/dashboard/event_calendar/settings', $pkg);
        if (is_object($p7)) {
            $p7->update(array('cName' => t('Settings'), 'cDescription' => ''));
        }

        $this->installSettings();
    }


    private function installSettings()
    {
        $db = Loader::db();

        //check is settings are duplicate

        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'lang'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'lang' , value='en-gb'";
            $db->Execute($sql);
        }

        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'lang_datepicker'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'lang_datepicker' , value='en-GB'";
            $db->Execute($sql);
        }


        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'formatEvent'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'formatEvent' , value='DD MMMM YYYY'";
            $db->Execute($sql);
        }


        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'startFrom'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'startFrom' , value='1'";
            $db->Execute($sql);
        }


        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'eventsInDay'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'eventsInDay' , value='3'";
            $db->Execute($sql);
        }


        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'default_color'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'default_color' , value='#808080'";
            $db->Execute($sql);
        }


        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'timeFormat'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'timeFormat' , value='HH:mm'";
            $db->Execute($sql);
        }

        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'scrollTime'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'scrollTime' , value='1'";
            $db->Execute($sql);
        }

        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'scrollMonth'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'scrollMonth' , value='1'";
            $db->Execute($sql);
        }

        $sql = "select count(*) as count from dsEventCalendarSettings where opt= 'scrollInput'";
        $row = $db->GetRow($sql);
        if ($row['count'] == 0) {
            $sql = "INSERT INTO dsEventCalendarSettings SET opt= 'scrollInput' , value='1'";
            $db->Execute($sql);
        }

        //remove duplicate
        $sql = "DELETE s1 FROM dsEventCalendarSettings s1, dsEventCalendarSettings s2 WHERE s1.opt = s2.opt AND s1.settingID > s2.settingID";
        $db->Execute($sql);

    }

}


?>