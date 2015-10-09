<?php
//El documento controller.php contiene el código de lógica interna de nuestro bloque e información general del mismo

/**
 * importante al crear un bloque nuevo es especificar un namespace propio con la misma estructura de directorio
 * que sigue el mismo en el servidor.
 */ 
namespace Application\Block\GenerarCalendario;
use Loader;
use \Concrete\Core\Block\BlockController;

class Controller extends BlockController
{
	//propiedades generales de nombre de tablas y dimensiones de interfaz
    protected $btTable = 'btCalendario';
	protected $btExportTables = array('btCalendario', 'btCalendarioEntries');
    protected $btInterfaceWidth = "1024";
    protected $btInterfaceHeight = "750";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;

    public $titulo = '';
    

	/**
     * Descripciones generales del bloque
     */
    public function getBlockTypeDescription()
    {
        return t("Administrador del Calendario");
    }

    public function getBlockTypeName()
    {
        return t("Calendario");
    }

    public function __construct($obj = null)
    {
        parent::__construct($obj);
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
        $this->set('bID', $this->bID);
        $db = Loader::db();//cargar referencia a base de datos
        /**
         * El acceso a base de datos en concrete5 se realiza a través de 
         * ADODB http://adodb.sourceforge.net/
        */
		$query = $db->GetAll("SELECT * FROM btCalendarioEntries WHERE bID=?", array($this->bID));
		$this->set('items', $query);
    }

	/**
	 * Método al que se llama cuando en el formulario de edición del bloque se selecciona
	 * la opción Guardar.
	 * El argumento $data es un arreglo en donde se contiene los valores cargados
	 * por el usuario en el formulario
	 */
    public function save($data)
    {	
		$db = Loader::db();
		//borramos los valores anteriores antes de volver a escribir la base de datos
		$db->execute('DELETE FROM btCalendarioEntries WHERE bID = ?', array($this->bID));
		
		//conteo de registros cargados en el formulario
		$count = count($data['titulo']); 
		$i = 0;
		parent::save($args);
		
		while( $i < $count) {
				//carga de datos en la base de datos
				$db->execute('INSERT INTO btCalendarioEntries (bID, titulo, descripcion, horaInicio, horaFin, fecha, lugar) VALUES (?, ?, ?, ?, ?, ?, ?)',
				array(
				$this->bID, $data['titulo'][$i], $data['descripcion'][$i], 
				substr($data['horaInicio'][$i], 0, 5), substr($data['horaFin'][$i], 0, 5),  
				str_replace("-", "", $data['fecha'][$i]), $data['lugar'][$i]
				));
			$i++;
		}
    }
	
	/**
	 * Metodo al que se llama antes de cargar el formulario de edición de un bloque
	 */
	public function edit() {
		$db = Loader::db();
		$query = $db->GetAll("SELECT * FROM btCalendarioEntries WHERE bID=?", array($this->bID));
		$this->set('items', $query);
	}

	/**
	 * Método al que se invoca antes que al método save(), realiza la duplicación
	 * del bloque antes de que se guarde una nueva versión del mismo, así esta
	 * nueva versión se asocia a la nueva versión de la página que se está
	 * creando.
	 * En este caso, actualizamos los items del menú con el nuevo bID que
	 * se va a generar.
	 */ 
	public function duplicate($newBID) {
		parent::duplicate($newBID);
		$db = Loader::db();
		$v = array($this->bID);
		$q = 'SELECT * FROM btCalendarioEntries where bID = ?';
		$r = $db->query($q, $v);
		while($item = $r->FetchRow()) {
			$db->execute('INSERT INTO btCalendarioEntries (bID, titulo, descripcion, horaInicio, horaFin, fecha, lugar) VALUES (?, ?, ?, ?, ?, ?, ?)',
				array(
					$newBID,
					$item['titulo'],
					$item['descripcion'],
					$item['horaInicio'],
					$item['horaFin'],
					$item['fecha'],
					$item['lugar']
				)
			);
		}
		
		//Elimina registros anteriores sin uso del bID anterior
		$db->execute('DELETE FROM btCalendarioEntries WHERE bID=?', array($this->bID));
	}
}
