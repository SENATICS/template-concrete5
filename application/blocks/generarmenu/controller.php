<?php
namespace Application\Block\GenerarMenu;
use Loader;
use \Concrete\Core\Block\BlockController;

class Controller extends BlockController
{
    protected $btTable = 'btMenu';
	protected $btExportTables = array('btMenu', 'btMenuEntries');
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
        return t("Administrador de la barra Menú");
    }

    public function getBlockTypeName()
    {
        return t("Menú");
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
    }

    public function view()
    {
        $this->set('bID', $this->bID);
        $this->set('titulo', $this->titulo);
        $this->set('color', $this->color);
        $this->set('colorTexto', $this->colorTexto);
        $db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btMenuEntries WHERE bID=? ORDER BY orden", array($this->bID));
		$this->set('items', $query);
    }

    public function save($data)
    {

        $args['titulo'] = isset($data['titulo']) ? trim($data['titulo']) : 'Sin Nombre';
        $args['color'] = isset($data['color']) ? trim($data['color']) : '';
        $args['colorTexto'] = isset($data['color']) ? intval($data['colorTexto']) : 0;
		
		$db = Loader::db();
		$db->execute('DELETE FROM btMenuEntries WHERE bID = ?', array($this->bID));
		
		$count = count($data['orden']); 
		$i = 0;
		parent::save($args);
		$idsNuevos = array();
		
		while( $i < $count) {
			if (intval($data['orden'][$i])==0) {
				$db->execute('INSERT INTO btMenuEntries (bID, nombre, orden, idPadre, subMenu, link, target) VALUES (?, ?, ?, ?, ?, ?, ?)',
				array(
				$this->bID, $data['nombre'][$i], 
				intval($data['orden'][$i]), intval($data['idPadre'][$i]), 0,
				trim($data['link'][$i])!='' ? trim($data['link'][$i]) : '#',
				intval($data['target'][$i])
				));

			}else{
				$db->execute('INSERT INTO btMenuEntries (bID, nombre, orden, idPadre, subMenu, link, target) VALUES (?, ?, ?, ?, ?, ?, ?)',
				array(
				$this->bID, $data['nombre'][$i], 
				intval($data['orden'][$i]), intval($data['idPadre'][$i]),  intval($data['subMenu'][$i]),
				trim($data['link'][$i])!='' ? trim($data['link'][$i]) : '#',
				intval($data['target'][$i])
				));

			}
			



			array_push($idsNuevos, $db->Insert_ID());
			$i++;
		}
		$i = 0;
		
		while( $i < $count ) {
			$idP = $db->GetOne('SELECT id from btMenuEntries WHERE id=?', array(intval($data['idPadre'][$i])));
			$db->execute('UPDATE btMenuEntries set idPadre=? WHERE id=?', array($idP, $idsNuevos[$i]));
			$i++;
		}
		
    }
	
	public function edit() {
	        $this->set('color', $this->color);
	        $this->set('colorTexto', $this->colorTexto);
		$db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btMenuEntries WHERE bID=?", array($this->bID));
		$this->set('items', $query);
	}

	public function duplicate($newBID) {
		parent::duplicate($newBID);
		$db = Loader::db();
		$v = array($this->bID);
		$q = 'SELECT * FROM btMenuEntries where bID = ?';
		$r = $db->query($q, $v);
		while($item = $r->FetchRow()) {
			$db->execute('INSERT INTO btMenuEntries (bID, nombre, orden, idPadre, subMenu, link, target) VALUES (?, ?, ?, ?, ?, ?, ?)',
				array(
					$newBID,
					$item['nombre'],
					intval($item['orden']),
					intval($item['idPadre']),
					intval($item['subMenu']),
					intval($item['target']),
					$item['link']
				)
			);
		}
		
		//Elimina registros anteriores sin uso del bID anterior
		$db->execute('DELETE FROM btMenuEntries WHERE bID=?', array($this->bID));
	}
}
?>
