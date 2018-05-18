<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use dsOpenData\dsOpenData;
use Loader;

defined('C5_EXECUTE') or die("Access Denied.");


class ListDatasets extends DashboardPageController
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
        //redirect if param is not exist
        $this->redirect("dashboard/open_data/list_catalog");
    }



    public function show($catalog_id=null)
    {   
        $this->requireAsset('javascript', 'jquery');
        
        $this->set('pageTitle',t("Conjuntos de Datos"));
        
        if (is_null($catalog_id)) {
            $this->redirect("dashboard/open_data/list_catalog");
        }else{
            $this->set('catalogID', $catalog_id);
            if (is_numeric($catalog_id)) {
                $dsOpenData = new dsOpenData();
                $json_datasets = $dsOpenData->getDatasetsFromCatalog($catalog_id);
                $titulo_catalogo=$dsOpenData->getNameCatalog($catalog_id);   
                $this->set('titulo_catalog', $titulo_catalogo);
                $this->set('datasets', $json_datasets);
            }
        }
    }
   
    public function delete()
    {
        if (isset($_POST) && is_numeric($_POST['id'])) {
            $this->db = Loader::db();

            $sql = "DELETE FROM dsOpenDataResource WHERE datasetsID = " . $_POST['id'];
            $this->db->Execute($sql);

            $sql = "DELETE FROM dsOpenDataDataset WHERE datasetsID = " . $_POST['id'];
            $this->db->Execute($sql);
            die("OK");
        } else {
            die("ERROR");
        }
    }
}