<?php       

namespace Concrete\Package\VividThumbGallery;
use Package;
use BlockType;
use Loader;

defined('C5_EXECUTE') or die(_("Access Denied."));

class Controller extends Package
{

	protected $pkgHandle = 'vivid_thumb_gallery';
	protected $appVersionRequired = '5.7.1';
	protected $pkgVersion = '1.0.3';
	
	
	
	public function getPackageDescription()
	{
		return t("Add a Gallery of Thumbnails to your Site");
	}

	public function getPackageName()
	{
		return t("Thumb Gallery");
	}
	
	public function install()
	{
		$pkg = parent::install();
        BlockType::installBlockTypeFromPackage('vivid_thumb_gallery', $pkg); 
        
	}
    public function uninstall() 
    {
        parent::uninstall();
        $db = Loader::db();
        $db->Execute('DROP TABLE btVividThumbGallery, btVividThumbGalleryThumb');
    }
}
?>