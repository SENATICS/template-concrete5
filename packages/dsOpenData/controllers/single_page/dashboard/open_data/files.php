<?php 
namespace Concrete\Package\Dsopendata\Controller\SinglePage\Dashboard\OpenData;
use \Concrete\Core\Page\Controller\DashboardPageController;
use dsOpenData\dsOpenData;
use Loader;
use File;
use Page;

defined('C5_EXECUTE') or die("Access Denied.");

class Files extends DashboardPageController
{   protected $btExportPageColumns = array('internalLinkCID');
    protected $btExportFileColumns = array('fID');

    function getExternalLink() {return $this->externalLink;}
    function getInternalLinkCID() {return $this->internalLinkCID;}
    function getLinkURL() {
        if (!empty($this->externalLink)) {
            return $this->externalLink;
        } else if (!empty($this->internalLinkCID)) {
                    $linkToC = Page::getByID($this->internalLinkCID);
                    return (empty($linkToC) || $linkToC->error) ? '' : Loader::helper('navigation')->getLinkToCollection($linkToC);
                } else if (!empty($this->fID)) {
                            return (trim($args['fID']));
                        } else{
                            return 'none';
                        }
    }

    function getTarget() {return $this->target;}

    public function getSearchableContent(){
        return $this->fileLinkText;
    }

    function getFileID() {return $this->fID;}
    
    function getFileObject() {
        return File::getByID($this->fID);
    }

    public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('estilo.css', 'dsOpenData'));
    }





    public function view($resources_id=null)
    {   
         $this->set('linkURL',$this->getLinkURL());
        $this->requireAsset('javascript', 'jquery');

        $this->set('pageTitle',t("Agregar Archivo"));

        
        if (is_numeric($resources_id) && !is_null($resources_id)) {
           
            $validateArray = $_POST;

            $dsOpenData = new dsOpenData();

            $titulo_recurso=$dsOpenData->getNameResource($resources_id);   
            $list_format=$dsOpenData->getFormat();    

            if (empty($titulo_recurso[0]['resourceID'])) {
                $this->set('titulo_recurso', '');
            } else {
                $this->set('titulo_recurso', $titulo_recurso);
            }   

            $this->set('formatos', $list_format);
            $this->set('externalLink', $this->post('externalLink'));
            $this->set('linkType',  $this->post('linkType'));
            $this->set('internalLinkCID',  $this->post('internalLinkCID'));
            $this->set('fID',  $this->post('fID'));
            
            $this->set('format', $this->post('format'));
            $this->set('level', $this->post('level'));

            if (!empty($_POST)) {

                $isSomeValueEmpty = false;
                $campos_vacios='';

                switch (intval($validateArray['linkType'])) {
                    case 1:
                        $validateArray['externalLink'] = '';
                        $validateArray['fID'] = 0;
                        if (isset($_POST['internalLinkCID']) && $_POST['internalLinkCID'] == 0) {
                            $isSomeValueEmpty = true;
                            $campos_vacios .= ' URL Archivo,';
                        }
                        break;
                    case 2:
                        $validateArray['internalLinkCID'] = 0;
                        $validateArray['fID'] = 0;
                        if (isset($_POST['externalLink']) && $_POST['externalLink'] == "") {
                            $isSomeValueEmpty = true;
                            $campos_vacios .= ' URL Archivo external,';
                        }
                        break;
                    case 3:
                        $validateArray['externalLink'] = '';
                        $validateArray['internalLinkCID'] = 0;
                        if (isset($_POST['fID']) && $_POST['fID'] == 0) {
                            $isSomeValueEmpty = true;
                            $campos_vacios .= ' URL Archivo,';
                        }
                        break;
                    default:
                        $validateArray['externalLink'] = '';
                        $validateArray['internalLinkCID'] = 0;
                        $validateArray['fID'] = 0;
                        if (isset($_POST['linkType']) && $_POST['linkType'] == 0) {
                            $isSomeValueEmpty = true;
                            $campos_vacios .= ' URL Archivo,';
                        }
                        break;
                }
                 if (isset($_POST['format']) && ($_POST['format'] == "" || $_POST['format'] == 0)) {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' Formato,';
                }

                if (!$isSomeValueEmpty) {

                        
                        $this->db = Loader::db();           
                        $sql = "INSERT INTO dsOpenDataFile (resourceID,formatID,externalLink,internalLinkCID,target,level,fID) VALUES (?,?,?,?,?,?,?)";
                        $args = array(
                            $resources_id,
                            $this->post('format'),
                            $validateArray['externalLink'],
                            $validateArray['internalLinkCID'],
                            $this->post('target'),
                            $this->post('level'),
                            $validateArray['fID']
                        );
                        $this->db->Execute($sql, $args);
                        
                        $this->set('externalLink', "");
                        $this->set('linkType', 0);
                        $this->set('internalLinkCID', "");
                        $this->set('fID', "");
                        $this->set('target', 0);
                        $this->set('format', "");
                        $this->set('level', "");
                        $this->set('success', t('Archivo ha sido agregado'));
                        unset($_POST);
                    
                } else {
                    $this->set('error', t('Error al añadir. Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente'));
                }
            }
        }
        
        $this->set('resourceID', $resources_id);

        $this->set('button', array(
            'class' => 'btn btn-success',
            'label' => t('Agregar Archivo')
        ));
    }

    public function update($file_id=null)
    {
        $this->set('pageTitle',t("Gestionar Archivos"));

        if (is_numeric($file_id) && !is_null($file_id)) {
            $this->db = Loader::db();
            $sql_resource = "SELECT * FROM dsOpenDataFile WHERE fileID=" . $file_id;

            $resource = $this->db->GetRow($sql_resource);
            
                $dsOpenData = new dsOpenData();
                $titulo_recurso=$dsOpenData->getNameFile($file_id);  
                $this->set('titulo_recurso', $titulo_recurso);  

                if (empty($titulo_recurso[0]['datasetsID'])) {
                    $this->set('titulo_recurso', '');
                } else {
                    $this->set('titulo_recurso', $titulo_recurso);
                } 

                $list_format=$dsOpenData->getFormat();       
                $this->set('formatos', $list_format);
                $this->set('externalLink',  $resource['externalLink']);
                $this->set('linkType',  $resource['linkType']);
                $this->set('internalLinkCID',  $resource['internalLinkCID']);
                $this->set('fID',  $resource['fID']);
                $this->set('resourceID', $resource['resourceID']);
                $this->set('target', $resource['target']);
               
                $this->set('format', $resource['formatID']);
                $this->set('level', $resource['level']);
                
            $this->set('button', array(
                'class' => 'btn btn-warning',
                'label' => t('Editar Archivo')
            ));
            
            
            if (!empty($_POST)) {

                $validateArray = $_POST;
                $isSomeValueEmpty = false;
                $campos_vacios='';
                 switch (intval($validateArray['linkType'])) {
                    case 1:
                        $validateArray['externalLink'] = '';
                        $validateArray['fID'] = 0;
                        if (isset($_POST['internalLinkCID']) && $_POST['internalLinkCID'] == 0) {
                            $isSomeValueEmpty = true;
                            $campos_vacios .= ' URL Archivo,';
                        }
                        break;
                    case 2:
                        $validateArray['internalLinkCID'] = 0;
                        $validateArray['fID'] = 0;
                        if (isset($_POST['externalLink']) && $_POST['externalLink'] == "") {
                            $isSomeValueEmpty = true;
                            $campos_vacios .= ' URL Archivo external,';
                        }
                        break;
                    case 3:
                        $validateArray['externalLink'] = '';
                        $validateArray['internalLinkCID'] = 0;
                        if (isset($_POST['fID']) && $_POST['fID'] == 0) {
                            $isSomeValueEmpty = true;
                            $campos_vacios .= ' URL Archivo,';
                        }
                        break;
                    default:
                        $validateArray['externalLink'] = '';
                        $validateArray['internalLinkCID'] = 0;
                        $validateArray['fID'] = 0;
                        if (isset($_POST['linkType']) && $_POST['linkType'] == 0) {
                            $isSomeValueEmpty = true;
                            $campos_vacios .= ' URL Archivo,';
                        }
                        break;
                }
                 if (isset($_POST['format']) && ($_POST['format'] == "" || $_POST['format'] == 0)) {
                    $isSomeValueEmpty = true;
                    $campos_vacios .= ' Formato,';
                }
                if (!$isSomeValueEmpty) {
                    $sql_update = "UPDATE dsOpenDataFile SET resourceID=?, formatID=?, externalLink=? , internalLinkCID=?,target=?,level=?, fID=? WHERE fileID=" . $file_id;

                    $args_update = array(
                            $resource['resourceID'],
                            $this->post('format'),
                            $validateArray['externalLink'],
                            $validateArray['internalLinkCID'],
                            $this->post('target'),
                            $this->post('level'),
                            $validateArray['fID']
                        );
                    $this->db->Execute($sql_update, $args_update);
                    $resource = $this->db->GetRow($sql_resource);

                    $this->set('resourceID', $resource['resourceID']);                    
                    $this->set('externalLink',  $resource['externalLink']);
                    $this->set('linkType',  $resource['linkType']);
                    $this->set('internalLinkCID',  $resource['internalLinkCID']);
                    $this->set('fID',  $resource['fID']);
                    $this->set('target', $resource['target']);
                    $this->set('format',  $resource['formatID']);
                    $this->set('level',  $resource['level']);

                    $this->set('success', t('El Archivo ha sido modificado'));
                    unset($_POST);

                } else {
                    $this->set('error', t('Error al editar. Faltan datos para: <b>'.$campos_vacios.'</b> inténtelo nuevamente'));
                }
            }
        }
    }
}
