<?php 
namespace Concrete\Package\Dsopendata\Block\OpenData;
use Concrete\Core\Block\BlockController;
use Loader;
use Config;
use DsOpenData;

defined('C5_EXECUTE') or die(_("Access Denied."));

class Controller extends BlockController
{

    protected $btName = "Datos Abiertos";
    protected $btDescription = "";
    public $btTable = 'btOpenData';

    public function on_before_render()
    {
        $this->addFooterItem(Loader::helper('html')->css('estilo.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->css('font-awesome.min.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->css('jquery.dataTables.min.css', 'dsOpenData'));
        $this->addFooterItem(Loader::helper('html')->javascript('jquery.dataTables.min.js', 'dsOpenData'));


        
    }

    public function getBlockTypeDescription()
    {
        return $this->btDescription;
    }

    public function getBlockTypeName()
    {
        return t("Datos Abiertos");
    }

    public function __construct($b = null)
    {
        parent::__construct($b);
    }
    
    public function view()
    {
        $this->requireAsset('javascript', 'jquery');

        $db = Loader::db();
        if ($this->opendataID == 0) {
            $catalog = array(array(
                'title' => t('Catálogo de Datos Abiertos')
            ));
        } else {
            $dsOpenData = new \dsOpenData\dsOpenData();
            $catalog = $db->GetAll("SELECT * FROM dsOpenData WHERE opendataID=" . $this->opendataID);
            $json_datasets =$dsOpenData->getAll($this->opendataID);
            $json_resource = $dsOpenData->getResourceFromDatasets(0);
            $titulo_datasets=$dsOpenData->getNameDatasets(0);

        
        }
        $this->set('catalogos', $catalog);
        $this->set('datasets', $json_datasets);
       
        $this->set('resource', $json_resource);

        if (method_exists($this->getBlockObject(), 'getProxyBlock')) {
            $this->set(
                'blockIdentifier',
                $this->getBlockObject()->getProxyBlock()
                    ? $this->getBlockObject()->getProxyBlock()->getInstance()->getIdentifier()
                    : $this->getIdentifier()
            );
        } else {
            $this->set('blockIdentifier', rand(12, 512));
        }

    }

    function save($data)
    {
        $args['opendataID'] = isset($data['opendataID']) ? intval($data['opendataID']) : 0;
        parent::save($args);
    }

    function add()
    {
        $db = Loader::db();
        $catalogs = $db->GetAll("SELECT * FROM dsOpenData");
        array_unshift($catalogs, array(
            'opendataID' => 0,
            'title' => 'Todos los Catálogos'
        ));
        $this->set('catalogos', $catalogs);
    }

    function edit()
    {
        $db = Loader::db();
        $catalogs = $db->GetAll("SELECT * FROM dsOpenData");
        array_unshift($catalogs, array(
            'opendataID' => 0,
            'title' => 'Todos los Catálogos'
        ));
        $this->set('catalogos', $catalogs);
        $this->set('opendataID', $this->opendataID);
    }
}

?>
