<?php
namespace Application\Block\Iframe;
use Loader;
use \File;
use Page;
use \Concrete\Core\Block\BlockController;
class Controller extends BlockController {

    protected $btInterfaceWidth = 400;
    protected $btInterfaceHeight = 550;
    protected $btTable = 'btContentIframe';
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btWrapperClass = 'ccm-ui';
    protected $btExportPageColumns = array('internalLinkCID');

    /**
     * Used for localization. If we want to localize the name/description we have to include this
     */
    public function getBlockTypeDescription() {
        return t("Agrega un Popup con Iframe");
    }

    public function getBlockTypeName() {
        return t("Iframe Popup");
    }

    public function view() {
        $this->set('title',$this->getTitle());
        $this->set('linkURL',$this->getLinkURL());
		$this->set('content', $this->content);
    }

    function getTitle() {return $this->title;}
    function getExternalLink() {return $this->externalLink;}
    function getInternalLinkCID() {return $this->internalLinkCID;}
    function getLinkURL() {
        if (!empty($this->externalLink)) {
            return $this->externalLink;
        } else if (!empty($this->internalLinkCID)) {
            $linkToC = Page::getByID($this->internalLinkCID);
            return (empty($linkToC) || $linkToC->error) ? '' : Loader::helper('navigation')->getLinkToCollection($linkToC);
        } else {
            return '';
        }
    }

    public function save($args) {
        $args['maxHeight'] = (intval($args['maxHeight']) > 0) ? intval($args['maxHeight']) : 0;
        if (!$args['constrainPopup']) {
            $args['maxHeight'] = 0;
        }
		
        switch (intval($args['linkType'])) {
            case 1:
                $args['externalLink'] = '';
				$args['internelHTML'] = 0;
                break;
            case 2:
                $args['internalLinkCID'] = 0;
				$args['internelHTML'] = 0;
                break;
			case 3:
				$args['internalLinkCID'] = '';
				$args['externalLink'] = '';
                break;
            default:
                $args['externalLink'] = '';
                $args['internalLinkCID'] = 0;
				$args['internelHTML'] = '';
                break;
        }
		
		$args['content'] = isset($args['content']) ? $args['content'] : '';

        unset($args['linkType']); //this doesn't get saved to the database (it's only for UI usage)
        parent::save($args);
    }
	

    public function add()
    {
        $this->edit();
    }

    public function edit()
    {
        $this->requireAsset('ace');
    }

    public function getSearchableContent()
    {
        return $this->content;
    }

    

    public static function xml_highlight($s)
    {
        $s = htmlspecialchars($s);
        $s = preg_replace(
            "#&lt;([/]*?)(.*)([\s]*?)&gt;#sU",
            "<font color=\"#0000FF\">&lt;\\1\\2\\3&gt;</font>",
            $s
        );
        $s = preg_replace(
            "#&lt;([\?])(.*)([\?])&gt;#sU",
            "<font color=\"#800000\">&lt;\\1\\2\\3&gt;</font>",
            $s
        );
        $s = preg_replace(
            "#&lt;([^\s\?/=])(.*)([\[\s/]|&gt;)#iU",
            "&lt;<font color=\"#808000\">\\1\\2</font>\\3",
            $s
        );
        $s = preg_replace(
            "#&lt;([/])([^\s]*?)([\s\]]*?)&gt;#iU",
            "&lt;\\1<font color=\"#808000\">\\2</font>\\3&gt;",
            $s
        );
        $s = preg_replace(
            "#([^\s]*?)\=(&quot;|')(.*)(&quot;|')#isU",
            "<font color=\"#800080\">\\1</font>=<font color=\"#FF00FF\">\\2\\3\\4</font>",
            $s
        );
        $s = preg_replace(
            "#&lt;(.*)(\[)(.*)(\])&gt;#isU",
            "&lt;\\1<font color=\"#800080\">\\2\\3\\4</font>&gt;",
            $s
        );

        return nl2br($s);
    }

}
