<?php
namespace Application\Block\GenerarMapa;
use Loader;
use \Concrete\Core\Block\BlockController;

class Controller extends BlockController
{
    protected $btTable = 'btMapa';
	protected $btExportTables = array('btMapa', 'btMapaEntries');
    protected $btInterfaceWidth = "600";
    protected $btInterfaceHeight = "500";
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
        return t("Administrador de los mapas");
    }

    public function getBlockTypeName()
    {
        return t("Mapas");
    }

    public function __construct($obj = null)
    {
        parent::__construct($obj);
        if (!$this->titulo) {
            $this->titulo = t("Item");
        }
    }

    public function registerViewAssets()
    {
        $this->requireAsset('javascript', 'jquery');
        $this->addFooterItem('<script type="text/javascript" src="//maps.google.com/maps/api/js?sensor=false"></script>');
    }

    public function view()
    {
        $this->set('bID', $this->bID);
        $this->set('titulo', $this->titulo);
        $this->set('zoom', $this->zoom);
        $db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btMapaEntries WHERE bID=? ORDER BY orden", array($this->bID));
		$this->set('items', $query);
    }

    public function save($data)
    {
        $args['titulo'] = isset($data['titulo']) ? trim($data['titulo']) : '';
		$args['zoom'] = isset($data['zoom']) ? intval($data['zoom']) : 5;
		$db = Loader::db();
		$db->execute('DELETE FROM btMapaEntries WHERE bID = ?', array($this->bID));
		
		$count = count($data['orden']); 
		$i = 0;
		parent::save($args);
		$idsNuevos = array();
		
		while( $i < $count) {
				$db->execute('INSERT INTO btMapaEntries (bID, nombre, cuerpo, x, y, orden, icono) VALUES (?, ?, ?, ?, ?, ?, ?)',
				array(
				$this->bID, $data['nombre'][$i], 
				$data['cuerpo'][$i], $data['x'][$i], $data['y'][$i],
				intval($data['orden'][$i]), intval($data['icono'][$i])
				));
                $i++;
        }
    }
	
	public function add() {
		$this->requireAsset('redactor');
	}
	
	public function edit() {
        $this->requireAsset('redactor');
        $this->set('titulo', $this->titulo);    
        $this->set('zoom', $this->zoom);    
		$db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btMapaEntries WHERE bID=?", array($this->bID));
		$this->set('items', $query);
	}

	public function duplicate($newBID) {
		parent::duplicate($newBID);
		$db = Loader::db();
		$v = array($this->bID);
		$q = 'SELECT * FROM btMapaEntries where bID = ?';
		$r = $db->query($q, $v);
		while($item = $r->FetchRow()) {
			$db->execute('INSERT INTO btMapaEntries (bID, nombre, cuerpo, x, y, orden, icono) VALUES (?, ?, ?, ?, ?, ?, ?)',
				array(
					$newBID,
					$item['nombre'],
					$item['cuerpo'],
					$item['x'],
					$item['y'],
					intval($item['orden']),
                    intval($item['icono']),
				)
			);
		}
		//Elimina registros anteriores sin uso del bID anterior
		$db->execute('DELETE FROM btMapaEntries WHERE bID=?', array($this->bID));
	}
}
