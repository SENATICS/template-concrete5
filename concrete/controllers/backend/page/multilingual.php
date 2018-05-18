<?php
namespace Concrete\Controller\Backend\Page;
use Concrete\Core\Multilingual\Page\Section\Section;
use Concrete\Core\Page\Collection\Version\Version;
use Concrete\Core\Page\EditResponse as PageEditResponse;
use Concrete\Controller\Backend\UserInterface\Page;
use Concrete\Core\Workflow\Progress\Response;
use Concrete\Core\Workflow\Request\ApprovePageRequest;
use Core;

class Multilingual extends Page
{

    protected $controllerActionPath = '/ccm/system/page/multilingual';

    public function canAccess()
    {
        return $this->permissions->canEditPageMultilingualSettings();
    }

    public function ignore()
    {
        $section = Section::getByID($_POST['section']);
        Section::ignorePageRelation($this->page, $section->getLocale());
        $r = new PageEditResponse();
        $r->setPage($this->page);
        $r->setMessage(t('Page ignored.'));
        $r->outputJSON();
    }

    public function unmap()
    {
        Section::unregisterPage($this->page);
        $r = new PageEditResponse();
        $r->setPage($this->page);
        $r->setMessage(t('Page unmapped.'));
        $r->outputJSON();
    }

    public function assign()
    {

        $pr = new PageEditResponse();

        if ($this->request->request->get('destID') == $this->page->getCollectionID()) {
            throw new \Exception(t("You cannot assign this page to itself."));
        }

        $destPage = \Page::getByID($_POST['destID']);
        if (Section::isMultilingualSection($destPage)) {
            $ms = Section::getByID($destPage->getCollectionID());
        } else {
            $ms = Section::getBySectionOfSite($destPage);
        }

        if (is_object($ms)) {
            // we need to assign/relate the source ID too, if it doesn't exist
            if (!Section::isAssigned($this->page)) {
                Section::registerPage($this->page);
            }
            Section::relatePage($this->page, $destPage, $ms->getLocale());
            $ih = Core::make('multilingual/interface/flag');
            $icon = $ih->getSectionFlagIcon($ms);
            $pr->setAdditionalDataAttribute('name', $destPage->getCollectionName());
            $pr->setAdditionalDataAttribute('link', $destPage->getCollectionLink());
            $pr->setAdditionalDataAttribute('icon', $icon);
            $pr->setMessage(t('Page assigned.'));
            $pr->outputJSON();
        } else {
            throw new \Exception(t("The destination page doesn't appear to be in a valid multilingual section."));
        }
    }

    public function create_new()
    {
        $pr = new PageEditResponse();
        $ms = Section::getByID($this->request->request->get('section'));
        // we get the related parent id
        if ($this->page->isPageDraft()) {
            $cParentID = $this->page->getPageDraftTargetParentPageID();
        } else {
            $cParentID = $this->page->getCollectionParentID();
        }
        $cParent = \Page::getByID($cParentID);
        $cParentRelatedID = $ms->getTranslatedPageID($cParent);
        if ($cParentRelatedID > 0) {
            // we copy the page underneath it and store it
            $ct = \PageType::getByID($this->page->getPageTypeID());
            if ($this->page->isPageDraft()) {
                $ptp = new \Permissions($ct);
                if (!$ptp->canAddPageType()) {
                    throw new \Exception(t('You do not have permission to add a page of this type.'));
                }
            }
            $newParent = \Page::getByID($cParentRelatedID);
            $cp = new \Permissions($newParent);
            if ($cp->canAddSubCollection($ct)) {
                if ($this->page->isPageDraft()) {
                    $targetParent = \Page::getByPath(\Config::get('concrete.paths.drafts'));
                } else {
                    $targetParent = $newParent;
                }
                $newPage = $this->page->duplicate($targetParent);
                if (is_object($newPage)) {
                    if ($this->page->isPageDraft()) {
                        $newPage->setPageDraftTargetParentPageID($newParent->getCollectionID());
                        Section::relatePage($this->page, $newPage, $ms->getLocale());
                        $pr->setMessage(t('New draft created.'));
                    } else {
                        // grab the approved version and unapprove it
                        $v = Version::get($newPage, 'ACTIVE');
                        if (is_object($v)) {
                            $v->deny();
                        }
                        $pr->setMessage(t('Unapproved page created. You must publish this page before it is live.'));
                    }
                    $ih = Core::make('multilingual/interface/flag');
                    $icon = $ih->getSectionFlagIcon($ms);
                    $pr->setAdditionalDataAttribute('name', $newPage->getCollectionName());
                    $pr->setAdditionalDataAttribute('link', $newPage->getCollectionLink());
                    $pr->setAdditionalDataAttribute('icon', $icon);
                }
            } else {
                throw new \Exception(t('You do not have permission to add this page to this section of the tree.'));
            }
        }
        $pr->outputJSON();
    }
}