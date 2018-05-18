<?php
defined('C5_EXECUTE') or die(_("Access Denied."));
echo $controller->getOpenTag();
echo "<span class=\"ccm-block-page-attribute-display-title\">".$controller->getTitle()."</span>";
echo "<a href=";
echo $controller->getContent();
echo " target='_blank'>";
echo $controller->getContent();
echo "</a>";
echo $controller->getCloseTag();
