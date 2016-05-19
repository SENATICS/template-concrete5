<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use dsOpenData\dsOpenData;
use Loader;

defined('C5_EXECUTE') or die("Access Denied.");

class Dictionary extends DashboardPageController
{

    public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('estilo.css', 'dsOpenData'));
    }

    public function view($datasets_id=null)
    {
        $this->requireAsset('javascript', 'jquery');
        $this->set('pageTitle',t("Agregar Diccionario de Datos"));

        if (is_numeric($datasets_id) && !is_null($datasets_id)) {
            $isSomeValueEmpty = false;
            $validateArray = $_POST;
            $campos_vacios='';
            

            if ($validateArray['column_name']==='') {
                  $isSomeValueEmpty = true;
                  $campos_vacios=" Propiedad en Columna,";
            }
            if ($validateArray['datatype']=='none') {
                  $isSomeValueEmpty = true;
                  $campos_vacios=" Tipo de datos,";
            }

      

            $dsOpenData = new dsOpenData();

            $titulo_datasets=$dsOpenData->getNameDatasets($datasets_id);   
            $this->set('titulo_datasets', $titulo_datasets);

            if (is_null($titulo_datasets[0]['dictionaryID'])) {
                
            $this->set('column_name', $this->post('column_name'));
            $this->set('property_name', $this->post('property_name'));
            $this->set('alternative_label', $this->post('alternative_label'));
            $this->set('example', $this->post('example'));
            $this->set('datatype', $this->post('datatype'));
            $this->set('cardinality', $this->post('cardinality'));
            $this->set('format', $this->post('format'));
            $this->set('restrictions', $this->post('restrictions'));
            $this->set('description', $this->post('description'));
            $this->set('equivalent_property', $this->post('equivalent_property'));

            if ($this->post('cardinality')==='') {
                $cardinality = null;
            } else {
                $cardinality = $this->post('cardinality');
            }
            

            if (!empty($_POST)) {
                

                if (!$isSomeValueEmpty) {
                        $this->db = Loader::db();           
                        $sql = "INSERT INTO dsOpenDataDictionary (datasetsID,column_name, property_name, alternative_label, example, datatype, cardinality, format, restrictions, description, equivalent_property) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
                        $args = array(
                            $this->post('datasetsID'),
                            $this->post('column_name'),
                            $this->post('property_name'),
                            $this->post('alternative_label'),
                            $this->post('example'),
                            $this->post('datatype'),
                            $cardinality,
                            $this->post('format'),
                            $this->post('restrictions'),
                            $this->post('description'),
                            $this->post('equivalent_property')
                        );
                        $this->db->Execute($sql, $args);

                        $new_id = $this->db->Insert_ID();
                        $sql_datasets = "UPDATE dsOpenDataDataset ODD SET ODD.dictionaryID=? WHERE ODD.datasetsID =".$datasets_id;
                        $args_datasets = array(
                            $new_id
                        );
                        $this->db->Execute($sql_datasets, $args_datasets);

                            $this->set('column_name', "");
                            $this->set('property_name', "");
                            $this->set('alternative_label', "");
                            $this->set('example', "");
                            $this->set('datatype', "");
                            $this->set('cardinality', "");
                            $this->set('format', "");
                            $this->set('restrictions', "");
                            $this->set('description', "");
                            $this->set('equivalent_property', "");
                        $this->set('success', t('Diccionario ha sido agregado'));
                        unset($_POST);
                    
                } else {
                    $this->set('error', t('Error al añadir.  Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente'));
                }
            }

            } else {
                $this->set('error', t('Este Conjunto de Datos ya posee un diccionario'));
                $this->set('titulo_datasets', '');
            }
        }

        $this->set('datasetsID', $datasets_id);

        $this->set('button', array(
            'class' => 'btn btn-success',
            'label' => t('Agregar Diccionario')
        ));
    }

    public function update($dictionaryID=null)
    {
        $this->set('pageTitle',t("Modificar Diccionario de Datos"));

        if (is_numeric($dictionaryID) && !is_null($dictionaryID)) {
            $dsOpenData = new dsOpenData();
            $diccionario=$dsOpenData->getDictionary($dictionaryID);
            $titulo_datasets=$dsOpenData->getNameDatasets($diccionario[0]['datasetsID']);  
            
            $this->set('titulo_datasets', $titulo_datasets);  
            
            
            if (is_null($diccionario[0]['datasetsID'])) {
                $this->set('error', t('Código de Diccionario de Datos erróneo '.$datasets_id));
                $this->set('titulo_datasets',null);
            } else {
                
                $this->set('column_name', $diccionario[0]['column_name']);
                $this->set('property_name', $diccionario[0]['property_name']);
                $this->set('alternative_label', $diccionario[0]['alternative_label']);
                $this->set('example', $diccionario[0]['example']);
                $this->set('datatype', $diccionario[0]['datatype']);
                $this->set('cardinality', $diccionario[0]['cardinality']);
                $this->set('format', $diccionario[0]['format']);
                $this->set('restrictions', $diccionario[0]['restrictions']);
                $this->set('description', $diccionario[0]['description']);
                $this->set('equivalent_property', $diccionario[0]['equivalent_property']);
                
                $this->set('button', array(
                    'class' => 'btn btn-warning',
                    'label' => t('Editar Diccionario')
                ));

                if (!empty($_POST)) {
                    if (isset($_POST['column_name']) && $_POST['column_name'] !== "") {
                        $this->db = Loader::db();           
                        if ($this->post('cardinality')==='') {
                            $cardinalidad = null;
                        } else {
                            $cardinalidad = $this->post('cardinality');
                        }

                        $sql_update = "UPDATE dsOpenDataDictionary DIC SET column_name=?, property_name=?, alternative_label=? , example=?, 
                        datatype=?, cardinality=?, format=?, restrictions=?, description=?, equivalent_property=?
                        WHERE DIC.dictionaryID=".$dictionaryID;

                         $args_update = array(
                                $this->post('column_name'),
                                $this->post('property_name'),
                                $this->post('alternative_label'),
                                $this->post('example'),
                                $this->post('datatype'),
                                $cardinalidad,
                                $this->post('format'),
                                $this->post('restrictions'),
                                $this->post('description'),
                                $this->post('equivalent_property')
                            );
                        $this->db->Execute($sql_update, $args_update);
                        $diccionario=$dsOpenData->getDictionary($dictionaryID);

                        $this->set('column_name', $diccionario[0]['column_name']);
                        $this->set('property_name', $diccionario[0]['property_name']);
                        $this->set('alternative_label', $diccionario[0]['alternative_label']);
                        $this->set('example', $diccionario[0]['example']);
                        $this->set('datatype', $diccionario[0]['datatype']);
                        $this->set('cardinality', $diccionario[0]['cardinality']);
                        $this->set('format', $diccionario[0]['format']);
                        $this->set('restrictions', $diccionario[0]['restrictions']);
                        $this->set('description', $diccionario[0]['description']);
                        $this->set('equivalent_property', $diccionario[0]['equivalent_property']);
                        
                        $this->set('success', t('El Diccionario ha sido modificado'));
                        unset($_POST);

                    } else {
                        $this->set('error', t('Error al modificar. Tal vez el campo título estaba vacío?'));
                    }
                }
            }
        }
        $this->set('dictionaryID', $dictionaryID);
    }
}
