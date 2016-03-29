<?php 
namespace Concrete\Package\Dseventcalendar\Controller\SinglePage\Dashboard\EventCalendar;
use \Concrete\Core\Page\Controller\DashboardPageController;
use Loader;

class Calendar extends DashboardPageController
{
    public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('dsStyle.css', 'dsEventCalendar'));
    }

    public function view()
    {
        if (!empty($_POST)) {
            if (isset($_POST['calendar_title']) && $_POST['calendar_title'] !== "") {
                $db = Loader::db();
                $sql = "INSERT INTO dsEventCalendar (title) VALUES (?)";

                $args = array(
                    $this->post('calendar_title')
                );
                $db->Execute($sql, $args);
                $this->set('success', t('Calendar ' . $this->post('calendar_title') . ' has been added'));
                $this->set('calendar_title', "");
                unset($_POST);
            } else {
                $this->set('error', t('Error while adding. Maybe calendar title was empty?'));
            }
        }

        $this->set('button', array(
            'class' => 'btn btn-success',
            'label' => t('Add calendar')
        ));

        $this->set('pageTitle',t("Manage calendar"));

    }

    public function update($calendar_id)
    {
        $this->set('pageTitle',t("Manage calendar"));

        if (is_numeric($calendar_id)) {
            $db = Loader::db();
            $sql = "SELECT * FROM dsEventCalendar WHERE calendarID=" . $calendar_id;

            $calendar = $db->GetRow($sql);

            $this->set('calendar_title', $calendar['title']);
            $this->set('button', array(
                'class' => 'btn btn-warning',
                'label' => t('Edit calendar')
            ));

            if (!empty($_POST)) {
                if (isset($_POST['calendar_title']) && $_POST['calendar_title'] !== "") {
                    $sql = "UPDATE dsEventCalendar SET title = ? WHERE calendarID=" . $calendar_id;

                    $args = array(
                        $this->post('calendar_title')
                    );
                    $db->Execute($sql, $args);
                    $this->set('success', t('Calendar ' . $this->post('calendar_title') . ' has been edited'));
                    $this->set('calendar_title', $this->post('calendar_title'));
                    unset($_POST);
                } else {
                    $this->set('error', t('Error while editing. Maybe calendar title was empty?'));
                }
            }
        }
    }
}