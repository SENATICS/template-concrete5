<?php
use \Concrete\Core\Localization\Localization;

header('Content-type: text/javascript; charset=' . APP_CHARSET);

$jh = Core::make('helper/json');

?>
jQuery.ui.dynatree.prototype.options.strings.loading = <?php echo $jh->encode(t('Loading...'))?>;
jQuery.ui.dynatree.prototype.options.strings.loadError = <?php echo $jh->encode(t('Load error!'))?>;
