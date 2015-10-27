<?php
//El documento controller.php contiene el código de lógica interna de nuestro bloque e información general del mismo

/**
 * importante al crear un bloque nuevo es especificar un namespace propio con la misma estructura de directorio
 * que sigue el mismo en el servidor.
 */ 
namespace Application\Block\listaritems;

use Concrete\Core\Block\BlockController;
use Loader;

class Controller extends BlockController
{
	//propiedades generales de nombre de tablas y dimensiones de interfaz
    protected $btTable = 'btListaItems';
    protected $btExportTables = array('btListaItems', 'btListaItemsEntries');
    protected $btInterfaceWidth = "1024";
   # protected $btWrapperClass = 'ccm-ui';
    protected $btInterfaceHeight = "600";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;
    protected $btIgnorePageThemeGridFrameworkContainer = true;

    public $nombre = '';
    public $descripcion = '';

	/**
     * Descripciones generales del bloque
     */
    public function getBlockTypeDescription()
    {
        return t("Despliega una lista de Imagenes Dinamicas!!");
    }

    public function getBlockTypeName()
    {
        return t("Galería de Fotos");
    }

    public function getSearchableContent()
    {
        $content = '';
        $db = Loader::db();
        $v = array($this->bID);
        $q = 'select * from btListaItemsEntries where bID = ?';
        $r = $db->query($q, $v);
        foreach($r as $row) {
           $content.= $row['nombre'].' ';
           $content.= $row['descripcion'].' ';
        }
        return $content;
    }

	/**
	 * Metodo al que se llama antes de cargar el formulario que se muestra al arrastrar un bloque
	 */
    public function add()
    {
        $this->requireAsset('core/file-manager');
		$this->requireAsset('redactor');
    }

	/**
	 * Metodo al que se llama antes de cargar el formulario de edición de un bloque
	 */
    public function edit()
    {
        $this->requireAsset('core/file-manager');
		$this->requireAsset('redactor');
        $db = Loader::db();
        $query = $db->GetAll('SELECT * from btListaItemsEntries WHERE bID = ? ORDER BY orden', array($this->bID));
        $this->set('rows', $query);
    }

	//se especifican los assets que se usaran en el view.php
    public function registerViewAssets()
    {
        $this->requireAsset('javascript', 'jquery');
    }

	//funcion que se llama cuando se invoca a view.php (la vista/apariencia del bloque)
    public function view()
    {
		//a traves del metodo set vamos pasando variables al view.php
		$this->set('cantpg', $this->cantItemsPag);
        $db = Loader::db();//cargar referencia a base de datos
        /**
         * El acceso a base de datos en concrete5 se realiza a través de 
         * ADODB http://adodb.sourceforge.net/
        */
        $query = $db->GetAll('SELECT * from btListaItemsEntries WHERE bID = ? ORDER BY orden DESC', array($this->bID));
        $this->set('rows', $query);
		
    }

    public function duplicate($newBID) {
        parent::duplicate($newBID);
        $db = Loader::db();
        $v = array($this->bID);
        $q = 'select * from btListaItemsEntries where bID = ?';
        $r = $db->query($q, $v);
        while ($row = $r->FetchRow()) {
            $db->execute('INSERT INTO btListaItemsEntries (bID, nombre,descripcion, orden, fID) values(?,?,?,?,?)',
                array(
                    $newBID,
                    htmlentities($row['nombre']),
                    htmlentities($row['descripcion']),
                    $row['orden'],
					$row['fID']
                )
            );
        }
    }

    public function validate($args) {
        $e = Loader::helper('validation/error');
        $count = count($args['orden']);
        $i = 0;
        while ($i < $count) {
           $b = $i +1; 
            if ($args['fID'][$i] < 1) {
                $e->add(t('Seleccione una imagen para la fila '.$b));
            }
            $i++;
        }
        return $e;
    }

    public function delete()
    {
        $db = Loader::db();
        $db->delete('btListaItemsEntries', array('bID' => $this->bID));
        parent::delete();
    }

	/**
	 * Método al que se llama cuando en el formulario de edición del bloque se selecciona
	 * la opción Guardar.
	 * El argumento $data es un arreglo en donde se contiene los valores cargados
	 * por el usuario en el formulario
	 */
    public function save($data)
    {
        $args['cantItemsPag'] = isset($data['cantItemsPag']) ? abs(intval($data['cantItemsPag'])) : 9;
        $db = Loader::db();
        //borramos los valores anteriores antes de volver a escribir la base de datos
        $db->execute('DELETE from btListaItemsEntries WHERE bID = ?', array($this->bID));
        
        //conteo de registros cargados en el formulario
        $count = count($data['orden']);
        $i = 0;
        parent::save($args);
        while ($i < $count) {
			//carga de datos en la base de datos
            $db->execute('INSERT INTO btListaItemsEntries (bID, nombre,descripcion, orden, fID) values(?,?,?,?,?)',
                array(
                    $this->bID,
                    htmlentities($data['nombre'][$i]),
                    htmlentities($data['descripcion'][$i]),
                    intval($data['orden'][$i]),
					$data['fID'][$i]
                )
            );
            $i++;
        }
    }

}
