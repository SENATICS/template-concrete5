<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use dsOpenData\dsOpenData;
use Loader;

defined('C5_EXECUTE') or die("Access Denied.");

class Resource extends DashboardPageController
{

    public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('estilo.css', 'dsOpenData'));
    }

    public function view($datasets_id=null)
    {
        $this->requireAsset('javascript', 'jquery');

        $this->set('pageTitle',t("Agregar Recursos"));

        
        if (is_numeric($datasets_id) && !is_null($datasets_id)) {

            $isSomeValueEmpty = false;
            
            $validateArray = $_POST;
            
            $campos_vacios='';
            if ($validateArray['resource_title']=='') {
                 $isSomeValueEmpty = true;
                 $campos_vacios=" Recurso";
            }
            

            $dsOpenData = new dsOpenData();

            $titulo_datasets=$dsOpenData->getNameDatasets($datasets_id); 

            if (empty($titulo_datasets[0]['datasetsID'])) {
                $this->set('titulo_datasets', '');
            } else {
                $this->set('titulo_datasets', $titulo_datasets);
                
            }
                        

            
            $this->set('resource_title', $this->post('resource_title'));
            $this->set('resource_description', $this->post('resource_description'));

            if (!empty($_POST)) {
                
                if (!$isSomeValueEmpty) {
                        $this->db = Loader::db();           
                        $sql = "INSERT INTO dsOpenDataResource (datasetsID,resource_title,description) VALUES (?,?,?)";
                        $args = array(
                            $datasets_id,
                            $this->post('resource_title'),
                            $this->post('resource_description'),
                        );
                        $this->db->Execute($sql, $args);
                        
                        $this->set('resource_title', "");
                        $this->set('resource_description', "");
                        $this->set('success', t('Recurso: "' . $this->post('resource_title') . '" ha sido agregado'));
                        unset($_POST);
                    
                } else {

                    $this->set('error', t('Error al añadir. Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente'));
                }
            }
        }

        $this->set('resource_datasetsID', $datasets_id);
        $this->set('button', array(
            'class' => 'btn btn-success',
            'label' => t('Agregar Recurso')
        ));
    }

    public function update($resource_id=null)
    {
        $this->set('pageTitle',t("Gestionar Recursos"));

        if (is_numeric($resource_id) && !is_null($resource_id)) {
            $this->db = Loader::db();
            $sql_resource = "SELECT * FROM dsOpenDataResource WHERE resourceID=" . $resource_id;

            $resource = $this->db->GetRow($sql_resource);

            $dsOpenData = new dsOpenData();
            $titulo_datasets=$dsOpenData->getNameResource($resource_id);


            if (empty($resource['resourceID'])) {
                $this->set('resource_datasetsID', '');
                $this->set('titulo_datasets', '');  
            } else {
                $this->set('titulo_datasets', $titulo_datasets);  
            }

                
                $this->set('resource_title', $resource['resource_title']);
                $this->set('resource_description', $resource['description']);
                
            $this->set('button', array(
                'class' => 'btn btn-warning',
                'label' => t('Editar Recurso')
            ));
            
            
            if (!empty($_POST)) {
                $isSomeValueEmpty = false;
                $validateArray = $_POST;    
                $campos_vacios='';

                if ($validateArray['resource_title']=='') {
                     $isSomeValueEmpty = true;
                     $campos_vacios=" Recurso";
                }

                if (!$isSomeValueEmpty) {
                    $sql_update = "UPDATE dsOpenDataResource SET datasetsID=?, resource_title=?, description=? WHERE resourceID=" . $resource_id;

                    $args_update = array(
                        $titulo_datasets[0]['datasetsID'],
                        $this->post('resource_title'),
                        $this->post('resource_description')
                        
                    );
                    $this->db->Execute($sql_update, $args_update);

                    $resource = $this->db->GetRow($sql_resource);

                    $this->set('resource_datasetsID', $resource['datasetsID']);
                    $this->set('resource_title', $resource['resource_title']);
                    $this->set('resource_description', $resource['description']);
                    

                    $this->set('success', t('El Recurso "' . $this->post('resource_title') . '" ha sido modificado'));
                    unset($_POST);

                } else {
                    $this->set('error', t('Error al modificar. Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente'));
                }
            }
        }
        $this->set('resource_datasetsID', $resource_id);
    }
}
