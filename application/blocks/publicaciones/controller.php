<?php
namespace Application\Block\Publicaciones;

use Concrete\Core\Block\BlockController;
use Database;
use Page;
use Concrete\Core\Editor\LinkAbstractor;
use Core;

class Controller extends BlockController
{
    protected $btTable = 'btPublicaciones';
    protected $btExportTables = array('btPublicaciones', 'btPublicacionesEntries');
    protected $btInterfaceWidth = "700";
    protected $btWrapperClass = 'ccm-ui';
    protected $btInterfaceHeight = "650";
    protected $btCacheBlockRecord = true;
    protected $btExportFileColumns = array('fID');
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = false;
    protected $btIgnorePageThemeGridFrameworkContainer = true;

    public function getBlockTypeDescription()
    {
        return t("Permite realizar publicaciones, anexar al mismo enlaces a archivos/sitios");
    }

    public function getBlockTypeName()
    {
        return t("Publicaciones");
    }

    public function getSearchableContent()
    {
        $content = '';
        $db = Database::get();
        $v = array($this->bID);
        $q = 'select * from btPublicacionesEntries where bID = ?';
        $r = $db->query($q, $v);
        foreach ($r as $row) {
            $content .= $row['title'].' ';
            $content .= $row['description'].' ';
        }

        return $content;
    }

    public function add()
    {
        $this->requireAsset('core/file-manager');
        $this->requireAsset('core/sitemap');
        $this->requireAsset('redactor');
    }

    public function edit()
    {
        $this->requireAsset('core/file-manager');
        $this->requireAsset('core/sitemap');
        $this->requireAsset('redactor');
        $db = Database::get();
        $query = $db->GetAll('SELECT * from btPublicacionesEntries WHERE bID = ? ORDER BY sortOrder', array($this->bID));
        $this->set('rows', $query);
    }

    public function composer()
    {
        $this->edit();
    }

    public function registerViewAssets($outputContent = '')
    {
        $al = \Concrete\Core\Asset\AssetList::getInstance();

        $this->requireAsset('javascript', 'jquery');
    }

    public function getEntries()
    {
        $db = Database::get();
        $r = $db->GetAll('SELECT * from btPublicacionesEntries WHERE bID = ? ORDER BY sortOrder DESC', array($this->bID));
        // in view mode, linkURL takes us to where we need to go whether it's on our site or elsewhere
        $rows = array();
        foreach ($r as $q) {
            if (!$q['linkURL'] && $q['internalLinkCID']) {
                $c = Page::getByID($q['internalLinkCID'], 'ACTIVE');
                $q['linkURL'] = $c->getCollectionLink();
                $q['linkPage'] = $c;
            }
            $q['description'] = LinkAbstractor::translateFrom($q['description']);
            $rows[] = $q;
        }

        return $rows;
    }

    public function view()
    {
        $this->set('rows', $this->getEntries());
    }

    public function duplicate($newBID)
    {
        parent::duplicate($newBID);
        $db = Database::get();
        $v = array($this->bID);
        $q = 'select * from btPublicacionesEntries where bID = ?';
        $r = $db->query($q, $v);
        while ($row = $r->FetchRow()) {
            $db->execute('INSERT INTO btPublicacionesEntries (bID, fID, linkURL, title, description, target, btnTexto, sortOrder, internalLinkCID) values(?,?,?,?,?,?,?,?,?)',
                array(
                    $newBID,
                    $row['fID'],
                    $row['linkURL'],
                    $row['title'],
                    $row['description'],
                    $row['target'],
                    $row['btnTexto'],
                    $row['sortOrder'],
                    $row['internalLinkCID'],
                )
            );
        }
    }

    public function delete()
    {
        $db = Database::get();
        $db->delete('btPublicacionesEntries', array('bID' => $this->bID));
        parent::delete();
    }

    public function validate($args)
    {
        $error = Core::make('helper/validation/error');
        $item_por_pagina = intval($args['item_por_pagina']);

        if (!$item_por_pagina) {
            $error->add(t('Debe especificar un número para la cantidad de item por paginas a mostrar'));
        }
        if ($item_por_pagina <= 0) {
            $error->add(t('Los item a mostrar por pagina deben ser mayor a 0'));
        }
        return $error;
    }

    public function save($args)
    {
        $args['item_por_pagina'] = isset($args['item_por_pagina']) ? intval($args['item_por_pagina']) : 5;

        $db = Database::get();
        $db->execute('DELETE from btPublicacionesEntries WHERE bID = ?', array($this->bID));
        parent::save($args);
        if (isset($args['sortOrder'])) {
            $count = count($args['sortOrder']);
            $i = 0;

            while ($i < $count) {
                $linkURL = $args['linkURL'][$i];
                $internalLinkCID = $args['internalLinkCID'][$i];
                switch (intval($args['linkType'][$i])) {
                    case 1:
                        $linkURL = '';
                        break;
                    case 2:
                        $internalLinkCID = 0;
                        break;
                    default:
                        $linkURL = '';
                        $internalLinkCID = 0;
                        break;
                }

                if (isset($args['description'][$i])) {
                    $args['description'][$i] = LinkAbstractor::translateTo($args['description'][$i]);
                }

                $db->execute('INSERT INTO btPublicacionesEntries (bID, fID, title, description, target, btnTexto, sortOrder, linkURL, internalLinkCID) values(?,?,?,?,?,?,?,?,?)',
                    array(
                        $this->bID,
                        intval($args['fID'][$i]),
                        $args['title'][$i],
                        $args['description'][$i],
                        $args['target'][$i],
                        $args['btnTexto'][$i],
                        $args['sortOrder'][$i],
                        $linkURL,
                        $internalLinkCID,
                    )
                );
                ++$i;
            }
        }
    }
}
