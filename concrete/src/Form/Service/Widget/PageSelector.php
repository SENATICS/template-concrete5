<?php
namespace Concrete\Core\Form\Service\Widget;

use Core;
use Page;
use Permissions;

class PageSelector
{

    /**
     * Creates form fields and JavaScript page chooser for choosing a page. For use with inclusion in blocks.
     * <code>
     *     $dh->selectPage('pageID', '1'); // prints out the home page and makes it selectable.
     * </code>
     *
     * @param $fieldName
     * @param bool|int $cID
     * @return string
     */
    public function selectPage($fieldName, $cID = false)
    {
        $v = \View::getInstance();
        $v->requireAsset('core/sitemap');

        $selectedCID = 0;
        if (isset($_REQUEST[$fieldName])) {
            $selectedCID = intval($_REQUEST[$fieldName]);
        } else {
            if ($cID > 0) {
                $selectedCID = $cID;
            }
        }

        if ($selectedCID) {
            $args = "{'inputName': '{$fieldName}', 'cID': {$selectedCID}}";
        } else {
            $args = "{'inputName': '{$fieldName}'}";
        }

        $identifier = new \Concrete\Core\Utility\Service\Identifier();
        $identifier = $identifier->getString(32);
        $html = <<<EOL
        <div data-page-selector="{$identifier}"></div>
        <script type="text/javascript">
        $(function() {
            $('[data-page-selector={$identifier}]').concretePageSelector({$args});
        });
        </script>
EOL;
        return $html;
    }

    public function quickSelect($key, $cID = false, $args = array())
    {
        $selectedCID = 0;
        if (isset($_REQUEST[$key])) {
            $selectedCID = $_REQUEST[$key];
        } else {
            if ($cID > 0) {
                $selectedCID = $cID;
            }
        }

        $cName = '';
        if ($selectedCID > 0) {
            $oc = Page::getByID($selectedCID);
            $cp = new Permissions($oc);
            if ($cp->canViewPage()) {
                $cName = $oc->getCollectionName();
            }
        }

        $valt = Core::make('helper/validation/token');
        $token = $valt->generate('quick_page_select_' . $key);
        $html = "
		<script type=\"text/javascript\">
		$(function () {
			$('#ccm-quick-page-selector-label-" . $key . "').autocomplete({
				select: function(e, ui) {
					$('#ccm-quick-page-selector-label-" . $key . "').val(ui.item.label);
					$('#ccm-quick-page-selector-value-" . $key . "').val(ui.item.value);
					return false;
				},
				open: function(e, ui) {
					//$('#ccm-quick-page-selector-label-" . $key . "').val('');
					$('#ccm-quick-page-selector-value-" . $key . "').val('');
				},
				focus: function(e, ui) {
					$('#ccm-quick-page-selector-label-" . $key . "').val(ui.item.label);
					return false;
				},
				source: '" . REL_DIR_FILES_TOOLS_REQUIRED . "/pages/autocomplete?key=" . $key . "&token=" . $token . "'
			});
			$('#ccm-quick-page-selector-label-" . $key . "').keydown(function(e) {
				if (e.keyCode == 13) {
					e.preventDefault();
				}
			}).change(function(e) {
				if ($('#ccm-quick-page-selector-label-" . $key . "').val() == '') {
					$('#ccm-quick-page-selector-value-" . $key . "').val('');
				}
			});
			$('#ccm-quick-page-selector-label-" . $key . "').autocomplete('widget').addClass('ccm-page-selector-autocomplete');
		} );
		</script>";
        $html .= '<input type="hidden" id="ccm-quick-page-selector-value-' . $key . '" name="' . $key . '" value="' . $selectedCID . '" /><span class="ccm-quick-page-selector">
		<input type="text" class="ccm-input-text" name="ccm-quick-page-selector-label-' . $key . '" id="ccm-quick-page-selector-label-' . $key . '" value="' . $cName . '" /></span>';
        return $html;
    }

    public function selectMultipleFromSitemap($field, $pages = array(), $startingPoint = HOME_CID, $filters = array())
    {
        $v = \View::getInstance();
        $v->requireAsset('core/sitemap');

        $identifier = new \Concrete\Core\Utility\Service\Identifier();
        $identifier = $identifier->getString(32);

        $args = new \stdClass;
        $selected = array();
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_POST[$field]) && is_array($_POST[$field])) {
                foreach($_POST[$field] as $value) {
                    $selected[] = intval($value);
                }
            }
        } else {
            foreach($pages as $cID) {
                $selected[] = is_object($cID) ? $cID->getCollectionID() : $cID;
            }
        }

        $args->identifier = $identifier;
        $args->selected = $selected;
        $args->mode = 'multiple';
        $args->token = Core::make('token')->generate('select_sitemap');
        $args->inputName = $field;
        $args->startingPoint = $startingPoint;
        if (count($filters)) {
            $args->filters = $filters;
        }
        $args = json_encode($args);

        $html = <<<EOL
        <div data-page-sitemap-selector="{$identifier}"></div>
        <script type="text/javascript">
        $(function() {
            $('[data-page-sitemap-selector={$identifier}]').concretePageSitemapSelector({$args});
        });
        </script>
EOL;
        return $html;
    }

    public function selectFromSitemap($field, $page = null, $startingPoint = HOME_CID, $filters = array())
    {
        $v = \View::getInstance();
        $v->requireAsset('core/sitemap');

        $identifier = new \Concrete\Core\Utility\Service\Identifier();
        $identifier = $identifier->getString(32);

        $args = new \stdClass;
        $selected = 0;

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_POST[$field])) {
                $selected = intval($_POST[$field]);
            }
        } else if ($page) {
            $selected = is_object($page) ? $page->getCollectionID() : $page;
        }
        $args->identifier = $identifier;
        $args->selected = $selected;
        $args->inputName = $field;
        $args->startingPoint = $startingPoint;
        $args->token = Core::make('token')->generate('select_sitemap');
        if (count($filters)) {
            $args->filters = $filters;
        }
        $args = json_encode($args);

        $html = <<<EOL
        <div data-page-sitemap-selector="{$identifier}"></div>
        <script type="text/javascript">
        $(function() {
            $('[data-page-sitemap-selector={$identifier}]').concretePageSitemapSelector({$args});
        });
        </script>
EOL;
        return $html;
    }


}
