<?php

namespace Application\Block\Mapas;
use Loader;
use Page;
use Core;
use Concrete\Core\Block\BlockController;

class Controller extends BlockController
{
    protected $btTable = 'btMapas';
    protected $btExportTables = array('btMapas', 'btMapasEntries');
    protected $btInterfaceWidth = "1050";
    protected $btInterfaceHeight = "500";
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;

    public $titulo_mapa = "";
    public $titulo = "";
    public $width = "";
    public $height = "";
    public $location = "";
    public $descripcion = "";
    public $latitud = "";
    public $longitud = "";
    public $scrollwheel = true;
    public $icono = 3;
    public $zoom = 14;

    /**
     * Used for localization. If we want to localize the name/description we have to include this.
     */
    public function getBlockTypeDescription()
    {
        return t("Introduzca una dirección y un mapa de Google de la ubicación Que se colocará en su página.");
    }

    public function getBlockTypeName()
    {
        return t("Mapas Senatics");
    }

    public function __construct($obj = null)
    {
        parent::__construct($obj);
        if (!$this->titulo_mapa) {
            $this->titulo_mapa = t("");
        }
        if (!$this->zoom) {
            $this->zoom = t("14");
        }
    }
    
    public function validate($args)
    {
        $error = Core::make('helper/validation/error');

        if ($args['latitud'] === '' || $args['longtitud'] === '') {
            $error->add(t('You must select a valid location.'));
        }

        if (!is_numeric($args['zoom'])) {
            $error->add(t('Please enter a zoom number from 0 to 21.'));
        }
        if ($args['zoom']==0) {
            $error->add(t('Por favor ingrese un Número entre 0 y 21 para el ZOOM.'));
        }

        if ($error->has()) {
            return $error;
        }
    }

    public function registerViewAssets($outputContent = '')
    {
        $this->requireAsset('javascript', 'jquery');
        $this->addFooterItem(
            '<script defer src="https://maps.googleapis.com/maps/api/js"></script>
            <script type="text/javascript" src="'.BASE_URL.'/application/blocks/mapas/markerclusterer.js"></script>
            '
        );
    }

    public function add() {
        $this->requireAsset('core/file-manager');
        $this->requireAsset('redactor');


    }

    public function view()
    {
        $this->set('unique_identifier', Core::make('helper/validation/identifier')->getString(18));
        /*$this->set('bID', $this->bID);
        $this->set('title', $this->title);
        $this->set('location', $this->location);
        $this->set('latitude', $this->latitude);
        $this->set('longitude', $this->longitude);
        $this->set('zoom', $this->zoom);
        $this->set('scrollwheel', $this->scrollwheel);*/

        $this->set('bID', $this->bID);
        $this->set('zoom', $this->zoom);
        $this->set('height', $this->height);
        $this->set('width', $this->width);
        $this->set('scrollwheel', $this->scrollwheel);
        $this->set('titulo_mapa', $this->titulo_mapa);
        
        $db = Loader::db();
        $query = $db->GetAll("SELECT * FROM btMapasEntries WHERE bID=? ORDER BY orden", array($this->bID));
        $this->set('items', $query);

        //$this->set('paragraph', LinkAbstractor::translateFrom($this->paragraph));

    }

    public function save($data)
    {
        /*$data += array(
           'titulo' => '',
           'location' => '',
           'zoom' => -1,
           'latitud' => 0,
           'longitud' => 0,
           'width' => null,
           'width' => null,
           'scrollwheel' => 0,
        );
        $args['titulo'] = trim($data['titulo']);
        $args['location'] = trim($data['location']);
        $args['zoom'] = (intval($data['zoom']) >= 0 && intval($data['zoom']) <= 21) ? intval($data['zoom']) : 14;
        $args['latitud'] = is_numeric($data['latitud']) ? $data['latitud'] : 0;
        $args['longitud'] = is_numeric($data['longitud']) ? $data['longitud'] : 0;
        $args['width'] = $data['width'];
        $args['height'] = $data['height'];
        $args['scrollwheel'] = $data['scrollwheel'] ? 1 : 0;
        parent::save($args);*/



        $args['titulo_mapa'] = isset($data['titulo_mapa']) ? addslashes(trim($data['titulo_mapa'])) : '';
        $args['zoom'] = isset($data['zoom']) ? addslashes(intval($data['zoom'])) : 14;
        $args['scrollwheel'] = isset($data['scrollwheel']) ? addslashes(trim($data['scrollwheel'])) : 0;
        $args['width'] = isset($data['width']) ? addslashes(trim($data['width'])) : '';
        $args['height'] = isset($data['height']) ? addslashes(trim($data['height'])) : '';
        $db = Loader::db();
        $db->execute('DELETE FROM btMapasEntries WHERE bID = ?', array($this->bID));
        
        $count = count($data['orden']); 
        $i = 0;
        parent::save($args);
        $idsNuevos = array();
        
        while( $i < $count) {
                $db->execute('INSERT INTO btMapasEntries (bID, titulo, descripcion, latitud, longitud, orden, icono) VALUES (?, ?, ?, ?, ?, ?, ?)',
                array(
                    $this->bID, 
                    htmlentities($data['titulo'][$i]), 
                    htmlentities($data['descripcion'][$i]),
                    addslashes(is_numeric($data['latitud'][$i]) ? $data['latitud'][$i] : 0), 
                    addslashes(is_numeric($data['longitud'][$i]) ? $data['longitud'][$i] : 0),
                    intval($data['orden'][$i]), 
                    intval($data['icono'][$i])
                ));
                $i++;
        }
    }

    public function edit() {
        $this->requireAsset('core/file-manager');
        $this->requireAsset('redactor');
        $this->set('titulo_mapa', $this->titulo_mapa);    
        $this->set('zoom', $this->zoom); 
        $this->set('height', $this->height);    
        $this->set('width', $this->width);    
        $this->set('scrollwheel', $this->scrollwheel);     

        $db = Loader::db();
        $query = $db->GetAll("SELECT * FROM btMapasEntries WHERE bID=?", array($this->bID));
        $this->set('items', $query);
    }

    public function duplicate($newBID) {
        parent::duplicate($newBID);
        $db = Loader::db();
        $v = array($this->bID);
        $q = 'SELECT * FROM btMapasEntries where bID = ?';
        $r = $db->query($q, $v);

        while($item = $r->FetchRow()) {
            $db->execute('INSERT INTO btMapasEntries (bID, titulo, descripcion, latitud, longitud, orden, icono) VALUES (?, ?, ?, ?, ?, ?, ?)',
                array(
                    $newBID,
                    htmlentities($data['titulo'][$i]), 
                    htmlentities($data['descripcion'][$i]),
                    addslashes(is_numeric($data['latitud'][$i]) ? $data['latitud'][$i] : 0), 
                    addslashes(is_numeric($data['longitud'][$i]) ? $data['longitud'][$i] : 0),
                    intval($data['orden'][$i]), 
                    intval($data['icono'][$i])
                )
            );
        }
        //Elimina registros anteriores sin uso del bID anterior
        $db->execute('DELETE FROM btMapasEntries WHERE bID=?', array($this->bID));
    }


}
