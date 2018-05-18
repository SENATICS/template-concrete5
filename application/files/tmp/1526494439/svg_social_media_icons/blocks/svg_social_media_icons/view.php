<?php  defined('C5_EXECUTE') or die('Access Denied.');

$urlHelper = Core::make('helper/concrete/urls');
$blockType = BlockType::getByHandle('svg_social_media_icons');
$localPath = $urlHelper->getBlockTypeAssetsURL($blockType);
// Example: $localPath
// /concrete5/packages/svg_social_media_icons/blocks/svg_social_media_icons

// Example: $sortOrder
// "Flickr,deviantART,Email,Behance,Dribbble,Facebook,Github,GooglePlus,Instagram,iTunes,Linkedin,Pinterest,Skype,SoundCloud,Spotify,Tumblr,Twitter,Vimeo,Youtube"

 // split the $sortOrder string using "," and return the substrings as an array
$sortOrderArray = explode(',', $sortOrder);
// Example: $sortOrderArray
// array(
//     0 => 'Behance',
//     1 => 'deviantART',
//     2 => 'Dribbble',
//     3 => 'Email',
//     4 => 'Facebook',
//     5 => 'Flickr',
//     6 => 'Github',
//     7 => 'GooglePlus',
//     8 => 'Instagram',
//     9 => 'iTunes',
//     10 => 'Linkedin',
//     11 => 'Pinterest',
//     12 => 'Skype',
//     13 => 'SoundCloud',
//     14 => 'Spotify',
//     15 => 'Tumblr',
//     16 => 'Twitter',
//     17 => 'Vimeo',
//     18 => 'Youtube',
// )

// Example: $icon
// array(
//     'behance' => array(
//         'checked' => 'behance',
//         'address' => '',
//     ),
//     'deviantart' => array(
//         'checked' => 'deviantart',
//         'address' => '',
//     ),
//     'dribbble' => array(
//         'checked' => 'dribbble',
//         'address' => '',
//     ),
//     'email' => array(
//         'checked' => 'email',
//         'address' => '',
//     ),
//     'facebook' => array(
//         'checked' => 'facebook',
//         'address' => '',
//     ),
//     'flickr' => array(
//         'checked' => 'flickr',
//         'address' => '',
//     ),
//     'github' => array(
//         'checked' => 'github',
//         'address' => '',
//     ),
//     'googleplus' => array(
//         'checked' => 'googleplus',
//         'address' => '',
//     ),
//     'instagram' => array(
//         'checked' => 'instagram',
//         'address' => '',
//     ),
//     'itunes' => array(
//         'checked' => 'itunes',
//         'address' => '',
//     ),
//     'linkedin' => array(
//         'checked' => 'linkedin',
//         'address' => '',
//     ),
//     'pinterest' => array(
//         'checked' => 'pinterest',
//         'address' => '',
//     ),
//     'skype' => array(
//         'checked' => 'skype',
//         'address' => '',
//     ),
//     'soundcloud' => array(
//         'checked' => 'soundcloud',
//         'address' => '',
//     ),
//     'spotify' => array(
//         'checked' => 'spotify',
//         'address' => '',
//     ),
//     'tumblr' => array(
//         'checked' => 'tumblr',
//         'address' => '',
//     ),
//     'twitter' => array(
//         'checked' => 'twitter',
//         'address' => '',
//     ),
//     'vimeo' => array(
//         'checked' => 'vimeo',
//         'address' => '',
//     ),
//     'youtube' => array(
//         'checked' => 'youtube',
//         'address' => '',
//     ),
// )

$iconList[] = '';

//                          Flickr
foreach ($sortOrderArray as $iconOrder) {
    // Flickr
    $display_name = $iconOrder;

    // flickr
    $lower_case_name = strtolower($iconOrder);

    // 'flickr' => array(
    //         'checked' => 'flickr',
    //         'address' => 'https://www.flickr.com/photos/your-account-name'
    //         )
    // if the icon is checked, add it to the $iconList array
    if ($icon[$lower_case_name]['checked']) {
        // array(
        //     0 => 'flickr',
        //     1 => 'https://www.flickr.com/photos/your-account-name'
        //     2 => 'Flickr'
        // )
        $iconList[] = array(
            $lower_case_name,
            $icon[$lower_case_name]['address'],
            $display_name
        );
    }
}

// Example: $iconList
// array(
//     0 => '',
//     1 => array(
//         0 => 'behance',
//         1 => '',
//         2 => 'Behance',
//     ),
//     2 => array(
//         0 => 'deviantart',
//         1 => '',
//         2 => 'deviantART',
//     ),
//     3 => array(
//         0 => 'dribbble',
//         1 => '',
//         2 => 'Dribbble',
//     ),
//     4 => array(
//         0 => 'email',
//         1 => '',
//         2 => 'Email',
//     ),
//     5 => array(
//         0 => 'facebook',
//         1 => '',
//         2 => 'Facebook',
//     ),
//     6 => array(
//         0 => 'flickr',
//         1 => '',
//         2 => 'Flickr',
//     ),
//     7 => array(
//         0 => 'github',
//         1 => '',
//         2 => 'Github',
//     ),
//     8 => array(
//         0 => 'googleplus',
//         1 => '',
//         2 => 'GooglePlus',
//     ),
//     9 => array(
//         0 => 'instagram',
//         1 => '',
//         2 => 'Instagram',
//     ),
//     10 => array(
//         0 => 'itunes',
//         1 => '',
//         2 => 'iTunes',
//     ),
//     11 => array(
//         0 => 'linkedin',
//         1 => '',
//         2 => 'Linkedin',
//     ),
//     12 => array(
//         0 => 'pinterest',
//         1 => '',
//         2 => 'Pinterest',
//     ),
//     13 => array(
//         0 => 'skype',
//         1 => '',
//         2 => 'Skype',
//     ),
//     14 => array(
//         0 => 'soundcloud',
//         1 => '',
//         2 => 'SoundCloud',
//     ),
//     15 => array(
//         0 => 'spotify',
//         1 => '',
//         2 => 'Spotify',
//     ),
//     16 => array(
//         0 => 'tumblr',
//         1 => '',
//         2 => 'Tumblr',
//     ),
//     17 => array(
//         0 => 'twitter',
//         1 => '',
//         2 => 'Twitter',
//     ),
//     18 => array(
//         0 => 'vimeo',
//         1 => '',
//         2 => 'Vimeo',
//     ),
//     19 => array(
//         0 => 'youtube',
//         1 => '',
//         2 => 'Youtube',
//     ),
// )
?>

<style>
.ccm-block-svg_social_media_icons .icon-container {
    display: inline-block;
    padding-top: 5px;
    padding-bottom: 5px;
}
</style>

<div class="ccm-block-svg_social_media_icons" style="text-align: <?php  echo $position ? $position : ''; ?>;">
    <div class="icon-container">

    <?php 
    foreach ($iconList as $iconValue) {
        if ($iconValue[0]) {
            // create the CSS for the icon background
            $css = '.' . $iconValue[0] . $iconSize . '-' . $iconShape . '-' . $iconColor
                       . "{background:url('" . $localPath . "/images/" . $iconValue[0] . $iconSize . '-' . $iconShape . '-' . $iconColor
                       . ".png') no-repeat;background:none,url('" . $localPath . "/images/"
                       . $iconValue[0] . '-' . $iconShape . '-' . $iconColor . ".svg') no-repeat;}";

            // create the CSS for the icon hover background
            if ($iconHover == 'hoverOn') {
                $css .= '.' . $iconValue[0] . $iconSize . '-' . $iconShape . '-' . $iconColor
                            . ":hover{background:url('" . $localPath . "/images/" . $iconValue[0] . $iconSize . '-' . $iconShape
                            . "-hover.png') no-repeat;background:none,url('" . $localPath . "/images/"
                            . $iconValue[0] . '-' . $iconShape . "-hover.svg') no-repeat;}";
            }

            echo "<style>$css</style>";

            // create the class for the link that has the icon backgrounds
            $class = $iconValue[0] . $iconSize . '-' . $iconShape . '-' . $iconColor;

            // create the link and div
            $iconLink = '<a title="' . $iconValue[2] . '"';
            $iconLink .= $openLinkBlank ? ' target="_blank" ' : ' ';
            $iconLink .= "style=\"margin-left: " . ($iconMargin / 2) . "px; margin-right: " . ($iconMargin / 2) . "px; margin-bottom: " . $iconMargin . "px; float: left;\" href=\"" . $iconValue[1]
                      . "\"><div style=\"height: " . $iconSize . "px; width: " . $iconSize . "px\" class=\"" . $class . "\"></div></a>";

            echo $iconLink;
        }
    }

    // Example: CSS
    // <style>
    //     .flickr35-round-logo{
    //         background:url('/concrete5/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/flickr35-round-logo.png') no-repeat;
    //         background:none,url('/concrete5/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/dribbble-round-logo.svg') no-repeat;
    //     }
    //     .flickr35-round-logo:hover{
    //         background:url('/concrete5/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/flickr35-round-hover.png') no-repeat;
    //         background:none,url('/concrete5/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/dribbble-round-hover.svg') no-repeat;
    //     }
    // </style>

    // Example: link
    // <a title="Flickr" style="margin-left: 0px; margin-right: 0px; margin-bottom: 0px; float: left;" href="https://www.flickr.com/photos/example/"><div style="height: 35px; width: 35px" class="flickr35-round-logo"></div></a>

    // Example: link open in new tab
    // <a title="Flickr" target="_blank" style="margin-left: 0px; margin-right: 0px; margin-bottom: 0px; float: left;" href="https://www.flickr.com/photos/example/"><div style="height: 35px; width: 35px" class="flickr35-round-logo"></div></a>
    ?>

    </div>
</div>
