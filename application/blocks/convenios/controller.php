<?php
namespace Application\Block\Convenios;
use Loader;
use Page;

defined('C5_EXECUTE') or die("Access Denied.");

use \Concrete\Core\Block\BlockController;
use Less_Parser;
use Less_Tree_Rule;
use Core;
class Controller extends BlockController
{
    protected $btTable = 'btConvenios';
    protected $btExportTables = array('btConvenios', 'btConveniosEntries');
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
        return t("Permite listar los Convenios y Documentos");
    }

    public function getBlockTypeName()
    {
        return t("Convenios & Documentos");
    }
    
    public function view()
    {
        $this->set('bID', $this->bID);
        $db = Loader::db();
        $query = $db->GetAll("SELECT * FROM btConveniosEntries WHERE bID=? ORDER BY CONVERT(anho,UNSIGNED INTEGER) DESC, CONVERT(numero,UNSIGNED INTEGER) DESC", array($this->bID));
        $this->set('items', $query);
    }

    public function __construct($obj = null)
    {
        parent::__construct($obj);
        if (!$this->titulo) {
            $this->titulo = t("Item");
        }
    }
    
    public function add() {
          $this->edit();
    }

    public function registerViewAssets()
    {
        $this->requireAsset('javascript', 'jquery');
    }

    
    
    public function save($data)
    {   
        // Para guardar en la tabla cabecera, se pasa el valor por ARGS.
        $db = Loader::db();
        $db->execute('DELETE FROM btConveniosEntries WHERE bID = ?', array($this->bID));
        $count = count($data['orden']); 
        $i = 0;
        
        parent::save($args);
        while( $i < $count) {
            
            if ($data['fecha'][$i]=="") { 
                $query_save= 'INSERT INTO btConveniosEntries (bID, numero, anho, titulo, descripcion, institucion, enlace, orden) VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
                $datos_save = array(
                $this->bID,
                $data['numero'][$i],
                $data['anho'][$i],
                $data['titulo'][$i],
                $data['descripcion'][$i],
                $data['institucion'][$i],
                $data['enlace'][$i],
                intval($data['orden'][$i])
                );

            }else{

                $query_save = 'INSERT INTO btConveniosEntries (bID, numero, anho, titulo, descripcion, institucion, fecha, enlace, orden) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)';
                $datos_save = array(
                $this->bID,
                $data['numero'][$i],
                $data['anho'][$i],
                $data['titulo'][$i],
                $data['descripcion'][$i],
                $data['institucion'][$i],
                $data['fecha'][$i],
                $data['enlace'][$i],
                intval($data['orden'][$i])
                );
   
            }
                $db->execute($query_save,$datos_save);
                

            $i++;
        }

    }
    
    public function edit() {
        $db = Loader::db();
        $query = $db->GetAll("SELECT * FROM btConveniosEntries WHERE bID=? ORDER BY CONVERT(anho,UNSIGNED INTEGER) ASC, CONVERT(numero,UNSIGNED INTEGER) ASC"  , array($this->bID));
        $this->set('items', $query);
    }

    public function duplicate($newBID) {
        parent::duplicate($newBID);
        $db = Loader::db();
        $v = array($this->bID);
        $q = 'SELECT * FROM btConveniosEntries where bID = ?';
        $r = $db->query($q, $v);
        while($item = $r->FetchRow()) {
            $db->execute('INSERT INTO btConveniosEntries (bID, numero, anho, titulo, descripcion, institucion, fecha, enlace, orden) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
            array(
                $newBID,
                $item['numero'],
                $item['anho'],
                $item['titulo'],
                $item['descripcion'],
                $item['institucion'],
                $item['fecha'],
                $item['enlace'],
                intval($item['orden'])
            ));
        }
        
        //Elimina registros anteriores sin uso del bID anterior
        //$db->execute('DELETE FROM btConveniosEntries WHERE bID=?', array($this->bID));
    }
    

}
?>
