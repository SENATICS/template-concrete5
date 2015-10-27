<?php

namespace Application\Block\Boton;
use Loader;
use File;
use Page;

defined('C5_EXECUTE') or die("Access Denied.");

use \Concrete\Core\Block\BlockController;
use Less_Parser;
use Less_Tree_Rule;
use Core;
class Controller extends BlockController {
    
    protected $btInterfaceWidth = 950;
    protected $btInterfaceHeight = 400;
    protected $btTable = 'btBoton';
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btWrapperClass = 'ccm-ui';
    protected $btExportPageColumns = array('internalLinkCID');

    protected $btExportFileColumns = array('fID');


    /**
     * Used for localization. If we want to localize the name/description we have to include this
     */
    public function getBlockTypeDescription() {
        return t("Agrega un Boton al sitio web");
    }

    public function getBlockTypeName() {
        return t("Boton");
    }

    public function view() {
        $this->set('linkURL',$this->getLinkURL());
    }

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

    public function save($args) {

        switch (intval($args['linkType'])) {
            case 1:
                $args['externalLink'] = '';
                $args['fID'] = '';
                break;
            case 2:
                $args['internalLinkCID'] = 0;
                $args['fID'] = '';
                break;
            case 3:
                $args['externalLink'] = '';
                $args['internalLinkCID'] = 0;

                break;
            default:
                $args['externalLink'] = '';
                $args['internalLinkCID'] = 0;
                $args['fID'] = '';
                break;
        }   
		
        unset($args['linkType']); //this doesn't get saved to the database (it's only for UI usage)
        parent::save($args);
    }
    
    //ICON
    protected function getIconClasses()
    {
        $iconLessFile = DIR_BASE_CORE . '/css/build/vendor/font-awesome/variables.less';
        $icons = array();

        $l = new Less_Parser();
        $parser = $l->parseFile($iconLessFile, false, true);
        $rules = $parser->rules;

        foreach ($rules as $rule) {
            if ($rule instanceof Less_Tree_Rule) {
                if (strpos($rule->name, '@fa-var') === 0) {
                    $name = str_replace('@fa-var-', '', $rule->name);
                    $icons[] = $name;
                }
            }
        }
        asort($icons);
        return $icons;
    }
    
    public function edit()
    {
        $this->requireAsset('css', 'font-awesome');
        $classes = $this->getIconClasses();

        // let's clean them up
        $icons = array('' => t('Choose Icon'));
        $txt = Core::make('helper/text');
        foreach ($classes as $class) {
            $icons[$class] = $txt->unhandle($class);
        }
        $this->set('icons', $icons);
    }
    
    public function add()
    {
        $this->edit();
    }
    
    public function registerViewAssets()
    {
        $this->requireAsset('css', 'font-awesome');
    }
    
    //SUBIR ARCHIVO
    public function getJavaScriptStrings() {
        return array('file-required' => t('Debe seleccionar un archivo.')); 
    }
    
    public function getSearchableContent(){
        return $this->fileLinkText;
    }
    
    public function validate($args) {
        $e = Loader::helper('validation/error');
        // if ($args['fID'] < 1) {
        //     $e->add(t('Debe seleccionar un archivo.'));
        // }
        //if (trim($args['texto']) == '') {
        //    $e->add(t('Debe ingresar un texto para el Boton.'));
        //}
        return $e;
    }
    
    function getFileID() {return $this->fID;}
    
    function getFileObject() {
        return File::getByID($this->fID);
    }
	
}
