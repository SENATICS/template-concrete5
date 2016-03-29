<?php   defined('C5_EXECUTE') or die("Access Denied.");?>
<div class="breadcrumb-trail"><a href="<?php  echo $homePageLink;?>"><i class="fa fa-home"></i></a>
<?php    
$sublevels = $this->controller->getSubLevels();
if (!empty($sublevels)) {
	foreach($sublevels as $p) {
		echo '<span class="breadcrumb-trail-sub"> <span class="delim">'. h($delimiter) .'</span> ';
		if ($p["link"] !== false) {
			echo '<a href="'. $p["link"] .'">';
		} else {
			echo '<strong>';
		}
		echo $p["title"];
		if ($p["link"] !== false) {
			echo '</a>';
		} else {
			echo '</strong>';
		}
		echo '</span>';
	}
}
?>
</div>