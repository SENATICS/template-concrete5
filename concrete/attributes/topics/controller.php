<?php

namespace Concrete\Attribute\Topics;

use Concrete\Core\Search\ItemList\Database\AttributedItemList;
use Concrete\Core\Tree\Node\Node;
use Concrete\Core\Tree\Type\Topic as TopicTree;
use Concrete\Core\Tree\Tree;
use Concrete\Core\Tree\Node\Node as TreeNode;
use Concrete\Core\Attribute\Controller as AttributeTypeController;
use Core;
use Database;

class Controller extends AttributeTypeController
{
    protected $searchIndexFieldDefinition = array('type' => 'text', 'options' => array('default' => null, 'notnull' => false));

    public $helpers = array('form');

    public function filterByAttribute(AttributedItemList $list, $value, $comparison = '=')
    {
        if (is_array($value)) {
            $topics = $value;
        } else {
            $topics = array($value);
        }

        $i = 1;
        $expressions = array();
        $qb = $list->getQueryObject();
        foreach($topics as $value) {
            if ($value instanceof TreeNode) {
                $topic = $value;
            } else {
                $topic = Node::getByID(intval($value));
            }
            if (is_object($topic) && $topic instanceof \Concrete\Core\Tree\Node\Type\Topic) {
                $column = 'ak_' . $this->attributeKey->getAttributeKeyHandle();
                $expressions[] = $qb->expr()->like($column, ':topicPath' . $i);
                $qb->setParameter('topicPath' . $i, "%||" . $topic->getTreeNodeDisplayPath() . '%||');
            }
            $i++;
        }

        $expr = $qb->expr();
        $qb->andWhere(call_user_func_array(array($expr, 'orX'), $expressions));
    }

    public function saveKey($data)
    {
        $data += array(
            'akTopicParentNodeID' => null,
            'akTopicTreeID' => null,
        );
        $akTopicParentNodeID = $data['akTopicParentNodeID'];
        $akTopicTreeID = $data['akTopicTreeID'];
        $this->setNodes($akTopicParentNodeID, $akTopicTreeID);
        // trap dynatree display node / tree node here.
    }

    public function getDisplayValue()
    {
        $list = $this->getSelectedOptions();
        $topics = array();
        foreach ($list as $node) {
            $topic = Node::getByID($node);
            if (is_object($topic)) {
                $topics[] = $topic->getTreeNodeDisplayName();
            }
        }

        return implode(', ', $topics);
    }

    public function getDisplaySanitizedValue()
    {
        return $this->getDisplayValue();
    }

    public function getSelectedOptions()
    {
        $avID = $this->getAttributeValueID();
        $db = Database::get();
        $optionIDs = $db->GetCol(
            'select TopicNodeID from atSelectedTopics where avID=?',
            array($avID)
        );

        return $optionIDs;
    }

    public function exportValue(\SimpleXMLElement $akn)
    {
        $avn = $akn->addChild('topics');
        $nodes = $this->getSelectedOptions();
        foreach ($nodes as $node) {
            $topic = Node::getByID($node);
            if (is_object($topic)) {
                $avn->addChild('topic', $topic->getTreeNodeDisplayPath());
            }
        }
    }

    public function importValue(\SimpleXMLElement $akn)
    {
        $selected = array();
        if (isset($akn->topics)) {
            foreach ($akn->topics->topic as $topicPath) {
                $selected[] = (string) $topicPath;
            }
        }

        return $selected;
    }

    public function saveValue($nodes)
    {
        $selected = array();
        $this->load();
        $tree = Tree::getByID($this->akTopicTreeID);
        foreach ($nodes as $topicPath) {
            $node = $tree->getNodeByDisplayPath($topicPath);
            if (is_object($node)) {
                $selected[] = $node->getTreeNodeID();
            }
        }

        $db = Database::get();
        $db->Execute('delete from atSelectedTopics where avID = ?', array($this->getAttributeValueID()));

        foreach ($selected as $optionID) {
            $db->execute(
                'INSERT INTO atSelectedTopics (avID, TopicNodeID) VALUES (?, ?)',
                array($this->getAttributeValueID(), $optionID)
            );
        }
    }

    public function exportKey($key)
    {
        $this->load();
        $tree = Tree::getByID($this->akTopicTreeID);
        $node = Node::getByID($this->akTopicParentNodeID);
        $path = $node->getTreeNodeDisplayPath();
        $treeNode = $key->addChild('tree');
        $treeNode->addAttribute('name', $tree->getTreeName());
        $treeNode->addAttribute('path', $path);

        return $key;
    }

    public function importKey($key)
    {
        $name = (string) $key->tree['name'];
        $tree = \Concrete\Core\Tree\Type\Topic::getByName($name);
        $node = $tree->getNodeByDisplayPath((string) $key->tree['path']);
        $this->setNodes($node->getTreeNodeID(), $tree->getTreeID());
    }

    public function form($additionalClass = false)
    {
        $this->load();
        $this->requireAsset('core/topics');
        $this->requireAsset('javascript', 'jquery/form');
        if (is_object($this->attributeValue)) {
            $value = $this->getAttributeValue()->getValue();
        }
        if ($this->getAttributeValueID()) {
            $valueIDs = array();
            foreach ($this->getSelectedOptions() as $valueID) {
                $withinParentScope = false;
                $nodeObj = TreeNode::getByID($valueID);
                if (is_object($nodeObj)) {
                    $parentNodeArray = $nodeObj->getTreeNodeParentArray();
                    // check to see if selected node is still within parent scope, in case it has been changed.
                    foreach ($parentNodeArray as $parent) {
                        if ($parent->treeNodeID == $this->akTopicParentNodeID) {
                            $withinParentScope = true;
                            break;
                        }
                    }
                    if ($withinParentScope) {
                        $valueIDs[] = $valueID;
                    }
                }
            }
            $this->set('valueIDs', implode(',', $valueIDs));
        }
        $this->set('valueIDArray', $valueIDs);
        $ak = $this->getAttributeKey();
        $this->set('akID', $ak->getAttributeKeyID());
        $this->set('parentNode', $this->akTopicParentNodeID);
        $this->set('treeID', $this->akTopicTreeID);
        $this->set('avID', $this->getAttributeValueID());
    }

    public function searchForm($list)
    {
        $list->filterByAttribute($this->attributeKey->getAttributeKeyHandle(), $this->request('treeNodeID'));

        return $list;
    }

    public function getSearchIndexValue()
    {
        $str = "||";
        $nodeKeys = $this->getSelectedOptions();
        foreach ($nodeKeys as $nodeKey) {
            $nodeObj = TreeNode::getByID($nodeKey);
            if (is_object($nodeObj)) {
                $str .= $nodeObj->getTreeNodeDisplayPath() . "||";
            }
        }
        // remove line break for empty list
        if ($str == "\n") {
            return '';
        }

        return $str;
    }

    public function search()
    {
        $this->requireAsset('core/topics');
        $this->load();
        $tree = TopicTree::getByID(Core::make('helper/security')->sanitizeInt($this->akTopicTreeID));
        $this->set('tree', $tree);
        $treeNodeID = $this->request('treeNodeID');
        if (!$treeNodeID) {
            $treeNodeID = $this->akTopicParentNodeID;
        }
        $this->set('selectedNode', $treeNodeID);
        $this->set('attributeKey', $this->attributeKey);
    }

    public function setNodes($akTopicParentNodeID, $akTopicTreeID)
    {
        $db = Database::get();
        $ak = $this->getAttributeKey();
        $db->Replace(
            'atTopicSettings',
            array(
                'akID' => $ak->getAttributeKeyID(),
                'akTopicParentNodeID' => $akTopicParentNodeID,
                'akTopicTreeID' => $akTopicTreeID,
            ),
            array('akID'),
            true
        );
    }

    public function saveForm()
    {
        $db = Database::get();
        $sh = Core::make('helper/security');
        $ak = $this->getAttributeKey();
        $cleanIDs = array();
        $topicsArray = $_POST['topics_' . $ak->getAttributeKeyID()];
        $db->Execute('delete from atSelectedTopics where avID = ?', array($this->getAttributeValueID()));
        if (is_array($topicsArray) && count($topicsArray) > 0) {
            foreach ($topicsArray as $topicID) {
                $cleanIDs[] = $sh->sanitizeInt($topicID);
            }
            foreach ($cleanIDs as $topID) {
                $db->execute(
                    'INSERT INTO atSelectedTopics (avID, TopicNodeID) VALUES (?, ?)',
                    array($this->getAttributeValueID(), $topID)
                );
            }
        }
    }

    public function getValue()
    {
        $nodes = $this->getSelectedOptions();
        $topics = array();
        foreach ($nodes as $node) {
            $topic = Node::getByID($node);
            if (is_object($topic)) {
                $topics[] = $topic;
            }
        }

        return $topics;
    }

    public function deleteKey()
    {
        $db = Database::get();
        $arr = $this->attributeKey->getAttributeValueIDList();
        foreach ($arr as $id) {
            $db->Execute('delete from atDefault where avID = ?', array($id));
        }

        $db->Execute('delete from atTopicSettings where akID = ?', array($this->attributeKey->getAttributeKeyID()));
    }

    public function type_form()
    {
        $this->requireAsset('core/topics');
        $this->requireAsset('javascript', 'jquery/form');
        $this->load();
        $tt = new TopicTree();
        $defaultTree = $tt->getDefault();
        $topicTreeList = $tt->getList();
        $tree = $tt->getByID(Core::make('helper/security')->sanitizeInt($this->akTopicTreeID));
        if (!$tree) {
            $tree = $defaultTree;
        }
        $this->set('tree', $tree);
        $trees = array();
        if (is_object($defaultTree)) {
            $trees[] = $defaultTree;
            foreach ($topicTreeList as $ctree) {
                if ($ctree->getTreeID() != $defaultTree->getTreeID()) {
                    $trees[] = $ctree;
                }
            }
        }
        $this->set('trees', $trees);
        $this->set('parentNode', $this->akTopicParentNodeID);
    }

    public function validateKey($data = false)
    {
        if ($data == false) {
            $data = $this->post();
        }
        $e = parent::validateKey($data);
        if (!$data['akTopicParentNodeID'] || !$data['akTopicTreeID']) {
            $e->add(t('You must specify a valid topic tree parent node ID and topic tree ID.'));
        }

        return $e;
    }

    public function validateValue()
    {
        $val = $this->getValue();
        return is_array($val) && count($val) > 0;
    }

    public function validateForm($p)
    {
        $topicsArray = $_POST['topics_' . $this->attributeKey->getAttributeKeyID()];
        return is_array($topicsArray) && count($topicsArray) > 0;
    }

    public function getTopicParentNode()
    {
        $this->load();

        return $this->akTopicParentNodeID;
    }

    public function getTopicTreeID()
    {
        $this->load();

        return $this->akTopicTreeID;
    }

    protected function load()
    {
        $ak = $this->getAttributeKey();
        if (!is_object($ak)) {
            return false;
        }
        $db = Database::get();
        $row = $db->GetRow('select * from atTopicSettings where akID = ?', $ak->getAttributeKeyID());
        $this->akTopicParentNodeID = $row['akTopicParentNodeID'];
        $this->akTopicTreeID = $row['akTopicTreeID'];
    }

    public function duplicateKey($newAK)
    { // TODO this is going to need some work to function with the child options table...
        $this->load();
        $db = Database::get();
        $db->Replace(
            'atTopicSettings',
            array(
                'akID' => $newAK->getAttributeKeyID(),
                'akTopicParentNodeID' => $this->akTopicParentNodeID,
                'akTopicTreeID' => $this->akTopicTreeID,
            ),
            array('akID'),
            true
        );
    }
}
