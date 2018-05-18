<?php
//El documento controller.php contiene el código de lógica interna de nuestro bloque e información general del mismo

/**
 * importante al crear un bloque nuevo es especificar un namespace propio con la misma estructura de directorio
 * que sigue el mismo en el servidor.
 */ 
namespace Application\Block\listartramites;

use Concrete\Core\Block\BlockController;
use Loader;

class Controller extends BlockController
{
	//propiedades generales de nombre de tablas y dimensiones de interfaz
    protected $btTable = 'btListarTramites';
    protected $btExportTables = array('btListarTramites', 'btListarTramitesEntries');
    protected $btInterfaceWidth = "1024";
   # protected $btWrapperClass = 'ccm-ui';
    protected $btInterfaceHeight = "750";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;
    protected $btIgnorePageThemeGridFrameworkContainer = true;

    public $nombre = '';
    public $sitio_web = '';
    public $descripcion = '';
    public $institucion = '';
    public $tipo_servicio = '';
    public $producto = '';
    public $direccion = '';
    public $correo = '';
    public $telefono = '';
    public $canal = '';
    public $area_servicio = '';
    public $audiencia = '';
    public $tramite = '';
    public $etiqueta = '';
    public $documentacion = '';
    public $tiempo_estimado = '';
    public $precio = '';
    public $forma_pago = '';
    public $atencion = '';
    public $correo_servicio = '';
    public $formulario = '';
    public $online = '';

	/**
     * Descripciones generales del bloque
     */
    public function getBlockTypeDescription()
    {
        return t("Despliega una lista de Trámites que la Institución Ofrece!!");
    }

    public function getBlockTypeName()
    {
        return t("Lista de Tramites");
    }

    public function getSearchableContent()
    {
        $content = '';
        $db = Loader::db();
        $v = array($this->bID);
        $q = 'select * from btListarTramitesEntries where bID = ?';
        $r = $db->query($q, $v);
        foreach($r as $row) {
           $content.= $row['nombre'].' ';
           $content.= $row['sitio_web'].' ';
           $content.= $row['descripcion'].' ';
           $content.= $row['institucion'].' ';
           $content.= $row['tipo_servicio'].' ';
           $content.= $row['producto'].' ';
           $content.= $row['direccion'].' ';
           $content.= $row['correo'].' ';
           $content.= $row['telefono'].' ';
           $content.= $row['canal'].' ';
           $content.= $row['area_servicio'].' ';
           $content.= $row['audiencia'].' ';
           $content.= $row['tramite'].' ';
           $content.= $row['etiqueta'].' ';
           $content.= $row['documentacion'].' ';
           $content.= $row['tiempo_estimado'].' ';
           $content.= $row['precio'].' ';
           $content.= $row['forma_pago'].' ';
           $content.= $row['atencion'].' ';
           $content.= $row['correo_servicio'].' ';
           $content.= $row['formulario'].' ';
           $content.= $row['online'].' ';


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
        $query = $db->GetAll('SELECT * from btListarTramitesEntries WHERE bID = ? ORDER BY orden', array($this->bID));
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
        $query = $db->GetAll('SELECT * from btListarTramitesEntries WHERE bID = ? ORDER BY orden DESC', array($this->bID));
        $this->set('rows', $query);
		
    }

    public function duplicate($newBID) {
        parent::duplicate($newBID);
        $db = Loader::db();
        $v = array($this->bID);
        $q = 'select * from btListarTramitesEntries where bID = ?';
        $r = $db->query($q, $v);
        while ($row = $r->FetchRow()) {
            $db->execute('INSERT INTO btListarTramitesEntries (bID, nombre,sitio_web, descripcion, institucion, tipo_servicio, producto, direccion, correo, telefono, canal, area_servicio, audiencia, tramite, etiqueta, documentacion, tiempo_estimado, precio, forma_pago, atencion, correo_servicio, formulario, online, orden, fID) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
                array(
                    $newBID,
                    $row['nombre'],
                    $row['sitio_web'],
                    $row['descripcion'],
                    $row['institucion'],
                    $row['tipo_servicio'],
                    $row['producto'],
                    $row['direccion'],
                    $row['correo'],
                    $row['telefono'],
                    $row['canal'],
                    $row['area_servicio'],
                    $row['audiencia'],
                    $row['tramite'],
                    $row['etiqueta'],
                    $row['documentacion'],
                    $row['tiempo_estimado'],
                    $row['precio'],
                    $row['forma_pago'],
                    $row['atencion'],
                    $row['correo_servicio'],
                    $row['formulario'],
                    $row['online'],
                    $row['orden'],
				    $row['fID']
                )
            );
        }
    }

    public function delete()
    {
        $db = Loader::db();
        $db->delete('btListarTramitesEntries', array('bID' => $this->bID));
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
        
        $db->execute('DELETE from btListarTramitesEntries WHERE bID = ?', array($this->bID));

        //conteo de registros cargados en el formulario
        $count = count($data['orden']);
        $i = 0;
        parent::save($args);
        while ($i < $count) {
			//carga de datos en la base de datos
            $db->execute('INSERT INTO btListarTramitesEntries (bID, nombre,sitio_web, descripcion, institucion, tipo_servicio, producto, direccion, correo, telefono, canal, area_servicio, audiencia, tramite, etiqueta, documentacion, tiempo_estimado, precio, forma_pago, atencion, correo_servicio, formulario, online, orden, fID) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
                array(
                    $this->bID,
                    $data['nombre'][$i],
                    $data['sitio_web'][$i],
                    htmlentities($data['descripcion'][$i]),
                    $data['institucion'][$i],
                    $data['tipo_servicio'][$i],
                    $data['producto'][$i],
                    $data['direccion'][$i],
                    $data['correo'][$i],
                    $data['telefono'][$i],
                    htmlentities($data['canal'][$i]),
                    $data['area_servicio'][$i],
                    $data['audiencia'][$i],
                    htmlentities($data['tramite'][$i]),
                    $data['etiqueta'][$i],
                    $data['documentacion'][$i],
                    $data['tiempo_estimado'][$i],
                    $data['precio'][$i],
                    $data['forma_pago'][$i],
                    $data['atencion'][$i],
                    $data['correo_servicio'][$i],
                    htmlentities($data['formulario'][$i]),
                    $data['online'][$i],
                    intval($data['orden'][$i]),
					$data['fID'][$i]    
                )
            );
            $i++;
        }
    }

}
