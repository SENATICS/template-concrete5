<?php
namespace Application\Block\LeyTransparencia;
use Loader;
use File;
use Page;

defined('C5_EXECUTE') or die("Access Denied.");

use \Concrete\Core\Block\BlockController;
use Less_Parser;
use Less_Tree_Rule;
use Core;
class Controller extends BlockController
{
    protected $btTable = 'btLeyTransparencia';
	protected $btExportTables = array('btLeyTransparencia', 'btLeyTransparenciaEntries');
    protected $btInterfaceWidth = "600";
    protected $btInterfaceHeight = "500";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;

    protected $btExportPageColumns = array('internalLinkCID');

    public $titulo = '';
    

    /**
     * Used for localization. If we want to localize the name/description we have to include this
     */
    public function getBlockTypeDescription()
    {
        return t("Administrador de la Ley Transparencia 5189/14");
    }

    public function getBlockTypeName()
    {
        return t("Ley 5189/14");
    }
    
    public function view()
    {
        $this->set('bID', $this->bID);
        $db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btLeyTransparenciaEntries WHERE bID=? ORDER BY orden", array($this->bID));
		$this->set('items', $query);
		$this->set('linkURL',$this->getLinkURL());
    }

    function getInternalLinkCID() {return $this->internalLinkCID;}

    function getLinkURL() {
       if (!empty($this->internalLinkCID)) {
            $linkToC = Page::getByID($this->internalLinkCID);
            return (empty($linkToC) || $linkToC->error) ? '' : Loader::helper('navigation')->getLinkToCollection($linkToC);
        } else {
            return 'none';
        }
    }

    public function __construct($obj = null)
    {
        parent::__construct($obj);
        if (!$this->titulo) {
            $this->titulo = t("Item");
        }
    }
    
    public function add() {
          $this->requireAsset('core/file-manager');
		  $this->requireAsset('redactor');
		  $this->edit();
    }

    public function registerViewAssets()
    {
        $this->requireAsset('javascript', 'jquery');
    }

    
    
    public function save($data)
    {	
		// Para guardar en la tabla cabecera, se pasa el valor por ARGS.
    	$args['internalLinkCID'] = isset($data['internalLinkCID']) ? abs(intval($data['internalLinkCID'])) : 0;
		$db = Loader::db();
		$db->execute('DELETE FROM btLeyTransparenciaEntries WHERE bID = ?', array($this->bID));
		$count = count($data['orden']); 
		$i = 0;
		
		parent::save($args);
		while( $i < $count) {
			
				$db->execute('INSERT INTO btLeyTransparenciaEntries (bID, nombre, orden, fID) VALUES (?, ?, ?, ?)',
				array(
				$this->bID,  htmlentities($data['nombre'][$i]), 
				intval($data['orden'][$i]), intval($data['fID'][$i])
				));
			$i++;
		}

    }
	
	public function edit() {
        $this->requireAsset('core/file-manager');
		$this->requireAsset('redactor');
		$db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btLeyTransparenciaEntries WHERE bID=?", array($this->bID));
        $this->set('items', $query);
	}

	public function duplicate($newBID) {
		parent::duplicate($newBID);
		$db = Loader::db();
		$v = array($this->bID);
		$q = 'SELECT * FROM btLeyTransparenciaEntries where bID = ?';
		$r = $db->query($q, $v);
		while($item = $r->FetchRow()) {
			$db->execute('INSERT INTO btLeyTransparenciaEntries (bID, nombre, orden, fID) VALUES (?, ?, ?, ?)',
				array(
					$newBID,
					$item['nombre'],
					intval($item['orden']),
					intval($item['fID'])
				)
			);
		}
		
		//Elimina registros anteriores sin uso del bID anterior
		$db->execute('DELETE FROM btLeyTransparenciaEntries WHERE bID=?', array($this->bID));
	}
	
	function getFileObject($id) {
		if($id>0) {
			return File::getByID($id);
		}
		else {
			return null;
		}
	}
}
?>
