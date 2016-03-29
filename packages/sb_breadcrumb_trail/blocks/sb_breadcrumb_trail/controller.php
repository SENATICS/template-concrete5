<?php   
namespace Concrete\Package\SbBreadCrumbTrail\Block\SbBreadcrumbTrail;
use \Concrete\Core\Block\BlockController;
use Loader;
use Page;
class Controller extends BlockController {
	
	var $pobj;

	protected $btTable = 'btSbBreadcrumbTrail';
	protected $btInterfaceWidth = "400";
    protected $btWrapperClass = 'ccm-ui';
    protected $btInterfaceHeight = "100";
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btDefaultSet = 'navigation';

	public $delimiter = "";

	public function getBlockTypeDescription() {
		return t("Add breadcrumb trail links to your website");
	}

	public function getBlockTypeName() {
		return t("Breadcrumb Trail");
	}

	public function view(){
		$this->set('delimiter', $this->delimiter);
		$this->set("homePageLink", $this->getHomePageLink());
	}

	public function save($data) {
		$args['delimiter'] = isset($data['delimiter']) ? $data['delimiter'] : '';
		parent::save($args);
	}
	
	public function getSubLevels() {
		// current page
		$c = Page::getCurrentPage();
	
		$path = array();
		
		$nh = Loader::helper("navigation");
		
		$trail = $nh->getTrailToCollection($c);
		
		array_unshift($path, array(
			"link" => false,
			"title" => $c->getCollectionName(),
		));
		
		if (!empty($trail)) {
			array_pop($trail);
			if (!empty($trail)) {
				foreach($trail as $page) {
					$pageLink = false;
					if ($page->getCollectionAttributeValue('replace_link_with_first_in_nav')) {
						$firstChild = $page->getFirstChild();
						if ($firstChild instanceof Page) {
							$pageLink = $nh->getCollectionURL($firstChild);
						}
					}
					if (empty($pageLink)) {
						$pageLink = $nh->getCollectionURL($page);
					}
					array_unshift($path, array(
							"link" => $pageLink,
							"title" => $page->getCollectionName(),
						));
				}	
			}			
		}
		
		return $path;
	}
	
	function getHomePageLink() {
		$homepage = Page::getByID(HOME_CID);
		$link = DIR_REL . "/";
		if ($homepage->getCollectionAttributeValue('replace_link_with_first_in_nav')) {
			$nh = Loader::helper("navigation");
			$firstChild = $homepage->getFirstChild();
			if ($firstChild instanceof Page) {
				$link = $nh->getCollectionURL($firstChild);
			}
		}
		return $link;
	}
}
?>