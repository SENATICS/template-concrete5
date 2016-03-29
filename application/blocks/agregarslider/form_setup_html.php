<?php  defined('C5_EXECUTE') or die("Access Denied.");

$fp = FilePermissions::getGlobal();
$tp = new TaskPermission();
?>
<script>
    var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Loader::helper('validation/token')->generate('editor')?>";
    $(document).ready(function(){
        var ccmReceivingEntry = '';
        var sliderEntriesContainer = $('.ccm-image-slider-entries');
        var _templateSlide = _.template($('#imageTemplate').html());
        var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('Are you sure?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-image-slider-entry').remove();
                    doSortCount();
                }
            });
        }

        var attachSortDesc = function($obj) {
            $obj.click(function(){
               var myContainer = $(this).closest($('.ccm-image-slider-entry'));
               myContainer.insertAfter(myContainer.next('.ccm-image-slider-entry'));
               doSortCount();
            });
        }

        var attachSortAsc = function($obj) {
            $obj.click(function(){
                var myContainer = $(this).closest($('.ccm-image-slider-entry'));
                myContainer.insertBefore(myContainer.prev('.ccm-image-slider-entry'));
                doSortCount();
            });
        }

        var attachFileManagerLaunch = function($obj) {
            $obj.click(function(){
                var oldLauncher = $(this);
                ConcreteFileManager.launchDialog(function (data) {
                    ConcreteFileManager.getFileDetails(data.fID, function(r) {
                        jQuery.fn.dialog.hideLoader();
                        var file = r.files[0];
                        oldLauncher.html(file.resultsThumbnailImg);
                        oldLauncher.next('.image-fID').val(file.fID)
                    });
                });
            });
        }

        var doSortCount = function(){
            $('.ccm-image-slider-entry').each(function(index) {
                $(this).find('.ccm-image-slider-entry-sort').val(index);
            });
        };

       <?php if($rows) {
           foreach ($rows as $row) { ?>
           sliderEntriesContainer.append(_templateSlide({
                fID: '<?php echo $row['fID'] ?>',
                <?php if(File::getByID($row['fID'])) { ?>
                image_url: '<?php echo File::getByID($row['fID'])->getThumbnailURL('file_manager_listing');?>',
                <?php } else { ?>
                image_url: '',
               <?php } ?>
                link_url: '<?php echo $row['linkURL'] ?>',
                title: '<?php echo addslashes($row['title']) ?>',
                description: '<?php echo str_replace(array("\t", "\r", "\n"), "", addslashes($row['description']))?>',
                sort_order: '<?php echo $row['sortOrder'] ?>'
            }));
        <?php }
        }?>

        doSortCount();

        $('.ccm-add-image-slider-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            sliderEntriesContainer.append(_templateSlide({
                fID: '',
                title: '',
                link_url: '',
                cID: '',
                description: '',
                sort_order: '',
                image_url: ''
            }));
            var newSlide = $('.ccm-image-slider-entry').last();
            thisModal.scrollTop(newSlide.offset().top);
            newSlide.find('.redactor-content').redactor({
                minHeight: '200',
                'concrete5': {
                    filemanager: <?php echo $fp->canAccessFileManager()?>,
                    sitemap: <?php echo $tp->canAccessSitemap()?>,
                    lightbox: true
                }
            });
            attachDelete(newSlide.find('.ccm-delete-image-slider-entry'));
            attachFileManagerLaunch(newSlide.find('.ccm-pick-slide-image'));
            attachSortDesc(newSlide.find('i.fa-sort-desc'));
            attachSortAsc(newSlide.find('i.fa-sort-asc'));
            doSortCount();
        });
        attachDelete($('.ccm-delete-image-slider-entry'));
        attachSortAsc($('i.fa-sort-asc'));
        attachSortDesc($('i.fa-sort-desc'));
        attachFileManagerLaunch($('.ccm-pick-slide-image'));
        $(function() {  // activate redactors
            $('.redactor-content').redactor({
                minHeight: '200',
                'concrete5': {
                    filemanager: <?php echo $fp->canAccessFileManager()?>,
                    sitemap: <?php echo $tp->canAccessSitemap()?>,
                    lightbox: true
                }
            });
        });
    });
</script>
<style>

    .ccm-image-slider-block-container .redactor_editor {
        padding: 20px;
    }
    .ccm-image-slider-block-container input[type="text"],
    .ccm-image-slider-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-image-slider-block-container .btn-success {
        margin-bottom: 20px;
    }

    .ccm-image-slider-entries {
        padding-bottom: 30px;
    }

    .ccm-pick-slide-image {
        padding: 15px;
        cursor: pointer;
        background: #dedede;
        border: 1px solid #cdcdcd;
        text-align: center;
        vertical-align: center;
    }

    .ccm-pick-slide-image img {
        max-width: 100%;
    }

    .ccm-image-slider-entry {
        position: relative;
    }



    .ccm-image-slider-block-container i.fa-sort-asc {
        position: absolute;
        top: 10px;
        right: 10px;
        cursor: pointer;
    }

    .ccm-image-slider-block-container i:hover {
        color: #5cb85c;
    }

    .ccm-image-slider-block-container i.fa-sort-desc {
        position: absolute;
        top: 15px;
        cursor: pointer;
        right: 10px;
    }
    .alineado{
        display:inline-block;   
    }
    .ccm-ui input[type="radio"]{
        margin:1px 0 0;
        margin-left:-15px !important;
    }
    .espaciado_item{
        margin-right:15px;
        font-weight:bold;
    }
    input[type="number"]{
        border:1px solid #ccc;  
        padding:4px;
        color:#555555;
        border-radius:3px;
        width:70px;
    }
    .perzonalizacion .form-group, .perzonalizacion .radio{
        margin-bottom:0px;
        margin-top:0px;
    }
</style>
<div class="ccm-image-slider-block-container ">
    
    <div class="col-xs-5 perzonalizacion" style="position:fixed">
    
        <label class="control-label" style="display:block"><?php echo t('Transición: ') ?></label>
        <div class="form-group alineado espaciado_item">
            <div class="radio">
                <label><input type="radio" name="<?php echo $view->field('navigationType')?>" value="0" <?php echo $navigationType == 0 ? 'checked' : '' ?> /><?php echo t('Fade') ?></label>
            </div>
        </div>
        <div class="form-group alineado espaciado_item">
            <div class="radio">
                <label><input type="radio" name="<?php echo $view->field('navigationType')?>" value="1" <?php echo $navigationType == 1 ? 'checked' : '' ?> /><?php echo t('Slide') ?></label>
            </div>
        </div>
        <div class="form-group alineado espaciado_item">
            <div class="radio">
                <label><input type="radio" name="<?php echo $view->field('navigationType')?>" value="2" <?php echo $navigationType == 2 ? 'checked' : '' ?> /><?php echo t('goDown') ?></label>
            </div>
        </div>
        <div class="form-group alineado espaciado_item">
            <div class="radio">
                <label><input type="radio" name="<?php echo $view->field('navigationType')?>" value="3" <?php echo $navigationType == 3 ? 'checked' : '' ?> /><?php echo t('fadeUp') ?></label>
            </div>
        </div>

        <hr>


        <label class="control-label espaciado_item"><?php echo t('Mostrar Navegación: ') ?></label>
        <div class="form-group alineado espaciado_item">
            <div class="radio">
                <label><input type="radio" name="<?php echo $view->field('navegationShow')?>" value="0" <?php echo $navegationShow == 0 ? 'checked' : '' ?> /><?php echo t('Si') ?></label>
            </div>
        </div>
        <div class="form-group alineado">
            <div class="radio">
                <label><input type="radio" name="<?php echo $view->field('navegationShow')?>" value="1" <?php echo $navegationShow == 1 ? 'checked' : '' ?> /><?php echo t('No') ?></label>
            </div>
        </div>
        
        <hr>
        
        <label class="control-label espaciado_item"><?php echo t('Auto ajuste: ') ?></label>
        <div class="form-group alineado espaciado_item">
            <div class="radio">
                <label><input type="radio" name="<?php echo $view->field('autoHeight')?>" value="0" <?php echo $autoHeight == 0 ? 'checked' : '' ?> /><?php echo t('Si') ?></label>
            </div>
        </div>
        <div class="form-group alineado">
            <div class="radio">
                <label><input type="radio" name="<?php echo $view->field('autoHeight')?>" value="1" <?php echo $autoHeight == 1 ? 'checked' : '' ?> /><?php echo t('No') ?></label>
            </div>
        </div>
        
        <hr>
        
        <div class="form-group">
            <label><?php echo t('Tiempo entre cada Slide (en Segundos)') ?></label>
            <input type="number" name="<?php echo $view->field('timeSlide')?>" value="<?php echo $timeSlide ?>" placeholder="en Segundo" />
        </div>
        <hr>
        <a href="#abajo_items"> <span class="btn btn-success ccm-add-image-slider-entry"><?php echo t('Agregar nuevo Item') ?></span></a>
    </div>
    <div class="col-xs-6" style="position:absolute; margin-left:43%;">
        <div class="ccm-image-slider-entries"></div>
        <div id="abajo_items"></div>
    </div>
</div>
<script type="text/template" id="imageTemplate">
    <div class="ccm-image-slider-entry well">
        <i class="fa fa-sort-desc"></i>
        <i class="fa fa-sort-asc"></i>
        <div class="form-group">
            <label><?php echo t('Imagen') ?></label>
            <div class="ccm-pick-slide-image">
                <% if (image_url.length > 0) { %>
                    <img src="<%= image_url %>" />
                <% } else { %>
                    <i class="fa fa-picture-o"></i>
                <% } %>
            </div>
            <input type="hidden" name="<?php echo $view->field('fID')?>[]" class="image-fID" value="<%=fID%>" />
        </div>
        <div class="form-group">
            <label><?php echo t('Titulo') ?></label>
            <input type="text" name="<?php echo $view->field('title')?>[]" value="<%=title%>" placeholder="Titulo del Slider"/>
        </div>
        <div class="form-group">
            <label><?php echo t('Descripción') ?></label>
            <div class="redactor-edit-content"></div>
            <textarea style="display: none" class="redactor-content" name="<?php echo $view->field('description')?>[]"><%=description%></textarea>
        </div>
        <div class="form-group">
            <label><?php echo t('URL') ?></label>
            <input type="text" name="linkURL[]" value="<%=link_url%>" />
        </div>
        <input class="ccm-image-slider-entry-sort" type="hidden" name="<?php echo $view->field('sortOrder')?>[]" value="<%=sort_order%>"/>
        <div class="form-group">
            <span class="btn btn-danger ccm-delete-image-slider-entry" style="width:100%"><?php echo t('Eliminar Item'); ?></span>
        </div>
    </div>
</script>
