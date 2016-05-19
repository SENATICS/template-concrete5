<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard;
use \Concrete\Core\Page\Controller\DashboardPageController;


class OpenData extends DashboardPageController
{
    public function view()
    {
        $this->redirect("dashboard/open_data/list_catalog");
    }
}