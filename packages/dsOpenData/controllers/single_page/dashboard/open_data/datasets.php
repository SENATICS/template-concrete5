<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use dsOpenData\dsOpenData;
use Loader;

defined('C5_EXECUTE') or die("Access Denied.");

class Datasets extends DashboardPageController
{

    public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('estilo.css', 'dsOpenData'));
    }

    public function view($catalog_id=null)
    {
        $this->requireAsset('javascript', 'jquery');

        $this->set('pageTitle',t("Gestionar Conjunto de Datos"));

        $this->db = Loader::db();

        
            if (is_numeric($catalog_id) && !is_null($catalog_id)) {
                $this->set('datasets_catalogID', $catalog_id);
                
                $aux="SELECT * FROM dsOpenData WHERE opendataID=".$catalog_id;
                $datos=$this->db->GetRow($aux);
                $this->set('titulo', $datos['title']);

                $dsOpenData = new dsOpenData();
                $titulo_datasets=$dsOpenData->getNameCatalog($catalog_id);
                $this->set('titulo_datasets', $titulo_datasets);
                
                if (!empty($datos['opendataID'])) {
                    $this->set('disabled_select', 'disabled'); 
                }else{
                    $this->set('error', t('Favor seleccione un Catálogo válido'));
                }
            }else{
                if (!is_null($catalog_id)) {
                $this->set('error', t('El Cógido de Catálogo enviado por URL debe ser Numérico'));
                }
            }

            if (!empty($_POST)) {

                $isSomeValueEmpty = false;
                $campos_vacios='';

                if (isset($_POST['datasets_catalogID']) && ($_POST['datasets_catalogID'] == "" || $_POST['datasets_catalogID'] == 0)) {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= 'Catálogo,';
                }  
                if (isset($_POST['datasets_title']) && $_POST['datasets_title'] == "") {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' Título del Conjunto de Datos,';
                }
                if (isset($_POST['datasets_url']) && $_POST['datasets_url'] == "") {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' URL Página de Descarga,';
                }
                if (isset($_POST['datasets_licenseID']) && ($_POST['datasets_licenseID'] == "" || $_POST['datasets_licenseID']==0)) {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' Licencia,';
                }



                $this->set('datasets_title', $this->post('datasets_title'));
                $this->set('datasets_catalogID', $this->post('datasets_catalogID'));
                $this->set('datasets_description', $this->post('datasets_description'));
                $this->set('datasets_url', $this->post('datasets_url'));
                $this->set('datasets_author', $this->post('datasets_author'));
                $this->set('datasets_email_author', $this->post('datasets_email_author'));
                $this->set('datasets_licenseID', $this->post('datasets_licenseID'));
                $this->set('datasets_tags', $this->post('datasets_tags'));
                $this->set('datasets_version', $this->post('datasets_version'));


                if (!$isSomeValueEmpty) {
                        $sql = "INSERT INTO dsOpenDataDataset (opendataID,title,description,url_download_page,author,email_author, licenseID,tags,version) VALUES (?,?,?,?,?,?,?,?,?)";

                        $args = array(
                            $this->post('datasets_catalogID'),
                            $this->post('datasets_title'),
                            $this->post('datasets_description'),
                            $this->post('datasets_url'),
                            $this->post('datasets_author'),
                            $this->post('datasets_email_author'),
                            $this->post('datasets_licenseID'),
                            $this->post('datasets_tags'),
                            $this->post('datasets_version')
                        );


                        $this->db->Execute($sql, $args);

                        $this->set('datasets_catalogID', "");
                        $this->set('datasets_title', "");
                        $this->set('datasets_description', "");
                        $this->set('datasets_url', "");
                        $this->set('datasets_author', "");
                        $this->set('datasets_email_author', "");
                        $this->set('datasets_licenseID', "");
                        $this->set('datasets_tags', "");
                        $this->set('datasets_version', "");
                        $this->set('success', t('Conjunto de Datos: "' . $this->post('datasets_title') . '" ha sido agregado'));
                        unset($_POST);
                    
                } else {
                    $this->set('error', t('Error al añadir. Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente'));
                }
            }
        

        $catalogos = $this->db->GetAll("SELECT * FROM dsOpenData");
        $this->set('catalogos', $catalogos);

        $licenses = $this->db->GetAll("SELECT * FROM dsOpenDataLicense");
        $this->set('licenses', $licenses);

        //$types = $this->db->GetAll("SELECT * FROM dsOpenDataTypes");

        $settings = $this->db->GetAll("SELECT * FROM dsOpenDataSettings");

        $this->set('button', array(
            'class' => 'btn btn-success',
            'label' => t('Agregar Conjunto de Datos')
        ));
    }

    public function update($datasets_id)
    {
        $this->set('pageTitle',t("Gestionar Conjunto de Datos"));

        if (is_numeric($datasets_id)) {
            $this->db = Loader::db();
            $sql = "SELECT * FROM dsOpenDataDataset WHERE datasetsID=" . $datasets_id;

            $dataset = $this->db->GetRow($sql);

                $this->set('datasets_catalogID', $dataset['opendataID']);
                $this->set('datasets_title', $dataset['title']);
                $this->set('datasets_description', $dataset['description']);
                $this->set('datasets_url', $dataset['url_download_page']);
                $this->set('datasets_author', $dataset['author']);
                $this->set('datasets_email_author', $dataset['email_author']);
                $this->set('datasets_licenseID', $dataset['licenseID']);
                $this->set('datasets_tags', $dataset['tags']);
                $this->set('datasets_version', $dataset['version']);

            $dsOpenData = new dsOpenData();
            $titulo_datasets=$dsOpenData->getNameDatasets($datasets_id);
            $this->set('titulo_datasets', $titulo_datasets);

            $this->set('button', array(
                'class' => 'btn btn-warning',
                'label' => t('Editar Conjunto de datos')
            ));
            
            $catalogos = $this->db->GetAll("SELECT * FROM dsOpenData");
            $this->set('catalogos', $catalogos);

            $licenses = $this->db->GetAll("SELECT * FROM dsOpenDataLicense");
            $this->set('licenses', $licenses);

            if (!empty($_POST)) {

                $isSomeValueEmpty = false;
                $campos_vacios='';

                if (isset($_POST['datasets_catalogID']) && ($_POST['datasets_catalogID'] == "" || $_POST['datasets_catalogID'] == 0)) {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= 'Catálogo,';
                }  
                if (isset($_POST['datasets_title']) && $_POST['datasets_title'] == "") {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' Título del Conjunto de Datos,';
                }
                if (isset($_POST['datasets_url']) && $_POST['datasets_url'] == "") {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' URL Página de Descarga,';
                }
                if (isset($_POST['datasets_licenseID']) && ($_POST['datasets_licenseID'] == "" || $_POST['datasets_licenseID']==0)) {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' Licencia,';
                }

                if (!$isSomeValueEmpty) {
                    $sql_update = "UPDATE dsOpenDataDataset SET opendataID=?, title=?, description=?, url_download_page=?, author=?,email_author=?, licenseID=?, tags=?, version=? WHERE datasetsID=" . $datasets_id;

                    $args_update = array(
                        $this->post('datasets_catalogID'),
                        $this->post('datasets_title'),
                        $this->post('datasets_description'),
                        $this->post('datasets_url'),
                        $this->post('datasets_author'),
                        $this->post('datasets_email_author'),
                        $this->post('datasets_licenseID'),
                        $this->post('datasets_tags'),
                        $this->post('datasets_version')
                    );
                    $this->db->Execute($sql_update, $args_update);

                    $dataset = $this->db->GetRow($sql);

                    $this->set('datasets_catalogID', $dataset['opendataID']);
                    $this->set('datasets_title', $dataset['title']);
                    $this->set('datasets_description', $dataset['description']);
                    $this->set('datasets_url', $dataset['url_download_page']);
                    $this->set('datasets_author', $dataset['author']);
                    $this->set('datasets_email_author', $dataset['email_author']);
                    $this->set('datasets_licenseID', $dataset['licenseID']);
                    $this->set('datasets_tags', $dataset['tags']);
                    $this->set('datasets_version', $dataset['version']);

                    $this->set('success', t('El Conjunto de Datos "' . $this->post('datasets_title') . '" ha sido modificado'));
                    unset($_POST);

                } else {
                    $this->set('error', t('Error al editar. Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente'));
                }
            }
        }
    }
}
