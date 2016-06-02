<?php    
defined('C5_EXECUTE') or die(_("Access Denied."));
$al = Loader::helper('concrete/asset_library');

?>
<style>
    #btn-launch-file-manager { margin-top: 23px; }
    .thumb-item-shell { border: 1px solid #fff; box-shadow: 0 0 5px #ccc; margin: 0 10px 10px; display: inline-block; cursor: move; }
    .thumb-file-name { font-size: 9px; }
</style>
<?php 
$addSelected = true;
?>
<p>
<?php  print Loader::helper('concrete/ui')->tabs(array(
    array('pane-thumbs', t('Items'), $addSelected),
    array('pane-settings', t('Settings'))
));?>
</p>
<div class="ccm-tab-content" id="ccm-tab-content-pane-thumbs">
        
    <div class="form-group">
        <label><?php echo t('Select Fileset')?></label>
        <select class="form-control" name="fileset" id="form-select-fileset">
            <option value="none"><?php echo t('None')?></option>
            <?php   foreach ($sets as $set){ ?>
            <option value="<?php   echo $set->fsID; ?>" <?php  if($fileset==$set->fsID){echo "selected";}?>><?php echo $set->fsName?></option>
            <?php  } ?>
        </select>
    </div>
    <!-- leaving this alone for now -->
    <!--<div class="col-xs-3">
        <a href="javascript:launchFileManager();" class="btn btn-primary" id="btn-launch-file-manager">Launch File Manager</a>
    </div>-->
    
    <div class="well" id="items-container">
	    
	    
	    
    </div>  
    
    <input type="hidden" id="toolURL" value="<?php echo $toolsURL?>">
        
</div>
<div class="ccm-tab-content" id="ccm-tab-content-pane-settings">
    
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <?php  echo $form->label("thumbWidth", t("Thumb Width")); ?>
                <div class="input-group">
                    <?php  echo $form->text("thumbWidth",$thumbWidth?$thumbWidth:"300"); ?>
                    <div class="input-group-addon">px</div>
                </div>
            </div>
        </div>
        <div class="col-xs-6">
            <div class="form-group">
                <?php  echo $form->label("thumbHeight", t("Thumb Height")); ?>
                <div class="input-group">
                    <?php  echo $form->text("thumbHeight",$thumbHeight?$thumbHeight:"220"); ?>
                    <div class="input-group-addon">px</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-6">
            <div class="form-group">
                <?php  echo $form->label("imageWidth", t("Large Image Width")); ?>
                <div class="input-group">
                    <?php  echo $form->text("imageWidth",$imageWidth?$imageWidth:"800"); ?>
                    <div class="input-group-addon">px</div>
                </div>
            </div>
        </div>
        <div class="col-xs-6">
            <div class="form-group">
                <?php  echo $form->label("imageHeight", t("Large Image Height")); ?>
                <div class="input-group">
                    <?php  echo $form->text("imageHeight",$imageHeight?$imageHeight:"600"); ?>
                    <div class="input-group-addon">px</div>
                </div>
            </div>
        </div>
    </div>
    <div class="form-group">
        <?php  echo $form->label("zoomType", t("Zoom/Enlarge mode")); ?>
        <?php  echo $form->select("zoomType", array(""=>"Zoom", "innerzoom"=>"Inner Zoom", "lenszoom"=>"Lens Zoom", "lightbox"=>"Lightbox"), $zoomType); ?>
    </div>
    <div class="row">        
        <div class="col-xs-6">
            <div class="form-group">
                <?php  echo $form->label("cols", t("Number of Columns")); ?>
                <?php  echo $form->select("cols",array("1"=>"1","2"=>"2","3"=>"3","4"=>"4","6"=>"6"),$cols?$cols:"4"); ?>
            </div>
        </div>
        <div class="col-xs-6">
            <div class="form-group">
                <?php  echo $form->label("colsMobile", t("# of Cols on Mobile <768px")); ?>
                <?php  echo $form->select("colsMobile",array("1"=>"1","2"=>"2","3"=>"3","4"=>"4","6"=>"6"),$colsMobile?$colsMobile:"2"); ?>
            </div>
        </div>
    </div>
    
</div>
<script>
     
<?php  if(!$bID){$bID=0;}?>     
function indexItems(){
    $(".thumb-item-shell").each(function(i){
        $(this).find(".item-sort").val(i);
    });
}
$("#items-container").sortable({
    update: function(){
        indexItems();
    }
});
function launchFileManager(){
    ConcreteFileManager.launchDialog();
};
function getThumbs(){
    var selectedFileSet = $("#form-select-fileset").val();
    var toolURL = $("#toolURL").val();
    //if they selected a fileset
    if(selectedFileSet != 'none'){
        $.ajax({
            type: "POST",
            data: {fsID: selectedFileSet, bID: <?php echo $bID?>},
            dataType: 'json',
            url: toolURL,
            success: function(thumbs) {
                $("#items-container").html(thumbs);
                indexItems();
            },
            error: function(){
                $("#items-container").html("Something went wrong...");
            }
        });
    } else{
        //they selected none
        $("#items-container").html("Choose a Fileset");
    }
}
getThumbs();
$("#form-select-fileset").change(function(){
    getThumbs();
});    
</script>