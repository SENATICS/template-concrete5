<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use Loader;

defined('C5_EXECUTE') or die("Access Denied.");

class ListCatalog extends DashboardPageController
{
    public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('estilo.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->css('font-awesome.min.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->css('jquery.dataTables.min.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->javascript('jquery.dataTables.min.js', 'dsOpenData'));
        
    }

    public function view()
    {
        $this->db = Loader::db();
        $catalogos = $this->db->GetAll("SELECT OD.*, count(ODD.datasetsID) as total_datasets 
                                    FROM dsOpenData AS OD 
                                    LEFT JOIN dsOpenDataDataset AS ODD 
                                        ON ODD.opendataID = OD.opendataID 
                                        group by OD.opendataID");
        $this->set('catalogos', $catalogos);
         

        $this->set('pageTitle',t("Listar Catálogos"));
    }

    public function delete()
    {
        if (isset($_POST) && is_numeric($_POST['id'])) {
            $this->db = Loader::db();

            $sql = "DELETE FROM dsOpenDataDataset WHERE opendataID = ". $_POST['id'];
            $this->db->Execute($sql);

            $sql = "DELETE FROM dsOpenData WHERE opendataID = ". $_POST['id'];
            $this->db->Execute($sql);
            die("OK");
        } else {
            die("ERROR");
        }
    }
}