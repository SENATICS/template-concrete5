<?php 
namespace Concrete\Package\VividThumbGallery\Block\VividThumbGallery;
use \Concrete\Core\Block\BlockController;
use Loader;
use \File;
use FileSet;
use FileList;
use BlockType;
use Page;
use Core;
use \Concrete\Core\Block\View\BlockView as BlockView;
use Concrete\Core\File\Type\Type as FileType;

defined('C5_EXECUTE') or die(_("Access Denied.")); 
class Controller extends BlockController
{
    protected $btTable = 'btVividThumbGallery';
    protected $btInterfaceWidth = "800";
    protected $btWrapperClass = 'ccm-ui';
    protected $btInterfaceHeight = "465";
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;

    public function getBlockTypeDescription()
    {
        return t("Add a Gallery of Images");
    }

    public function getBlockTypeName()
    {
        return t("Thumb Gallery");
    }
    
    function add() {
        $this->set('fsID', 0);
        $this->loaders();
    }
    
    function edit() {
        $this->loaders();
    }
    function loaders()
    {
        $sets = FileSet::getMySets();
        $this->set("sets",$sets);
        
        $this->requireAsset('core/file-manager');
        
        $uh = Loader::helper('concrete/urls');
        $bt = BlockType::getByHandle('vivid_thumb_gallery');
        $toolsURL = $uh->getBlockTypeToolsURL($bt);
        $this->set("toolsURL",$toolsURL."/get_thumbs");
    }
    function view(){
        $fsID = $this->fileset;
        $bID = $this->bID;
        $db = Loader::db();
        $existingThumbs = $db->GetAll('SELECT * from btVividThumbGalleryThumb WHERE bID = ? ORDER BY sort', array($bID)); //gives us all the files we've already saved/sorted
        $existingThumbIDs = array();
        foreach($existingThumbs as $thumb){
            $existingThumbIDs[] = $thumb['fID'];
        }
        
        $fs = FileSet::getByID($fsID);
        $fileList = new FileList();            
        $fileList->filterBySet($fs);
        $fileList->filterByType(FileType::T_IMAGE);
        $fileList->sortByFileSetDisplayOrder();
        $files = $fileList->get(); //gives us all the files in the set
        
        //we're going to make a new array of thumbs from the files in our fileset.
        $allThumbs = array();
        foreach($files as $file){
            if(in_array($file->getFileID(),$existingThumbIDs)){
                $sort = $db->GetOne('SELECT sort from btVividThumbGalleryThumb WHERE bID = ? and fID = ?', array($bID,$file->getFileID()));
                $thumb = array('fID'=>$file->getFileID(),'sort'=>$sort);
            } else{
                $thumb = array('fID'=>$file->getFileID(),'sort'=>9999);
            }
            $allThumbs[] = $thumb;
        }   
        $allThumbs = $this->thumbSort($allThumbs,'sort',SORT_ASC);
        $this->set("items",$allThumbs);
    }
    public function save($args)
    {
        $db = Loader::db();
        $db->execute('DELETE from btVividThumbGalleryThumb WHERE bID = ?', array($this->bID));
        $count = count($args['sort']);
        $i = 0;
        parent::save($args);
        while ($i < $count) {
            $vals = array($this->bID,$args['fID'][$i],$args['sort'][$i]);     
            $db->execute('INSERT INTO btVividThumbGalleryThumb (bID,fID, sort) values(?,?,?)', $vals);
            $i++;
        }
        $blockObject = $this->getBlockObject();
        if (is_object($blockObject)) {
            $blockObject->setCustomTemplate($args['zoomType']);
        }
    }
    public function duplicate($newBID) {
        parent::duplicate($newBID);
        $db = Loader::db();
        $vals = array($this->bID);
        $data = $db->query('SELECT * FROM btVividThumbGalleryThumb WHERE bID = ?', $vals);
        while ($row = $data->FetchRow()) {
            $vals = array($newBID,$row['fID'],$row['sort']);
            $db->execute('INSERT INTO btVividThumbGalleryThumb (bID, fID, sort) values(?,?,?)', $vals);
        }
    }
    public function validate($args)
    {
        $e = Core::make("helper/validation/error");       
        if(empty($args['thumbWidth'])){
            $e->add(t("Thumbnail Width must be set"));
        }
        if(!ctype_digit(trim($args['thumbWidth']))){
            $e->add(t("Thumbnail Width must be solely numeric"));
        }
        if(empty($args['thumbHeight'])){
            $e->add(t("Thumbnail Height must be set"));
        }
        if(!ctype_digit(trim($args['thumbHeight']))){
            $e->add(t("Thumbnail Height must be solely numeric"));
        }
        if(empty($args['imageWidth'])){
            $e->add(t("Image Width must be set"));
        }
        if(!ctype_digit(trim($args['imageWidth']))){
            $e->add(t("Image Width must be solely numeric"));
        }
        if(empty($args['imageHeight'])){
            $e->add(t("Image Height must be set"));
        }
        if(!ctype_digit(trim($args['imageHeight']))){
            $e->add(t("Image Height must be solely numeric"));
        }
        return $e;
    }
    public function registerViewAssets()
    {
        $uh = Loader::helper('concrete/urls');
        $bObj = $this->getBlockObject();
        if($bObj){
            $bt=$bObj->getBlockTypeObject();
            $blockURL = $uh->getBlockTypeAssetsURL($bt);
            $this->requireAsset('javascript', 'jquery');
            if($this->zoomType=="lightbox"){
                $this->addHeaderItem('<link rel="stylesheet" type="text/css" href="'.$blockURL.'/assets/featherlight.css"/>');
                $this->addFooterItem('<script type="text/javascript" src="'.$blockURL.'/assets/imagelightbox.min.js"></script>');
            }
            else{
                $this->addFooterItem('<script type="text/javascript" src="'.$blockURL.'/assets/elevateZoom.js"></script>');
            }
        }
    }
    
    function thumbSort($array, $on, $order=SORT_ASC)
    {
        $new_array = array();
        $sortable_array = array();
    
        if (count($array) > 0) {
            foreach ($array as $k => $v) {
                if (is_array($v)) {
                    foreach ($v as $k2 => $v2) {
                        if ($k2 == $on) {
                            $sortable_array[$k] = $v2;
                        }
                    }
                } else {
                    $sortable_array[$k] = $v;
                }
            }
    
            switch ($order) {
                case SORT_ASC:
                    asort($sortable_array);
                break;
                case SORT_DESC:
                    arsort($sortable_array);
                break;
            }
    
            foreach ($sortable_array as $k => $v) {
                $new_array[$k] = $array[$k];
            }
        }
    
        return $new_array;
    }
    
    
}