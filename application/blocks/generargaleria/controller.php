<?php
//El documento controller.php contiene el código de lógica interna de nuestro bloque e información general del mismo

/**
 * importante al crear un bloque nuevo es especificar un namespace propio con la misma estructura de directorio
 * que sigue el mismo en el servidor.
 */ 
namespace Application\Block\GenerarGaleria;

use Concrete\Core\Block\BlockController;
use Loader;

class Controller extends BlockController
{
	//propiedades generales de nombre de tablas y dimensiones de interfaz
    protected $btTable = 'btGaleria';
    protected $btExportTables = array('btGaleria', 'btGaleriaEntries');
    protected $btInterfaceWidth = "600";
   # protected $btWrapperClass = 'ccm-ui';
    protected $btInterfaceHeight = "500";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;
    protected $btIgnorePageThemeGridFrameworkContainer = true;

    public $titulo = '';

	/**
     * Descripciones generales del bloque
     */
    public function getBlockTypeDescription()
    {
        return t("Despliega tus imagenes en una creativa Galeria de Imagenes!!");
    }

    public function getBlockTypeName()
    {
        return t("Galeria");
    }

    public function getSearchableContent()
    {
        $content = '';
        $db = Loader::db();
        $v = array($this->bID);
        $q = 'select * from btGaleriaEntries where bID = ?';
        $r = $db->query($q, $v);
        foreach($r as $row) {
           $content.= $row['titulo'].' ';
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
        $query = $db->GetAll('SELECT * from btGaleriaEntries WHERE bID = ? ORDER BY orden', array($this->bID));
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
        $query = $db->GetAll('SELECT * from btGaleriaEntries WHERE bID = ? ORDER BY orden DESC', array($this->bID));
        $this->set('rows', $query);
		
    }

    public function duplicate($newBID) {
        parent::duplicate($newBID);
        $db = Loader::db();
        $v = array($this->bID);
        $q = 'select * from btGaleriaEntries where bID = ?';
        $r = $db->query($q, $v);
        while ($row = $r->FetchRow()) {
            $db->execute('INSERT INTO btGaleriaEntries (bID, titulo, orden, fID) values(?,?,?,?)',
                array(
                    $newBID,
                    $row['titulo'],
                    $row['orden'],
					$row['fID']
                )
            );
        }
    }

    public function delete()
    {
        $db = Loader::db();
        $db->delete('btGaleriaEntries', array('bID' => $this->bID));
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
        $db->execute('DELETE from btGaleriaEntries WHERE bID = ?', array($this->bID));
        
        //conteo de registros cargados en el formulario
        $count = count($data['orden']);
        $i = 0;
        parent::save($args);
        while ($i < $count) {
			//carga de datos en la base de datos
            $db->execute('INSERT INTO btGaleriaEntries (bID, titulo, orden, fID) values(?,?,?,?)',
                array(
                    $this->bID,
                    $data['titulo'][$i],
                    intval($data['orden'][$i]),
					$data['fID'][$i]
                )
            );
            $i++;
        }
    }

}
