<?php   
namespace Concrete\Package\SbBreadcrumbTrail;
use Package;
use BlockType;
use Loader;
 defined('C5_EXECUTE') or die("Access Denied.");

class controller extends Package {

	protected $pkgHandle = 'sb_breadcrumb_trail';
	protected $appVersionRequired = '5.7.4';
	protected $pkgVersion = '1.1';

	public function getPackageDescription() {
		return t('Adds a breadcrumb trail navigation');
	}

	public function getPackageName() {
		return t('Breadcrumb Trail Page Links');
	}
	public function install() {
		$pkg = parent::install();
		BlockType::installBlockTypeFromPackage('sb_breadcrumb_trail', $pkg);

	}
	
}