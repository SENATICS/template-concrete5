<?php defined('C5_EXECUTE') or die("Access Denied."); 
/**
 * Archivo donde estructuramos el formulario que el usuario utiliza
 * tanto a cargar el bloque en una página o al editar uno ya existente.
 */
$fp = FilePermissions::getGlobal();
$tp = new TaskPermission();
?>

<!--
	Sección de código jQuery
-->
<script>
	//Token de seguridad de concrete5
    var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Loader::helper('validation/token')->generate('editor')?>";
    $(document).ready(function(){
        var ccmReceivingEntry = '';
        var galeriaEntriesContainer = $('.ccm-galeria-entries');
        var _templateGaleria = _.template($('#galeriaTemplate').html());

        var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('Estas Seguro?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-galeria-entry').remove();
                    doSortCount();
                }
            });
        }

        var attachSortDesc = function($obj) {
            $obj.click(function(){
               var myContainer = $(this).closest($('.ccm-galeria-entry'));
               myContainer.insertAfter(myContainer.next('.ccm-galeria-entry'));
               doSortCount();
            });
        }

        var attachSortAsc = function($obj) {
            $obj.click(function(){
                var myContainer = $(this).closest($('.ccm-galeria-entry'));
                myContainer.insertBefore(myContainer.prev('.ccm-galeria-entry'));
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
            $('.ccm-galeria-entry').each(function(index) {
                $(this).find('.ccm-galeria-entry-sort').val(index);
            });
        };
	
		/*seccion en la que se agregan los items pasados mediante
		 *la funcion edit() del controller al formulario
		*/
       <?php if($rows) {
           foreach ($rows as $row) { ?>
           galeriaEntriesContainer.append(_templateGaleria({
                fID: '<?php echo $row['fID'] ?>',
                <?php if(File::getByID($row['fID'])) { ?>
                image_url: '<?php echo File::getByID($row['fID'])->getThumbnailURL('file_manager_listing');?>',
                <?php } else { ?>
                image_url: '',
               <?php } ?>
                titulo: '<?php echo addslashes($row['titulo']) ?>',
                orden: '<?php echo $row['orden'] ?>'
            }));
        <?php }
        }?>

        doSortCount();

		/*
		**Cuando se hace clic en agregar item se carga un nuevo
		**conjunto de campos vacios.
		*/
        $('.ccm-add-galeria-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            galeriaEntriesContainer.append(_templateGaleria({
                fID: '',
                titulo: '',
                orden: '',
				image_url: ''
            }));
            var newGaleria = $('.ccm-galeria-entry').last();
            thisModal.scrollTop(newGaleria.offset().top);
            newGaleria.find('.redactor-content').redactor({
                minHeight: '200',
                'concrete5': {
                    filemanager: <?php echo $fp->canAccessFileManager()?>,
                    sitemap: <?php echo $tp->canAccessSitemap()?>,
                    lightbox: true
                }
            });
            attachDelete(newGaleria.find('.ccm-delete-galeria-entry'));
            attachFileManagerLaunch(newGaleria.find('.ccm-pick-galeria'));
            attachSortDesc(newGaleria.find('i.fa-sort-desc'));
            attachSortAsc(newGaleria.find('i.fa-sort-asc'));
            doSortCount();
        });
        attachDelete($('.ccm-delete-galeria-entry'));
        attachSortAsc($('i.fa-sort-asc'));
        attachSortDesc($('i.fa-sort-desc'));
        attachFileManagerLaunch($('.ccm-pick-galeria'));
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

    .ccm-galeria-block-container .redactor_editor {
        padding: 20px;
    }
    .ccm-galeria-block-container input[type="text"],
    .ccm-galeria-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-galeria-block-container .btn-success {
        margin-bottom: 20px;
    }

    .ccm-galeria-entries {
        padding-bottom: 30px;
    }

    .ccm-pick-galeria {
        padding: 15px;
        cursor: pointer;
        background: #dedede;
        border: 1px solid #cdcdcd;
        text-align: center;
        vertical-align: center;
    }

    .ccm-pick-galeria img {
        max-width: 100%;
    }

    .ccm-galeria-entry {
        position: relative;
    }



    .ccm-galeria-block-container i.fa-sort-asc {
        position: absolute;
        top: 10px;
        right: 10px;
        cursor: pointer;
    }

    .ccm-galeria-block-container i:hover {
        color: #5cb85c;
    }

    .ccm-galeria-block-container i.fa-sort-desc {
        position: absolute;
        top: 15px;
        cursor: pointer;
        right: 10px;
    }
</style>
<div class="ccm-galeria-block-container">
	<div class="form-group">
		<label><?php echo t('Cant. Items por página: ')?></label>
		<input type="number" min="1" class="form-control" name="cantItemsPag" required="required" placeholder="Cantidad de imágenes por página" value="<?php echo ($bObj->cantItemsPag);?>"/>
	</div>
	<span class="btn btn-success ccm-add-galeria-entry"><?php echo t('Agregar imagen') ?></span>
	<br>
    <label class="control-label"><?php echo t('Lista de imagenes:') ?></label>
    
</br>


    <div class="ccm-galeria-entries">

    </div>
	
</div>
<script type="text/template" id="galeriaTemplate">
    <div class="ccm-galeria-entry well">
        <i class="fa fa-sort-desc"></i>
        <i class="fa fa-sort-asc"></i>
        <div class="form-group">
            <label><?php echo t('Imagen') ?></label>
            <div class="ccm-pick-galeria">
                <% if (image_url.length > 0) { %>
                    <img src="<%= image_url %>" />
                <% } else { %>
                    <i class="fa fa-picture-o"></i>
                <% } %>
            </div>
            <input type="hidden" name="<?php echo $view->field('fID')?>[]" class="image-fID" value="<%=fID%>" />
        </div>
        <div class="form-group">
            <label><?php echo t('titulo') ?></label>
            <!--Importante tener en cuenta que para que el metodo save() del controller.php pueda tomar
				estos valores es necesario que el atributo name de  cada campo se llame como después
				vamos a referenciar en el método save() del controller.php
			-->
            <input type="text" name="<?php echo $view->field('titulo')?>[]" placeholder="Título de la imagen" value="<%=titulo%>" />
        </div>

        <input class="ccm-galeria-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>
        <div class="form-group">
            <span class="btn btn-danger ccm-delete-galeria-entry"><?php echo t('Delete Entry'); ?></span>
        </div>
    </div>
</script>
