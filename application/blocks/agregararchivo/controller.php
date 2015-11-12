<?php
namespace Application\Block\Agregararchivo;
use Loader;
use File;
use \Concrete\Core\Block\BlockController;
class Controller extends BlockController {
	protected $btInterfaceWidth = 300;
	protected $btCacheBlockRecord = true;
	protected $btCacheBlockOutput = true;
	protected $btCacheBlockOutputOnPost = true;
	protected $btCacheBlockOutputForRegisteredUsers = true;
	protected $btInterfaceHeight = 250;
	protected $btTable = 'btContenidoArchivo';
	
	protected $btExportFileColumns = array('fID');
	
	/** 
	 * Used for localization. If we want to localize the name/description we have to include this
	 */
	public function getBlockTypeDescription() {
		return t("Enlace a los archivos almacenados de la biblioteca");
	}
	
	public function getBlockTypeName() {
		return t("Archivo");
	}

	public function getJavaScriptStrings() {
		return array('file-required' => t('Debe seleccionar un archivo.'));	
	}
	
	public function getSearchableContent(){
		return $this->fileLinkText;
	}
	
	public function validate($args) {
		$e = Loader::helper('validation/error');
		if ($args['fID'] < 1) {
			$e->add(t('YDebe seleccionar un archivo.'));
		}
		if (trim($args['fileLinkText']) == '') {
			$e->add(t('Debe dar un text para el enlace a su archivo.'));
		}
		return $e;
	}
	
	function getFileID() {return $this->fID;}
	
	function getFileObject() {
		return File::getByID($this->fID);
	}
	
	function getLinkText() {
		if ($this->fileLinkText) {
			return $this->fileLinkText;
		} else {
			$f = $this->getFileObject();
			return $f->getTitle();
		}
	}
	
	function getTitle() {
		if ($this->fileTitle) {
			return $this->fileTitle;
		} else {
			$f = $this->getFileObject();
			return $f->getTitle();
		}
	}
    
    function getDescription() {
		if ($this->fileDescription) {
			return $this->fileDescription;
		}
	}
    
      function getIcon() {
		if ($this->fileIcon) {
			return $this->fileIcon;
		}
	}
    
    public function save($data)
    {
        $args['fID'] = isset($data['fID']) ? trim($data['fID']) : '';
        $args['fileTitle'] = isset($data['fileTitle']) ? trim($data['fileTitle']) : '';
        $args['fileDescription'] = isset($data['fileDescription']) ? trim($data['fileDescription']) : '';
        $args['fileLinkText'] = isset($data['fileLinkText']) ? trim($data['fileLinkText']) : '';
        $args['fileIcon'] = isset($data['fileIcon']) ? trim($data['fileIcon']) : '';
        parent::save($args);
    }
    
    
}
?>
