<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use dsOpenData\dsOpenData;
use Loader;

defined('C5_EXECUTE') or die("Access Denied.");


class ListDictionary extends DashboardPageController
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

    public function show($dataset_id=null)
    {   
        $this->requireAsset('javascript', 'jquery');
        
        $dsOpenData = new dsOpenData();
        $this->set('pageTitle',t("Dicionario de Datos"));
        $this->set('dataset_id', $dataset_id);

        if (is_numeric($dataset_id) && !is_null($dataset_id)) {
            $datasets=$dsOpenData->getNameDatasets($dataset_id);
            if ($datasets[0]['datasetsID']=='') {
                $this->set('diccionario', '');
            } else {
            $json_dictionary = $dsOpenData->getDictionaryFromDatasets($datasets[0]['datasetsID']);
            $this->set('diccionario', $json_dictionary);
            $this->set('datasets', $datasets);
                
            }
        }
    }
  
    public function delete()
    {
        if (isset($_POST) && is_numeric($_POST['id'])) {
            $this->db = Loader::db();

            $sql = "DELETE FROM dsOpenDataDictionary WHERE dictionaryID = " . $_POST['id'];
            $this->db->Execute($sql);

            die("OK");
        } else {
            die("ERROR");
        }
    }
    
}