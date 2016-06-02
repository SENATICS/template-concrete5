<?php 
defined('C5_EXECUTE') or die(_("Access Denied.")); 
$c = Page::getCurrentPage();
if(!count($items)>0){
    echo "<div class='well'>You have not choosen a fileset, or there's no files in the set you have choosen.</div>";
}
else {
    $colWidth = 100/$cols;
    $mobileColWidth = 100/$colsMobile;    
?>
<style>
    #vivid-thumb-gallery-<?php echo $bID?> { overflow: auto; }
        #vivid-thumb-gallery-<?php echo $bID?> .thumb-item { box-sizing: border-box; float: left; width: <?php echo $mobileColWidth?>%; padding: 10px; }
        #vivid-thumb-gallery-<?php echo $bID?> .thumb-item img { max-width: 100%; height: auto !important; }
        @media only screen and (min-width:768px){
            #vivid-thumb-gallery-<?php echo $bID?> .thumb-item { box-sizing: border-box; float: left; width: <?php echo $colWidth?>%; }   
        }
    .blackout { position: fixed; z-index: 9998; background: rgba(0,0,0,0.4); width: 100%; height: 100%; top: 0; left: 0; }
    #imagelightbox { position: fixed; z-index: 9999; -ms-touch-action: none; touch-action: none; }
</style>
<?php  if (!$c->isEditMode()) { ?>
<script type="text/javascript">
$(function(){
    $(".imagelightbox").imageLightbox({
        onStart: function(){
            $("body").append("<div class='blackout'>");
        },
        onEnd: function(){
            $(".blackout").remove();
        }
    });
});
</script>
<?php  } ?>
<div class="vivid-thumb-gallery" id="vivid-thumb-gallery-<?php echo $bID?>">
    <?php     
    $ih = Loader::helper("image");
    $page = Page::getCurrentPage();
    foreach($items as $item){            
            $fileObj = File::getByID($item['fID']);  
            $thumb = $ih->getThumbnail($fileObj,$thumbWidth,$thumbHeight,true);
            $fullImg = $ih->getThumbnail($fileObj,$imageWidth,$imageHeight,false);
            ?>
                <div class="thumb-item">
                    <a href="<?php echo $fullImg->src?>" class="imagelightbox" data-imagelightbox="gallery<?php echo $bID?>"><img src="<?php echo $thumb->src?>"></a>
                </div>
    <?php  
    }//for each
}//if items*/
?>
</div>
