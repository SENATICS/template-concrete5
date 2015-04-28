<?php defined('C5_EXECUTE') or die("Access Denied.");
use \Concrete\Core\Conversation\Message\MessageList as ConversationMessageList;
use \Concrete\Core\Conversation\Message\ThreadedList as ConversationMessageThreadedList;

$cnv = Conversation::getByID($_POST['cnvID']);
if (is_object($cnv)) {
	$displayForm = true;
	$enableOrdering = strip_tags($_POST['enableOrdering'] == 1) ? true : false;
	$enablePosting = strip_tags($_POST['enablePosting'] == 1) ? true : false;
	$paginate = strip_tags($_POST['paginate'] == 1) ? true : false;
	$enableCommentRating = strip_tags($_POST['enableCommentRating']);

    $cp = new Permissions($cnv);
    if (!$cp->canAddConversationMessage()) {
        $enablePosting = false;
    }

	if (in_array($_POST['displayMode'], array('flat'))) {
		$displayMode = strip_tags($_POST['displayMode']);
	} else {
		$displayMode = 'threaded';
	}
	
	$addMessageLabel = t('Add Message');
	if ($_POST['addMessageLabel']) {
		$addMessageLabel = Loader::helper('security')->sanitizeString($_POST['addMessageLabel']); //ya satiniza el valor
	}
	switch($_POST['task']) {
		case 'get_messages':
			$displayForm = false;
			break;
	}

	switch($displayMode) {
		case 'flat':
			$ml = new ConversationMessageList();
			$ml->filterByConversation($cnv);
			break;
		default: // threaded
			$ml = new ConversationMessageThreadedList($cnv);
			break;
	}

	switch($_POST['orderBy']) {
		case 'date_desc':
			$ml->sortByDateDescending();
			break;
		case 'date_asc':
			$ml->sortByDateAscending();
			break;
		case 'rating':
			$ml->sortByRating();
			break;
	}

	if ($paginate && Loader::helper('validation/numbers')->integer($_POST['itemsPerPage'])) {
		$ml->setItemsPerPage(strip_tags($_POST['itemsPerPage']));
	} else {
		$ml->setItemsPerPage(-1);
	}

	$summary = $ml->getSummary();
	$totalPages = $summary->pages;
	$args = array(
		'cID' => $_POST['cID'],
		'bID' => $_POST['blockID'],
		'conversation' => $cnv,
		'messages' => $ml->getPage(),
		'displayMode' => $displayMode,
		'displayForm' => $displayForm,
		'enablePosting' => $enablePosting,
		'addMessageLabel' => $addMessageLabel,
		'currentPage' => 1,
		'totalPages' => $totalPages,
		'orderBy' => strip_tags($_POST['orderBy']),
		'enableOrdering' => $enableOrdering,
		'displayPostingForm' => strip_tags($_POST['displayPostingForm']),
		'insertNewMessages' => strip_tags($_POST['insertNewMessages']),
		'enableCommentRating' => strip_tags($_POST['enableCommentRating']),
		'dateFormat' => strip_tags($_POST['dateFormat']), 
		'customDateFormat' => strip_tags($_POST['customDateFormat']),
		'blockAreaHandle' => strip_tags($_POST['blockAreaHandle']),
        'attachmentsEnabled' => strip_tags($_POST['attachmentsEnabled']),
        'attachmentOverridesEnabled' => strip_tags($_POST['attachmentOverridesEnabled'])
	);
	Loader::element('conversation/display', $args);
}
