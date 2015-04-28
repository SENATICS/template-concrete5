<?php
namespace Application\Theme\Template;
use Concrete\Core\Page\Theme\Theme;
class PageTheme extends Theme
{
 public function getThemeBlockClasses()
{
    return array(
        'content' => array(
            'linea'
        )
    );
}
}