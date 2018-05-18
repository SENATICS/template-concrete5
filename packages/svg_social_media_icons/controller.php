<?php 
namespace Concrete\Package\SvgSocialMediaIcons;

use Package;
use BlockType;

/*
SVG Social Media Icons by Karl Dilkington (aka MrKDilkington)
This software is licensed under the terms described in the concrete5.org marketplace.
Please find the add-on there for the latest license copy.
*/

class Controller extends Package
{
    protected $pkgHandle = 'svg_social_media_icons';
    protected $appVersionRequired = '5.7.3';
    protected $pkgVersion = '0.9.9';

    public function getPackageName()
    {
        return t('SVG Social Media Icons');
    }

    public function getPackageDescription()
    {
        return t('Add SVG social media icons with PNG fallback on your pages.');
    }

    public function install()
    {
        $pkg = parent::install();

        $blk = BlockType::getByHandle('svg_social_media_icons');
        if (!is_object($blk)) {
            BlockType::installBlockTypeFromPackage('svg_social_media_icons', $pkg);
        }
    }
}
