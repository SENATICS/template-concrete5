<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>

<div class="ccm-ui">

    <?php if (count($frequentPageTypes) || count($otherPageTypes)) { ?>

    <?php if (count($frequentPageTypes) && count($otherPageTypes)) { ?>
        <h5><?php echo t('Commonly Used')?></h5>
    <?php } ?>

    <ul class="item-select-list">

        <?php foreach($frequentPageTypes as $pt) { ?>
            <li><a href="<?php echo URL::to('/ccm/system/page/', 'create', $pt->getPageTypeID(), $c->getCollectionID())?>"><i class="fa fa-file-o"></i> <?php echo $pt->getPageTypeName()?></a></li>
        <?php } ?>

        <?php if (count($frequentPageTypes) && count($otherPageTypes)) { ?>
            </ul>
            <h5><?php echo t('Other')?></h5>
            <ul class="item-select-list">
        <?php } ?>

        <?php foreach($otherPageTypes as $pt) { ?>
            <li><a href="<?php echo URL::to('/ccm/system/page/', 'create', $pt->getPageTypeID(), $c->getCollectionID())?>"><i class="fa fa-file-o"></i> <?php echo $pt->getPageTypeName()?></a></li>
        <?php } ?>
    </ul>

    <?php } else { ?>
        <p><?php echo t('You do not have access to add any page types beneath the selected page.')?></p>

    <?php } ?>
</div>