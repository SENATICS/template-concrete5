<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>

<strong class="ccm-conversation-message-count"><?php echo t2('%d Message', '%d Messages', $conversation->getConversationMessagesTotal())?></strong>
