<?php 
namespace Concrete\Package\Dseventcalendar\Controller\SinglePage\Dashboard;
use \Concrete\Core\Page\Controller\DashboardPageController;


class EventCalendar extends DashboardPageController
{
    public function view()
    {
        $this->redirect("dashboard/event_calendar/list_calendar");
    }
}