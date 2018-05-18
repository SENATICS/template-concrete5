<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>

<div class="ccm-block-tags-wrapper">

    <div class="ccm-block-topic-list-header">
        <h5><?php echo h($title); ?></h5>
    </div>

    <?php
    if ($mode == 'S' && is_object($tree)) {
        $node = $tree->getRootTreeNodeObject();
        $node->populateChildren();
        if (is_object($node)) {
            if (!isset($selectedTopicID)) {
                $selectedTopicID = null;
            }
            $walk = function ($node) use (&$walk, &$view, $selectedTopicID) {
                
                foreach ($node->getChildNodes() as $topic) {
                    if ($topic instanceof \Concrete\Core\Tree\Node\Type\TopicCategory) {
                        ?><spam><?php echo $topic->getTreeNodeDisplayName(); ?></spam>
                    <?php 
                    } else {
                        ?><a href="<?php echo $view->controller->getTopicLink($topic); ?>" <?php
                        if (isset($selectedTopicID) && $selectedTopicID == $topic->getTreeNodeID()) {
                            ?> class="ccm-block-tags-tag label"<?php
                        }
                        ?>>
                        <spam class="ccm-block-tags-tag label"><?php echo $topic->getTreeNodeDisplayName(); ?></spam></a><?php 
                    }
                    $walk($topic);
                }
                
            };
            $walk($node);
        }
    }

    if ($mode == 'P') {
        if (count($topics)) {
            
            foreach ($topics as $topic) {
                ?>
                <a href="<?php echo $view->controller->getTopicLink($topic); ?>">
                    <spam class="ccm-block-tags-tag label">
                    <?php echo $topic->getTreeNodeDisplayName(); ?></spam>
                </a><?php
            }
            
        } else {
            echo t('No topics.');
        }
    }
    ?>

</div>
