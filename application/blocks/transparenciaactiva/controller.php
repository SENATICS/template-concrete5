<?php
namespace Application\Block\TransparenciaActiva;
use File;
use Loader;
use \Concrete\Core\Block\BlockController;

class Controller extends BlockController
{
    protected $btTable = 'btTransparenciaActiva';
	protected $btExportTables = array('btTransparenciaActiva', 'btTransparenciaActivaEntries');
    protected $btInterfaceWidth = "1024";
    protected $btInterfaceHeight = "600";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;

    public $titulo = '';
    

    /**
     * Used for localization. If we want to localize the name/description we have to include this
     */
    public function getBlockTypeDescription()
    {
        return t("Administrador de Transparencia Activa permite insertar por cada bloque un conjunto de archivos del mismo tema, y asociarle un Autor del mismo como asi tambien indicar a que mes corresponde");
    }

    public function getBlockTypeName()
    {
        return t("Transparencia Activa");
    }

    public function __construct($obj = null)
    {
        parent::__construct($obj);
        if (!$this->titulo) {
            $this->titulo = t("Título");
        }
    }
    
    public function add() {
          $this->requireAsset('core/file-manager');
		  $this->requireAsset('redactor');
    }

    public function registerViewAssets()
    {
        $this->requireAsset('javascript', 'jquery');
    }

    public function view()
    {
        $this->set('bID', $this->bID);
        $this->set('titulo', $this->titulo);
        $this->set('mes', $this->mes);
        $this->set('resumen', $this->resumen);
        $this->set('autor', $this->autor);
        $db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btTransparenciaActivaEntries WHERE bID=? ORDER BY orden", array($this->bID));
		$this->set('items', $query);
    }
    
    public function save($data)
    {
        $args['mes'] = isset($data['mes']) ? intval($data['mes']) : 0;
		$args['titulo'] = isset($data['titulo']) ? trim($data['titulo']) : '';
        $args['resumen'] = isset($data['resumen']) ? trim($data['resumen']) : '';
        $args['autor'] = isset($data['autor']) ? trim($data['autor']) : '';
		$db = Loader::db();
		$db->execute('DELETE FROM btTransparenciaActivaEntries WHERE bID = ?', array($this->bID));
		$count = count($data['orden']); 
		$i = 0;
		parent::save($args);
		while( $i < $count) {
			
				$db->execute('INSERT INTO btTransparenciaActivaEntries (bID, orden, fID, texto_link) VALUES (?, ?, ?, ?)',
				array(
				$this->bID, intval($data['orden'][$i]), 
				intval($data['fID'][$i]), trim($data['texto_link'][$i])
				));
			$i++;
		}
    }
	
	public function edit() {
        $this->requireAsset('core/file-manager');
		$this->requireAsset('redactor');
		$db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btTransparenciaActivaEntries WHERE bID=?", array($this->bID));
		$this->set('titulo', $this->titulo);
        $this->set('mes', $this->mes);
        $this->set('resumen', $this->resumen);
        $this->set('autor', $this->autor);
        $this->set('items', $query);
	}

	public function duplicate($newBID) {
		parent::duplicate($newBID);
		$db = Loader::db();
		$v = array($this->bID);
		$q = 'SELECT * FROM btTransparenciaActivaEntries where bID = ?';
		$r = $db->query($q, $v);
		while($item = $r->FetchRow()) {
			$db->execute('INSERT INTO btTransparenciaActivaEntries (bID, orden, fID, texto_link) VALUES (?, ?, ?, ?)',
				array(
					$newBID,
					intval($item['orden']),
					intval($item['fID']),
					intval($item['texto_link'])
				)
			);
		}
		
		//Elimina registros anteriores sin uso del bID anterior
		$db->execute('DELETE FROM btTransparenciaActivaEntries WHERE bID=?', array($this->bID));
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
