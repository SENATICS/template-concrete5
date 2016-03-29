<!-- Menu Horizontal con color NO basado en personalización que (SI es fijo, y SI se expande con un boton en el responsive)  -->

<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<?php View::getInstance()->requireAsset('javascript', 'jquery');

$navItems = $controller->getNavItems();
$menuline = 0;

echo '
<style>
.Menu_'.$bID.' .submenu a{
    display: inline-block;
}
.Menu_'.$bID.' .submenu li{
    overflow-y:visible;
    width:100%;
}
.Menu_'.$bID.' .submenu li a{
    line-height:15px !important;
    padding: 10px 15px !important;
}

.Menu_'.$bID.' > .submenu > a{
    margin-top: -4px;
}
.Menu_'.$bID.' .submenu > ul > .submenu .icono_submenu{
    transform: rotate(-90deg);
    -webkit-transform: rotate(-90deg);
    -moz-transform: rotate(-90deg);
    -o-transform: rotate(-90deg);
    margin-top:5px;
}
.Menu_'.$bID.' > .submenu .icono_submenu{
    display: inline-block;
    margin-left: 0px;
    margin-right: 10px;
    cursor:pointer;
}

.Menu_'.$bID.' .submenu:hover > ul{
    display:block;
    opacity:1;
}
.Menu_'.$bID.' .submenu ul{
    overflow-y:visible;
}
.Menu_'.$bID.' > li > ul > .submenu a{
    float:left;
}
.Menu_'.$bID.' > li > ul > .submenu ul{
    left:100px;
    margin-top:5px;
}
@media screen and (max-width: 1035px) {
	.Menu_'.$bID.' .submenu .icono_submenu{
        color:#222;
    }
    .Menu_'.$bID.' li{
        box-sizing:border-box;
        padding:0px !important;
    }
    .Menu_'.$bID.' .submenu ul{
        overflow-y:visible;
        width:100%;
        margin-left:15px;
        padding-right:10px !important;
    }
    .Menu_'.$bID.' > li > ul > .submenu ul{
        left:0px !important;
        margin-top:5px;
    }
}
</style>
';

/**
 * The $navItems variable is an array of objects, each representing a nav menu item.
 * It is a "flattened" one-dimensional list of all nav items -- it is not hierarchical.
 * However, a nested nav menu can be constructed from this "flat" array by
 * looking at various properties of each item to determine its place in the hierarchy
 * (see below, for example $navItem->level, $navItem->subDepth, $navItem->hasSubmenu, etc.)
 *
 * Items in the array are ordered with the first top-level item first, followed by its sub-items, etc.
 *
 * Each nav item object contains the following information:
 *	$navItem->url        : URL to the page
 *	$navItem->name       : page title (already escaped for html output)
 *	$navItem->target     : link target (e.g. "_self" or "_blank")
 *	$navItem->level      : number of levels deep the current menu item is from the top (top-level nav items are 1, their sub-items are 2, etc.)
 *	$navItem->subDepth   : number of levels deep the current menu item is *compared to the next item in the list* (useful for determining how many <ul>'s to close in a nested list)
 *	$navItem->hasSubmenu : true/false -- if this item has one or more sub-items (sometimes useful for CSS styling)
 *	$navItem->isFirst    : true/false -- if this is the first nav item *in its level* (for example, the first sub-item of a top-level item is TRUE)
 *	$navItem->isLast     : true/false -- if this is the last nav item *in its level* (for example, the last sub-item of a top-level item is TRUE)
 *	$navItem->isCurrent  : true/false -- if this nav item represents the page currently being viewed
 *	$navItem->inPath     : true/false -- if this nav item represents a parent page of the page currently being viewed (also true for the page currently being viewed)
 *	$navItem->attrClass  : Value of the 'nav_item_class' custom page attribute (if it exists and is set)
 *	$navItem->isHome     : true/false -- if this nav item represents the home page
 *	$navItem->cID        : collection id of the page this nav item represents
 *	$navItem->cObj       : collection object of the page this nav item represents (use this if you need to access page properties and attributes that aren't already available in the $navItem object)
 */


/** For extra functionality, you can add the following page attributes to your site (via Dashboard > Pages & Themes > Attributes):
 *
 * 1) Handle: exclude_nav
 *    (This is the "Exclude From Nav" attribute that comes pre-installed with concrete5, so you do not need to add it yourself.)
 *    Functionality: If a page has this checked, it will not be included in the nav menu (and neither will its children / sub-pages).
 *
 * 2) Handle: exclude_subpages_from_nav
 *    Type: Checkbox
 *    Functionality: If a page has this checked, all of that pages children (sub-pages) will be excluded from the nav menu (but the page itself will be included).
 *
 * 3) Handle: replace_link_with_first_in_nav
 *    Type: Checkbox
 *    Functionality: If a page has this checked, clicking on it in the nav menu will go to its first child (sub-page) instead.
 *
 * 4) Handle: nav_item_class
 *    Type: Text
 *    Functionality: Whatever is entered into this textbox will be outputted as an additional CSS class for that page's nav item (NOTE: you must un-comment the "$ni->attrClass" code block in the CSS section below for this to work).
 */


/*** STEP 1 of 2: Determine all CSS classes (only 2 are enabled by default, but you can un-comment other ones or add your own) ***/
foreach ($navItems as $ni) {
    $classes = array();

    if ($ni->isCurrent) {
        //class for the page currently being viewed
        $classes[] = 'active';
    }
    
    if ($ni->inPath) {
        //class for parent items of the page currently being viewed
        $classes[] = 'active';
    }
    

    /*
    if ($ni->isFirst) {
        //class for the first item in each menu section (first top-level item, and first item of each dropdown sub-menu)
        $classes[] = 'nav-first';
    }
    */

    /*
    if ($ni->isLast) {
        //class for the last item in each menu section (last top-level item, and last item of each dropdown sub-menu)
        $classes[] = 'nav-last';
    }
    */

    
    if ($ni->hasSubmenu) {
        //class for items that have dropdown sub-menus
        $classes[] = 'submenu';
    }

    /*
    if (!empty($ni->attrClass)) {
        //class that can be set by end-user via the 'nav_item_class' custom page attribute
        $classes[] = $ni->attrClass;
    }
    */

    /*
    if ($ni->isHome) {
        //home page
        $classes[] = 'nav-home';
    }
    */

    /*
    //unique class for every single menu item
    $classes[] = 'nav-item-' . $ni->cID;
    */

    //Put all classes together into one space-separated string
    $ni->classes = implode(" ", $classes);
}

//ICONO

function getContent($obj)
{
    $content = "";

    $content = $obj->getAttribute('icon');
    if (is_object($content) && $content instanceof \Concrete\Core\File\File) {

        $im = Core::make('helper/image');
        $thumb = $im->getThumbnail(
            $content,
            30,
            30
        ); //<-- set these 2 numbers to max width and height of thumbnails
        $content = "<img class='hola' src=\"{$thumb->src}\" width=\"{$thumb->width}\" height=\"{$thumb->height}\" alt=\"\" />";
    }
  
return $content;
}
//FIN ICONO

//*** Step 2 of 2: Output menu HTML ***/

echo'<ul class="hide-on-med-and-down Menu_'.$bID.'">';
foreach ($navItems as $ni) {
    
    echo '<li class="' . $ni->classes . '">'; //opens a nav item
    $name = (isset($translate) && $translate == true) ? t($ni->name) : $ni->name;
    echo '<a class="waves-effect waves-brow" href="' . $ni->url . '" target="' . $ni->target . '">'.getContent($ni->cObj).'<div class="linea_icono"></div>' .$name . '</a>';

    if ($ni->hasSubmenu) {
        echo '<i class="mdi-navigation-arrow-drop-down right icono_submenu"></i><ul class="dropdown-content sub-menu children">'; //opens a dropdown sub-menu
    } else {
        echo '</li>'; //closes a nav item
        echo str_repeat('</ul></li>', $ni->subDepth); //closes dropdown sub-menu(s) and their top-level nav item(s)
    }
}
echo'</ul>';

echo'<ul id="nav-mobile" class="side-nav Menu_'.$bID.'">';

foreach ($navItems as $ni) {

    echo '<li class="' . $ni->classes . '">'; //opens a nav item
    $name = (isset($translate) && $translate == true) ? t($ni->name) : $ni->name;
    echo '<a class="waves-effect waves-brow" href="' . $ni->url . '" target="' . $ni->target . '">' . $name . '</a>';

    if ($ni->hasSubmenu) {
        echo '<i class="mdi-navigation-arrow-drop-down right icono_submenu"></i><ul class="dropdown-content sub-menu children">'; //opens a dropdown sub-menu
    } else {
        echo '</li>'; //closes a nav item
        echo str_repeat('</ul></li>', $ni->subDepth); //closes dropdown sub-menu(s) and their top-level nav item(s)
    }
}

echo '</ul><a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>'; //closes the top-level menu
