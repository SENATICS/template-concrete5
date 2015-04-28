<?php defined('C5_EXECUTE') or die("Access Denied."); 
$fp = FilePermissions::getGlobal();
$al = Loader::helper('concrete/asset_library');
$bf = null;
$tp = new TaskPermission();
?>


<script>
	var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Loader::helper('validation/token')->generate('editor')?>";
	var colorEscogido = "<?php echo substr($color, 1); ?>";
	

	$(document).ready(function() {
		var transparenciaActivaEntriesContainer = $('.ccm-transparenciaActiva-entries');
		var _templateTransparenciaActiva = _.template($('#transparenciaActivaTemplate').html());
		
		
		var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('¿Está seguro?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-transparenciaActiva-entry').remove();
                    doSortCount();
                }
            });
        } 
		
		var attachSortDesc = function($obj) {
            $obj.click(function(){
               var myContainer = $(this).closest($('.ccm-transparenciaActiva-entry'));
               myContainer.insertAfter(myContainer.next('.ccm-transparenciaActiva-entry'));
               doSortCount();
            });
        }

        var attachSortAsc = function($obj) {
            $obj.click(function(){
                var myContainer = $(this).closest($('.ccm-transparenciaActiva-entry'));
                myContainer.insertBefore(myContainer.prev('.ccm-transparenciaActiva-entry'));
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
                        oldLauncher.next('.archivo-fID').val(file.fID)
                    });
                });
            });
        }
		
		var doSortCount = function(){
            $('.ccm-transparenciaActiva-entry').each(function(index) {
                $(this).find('.ccm-transparenciaActiva-entry-sort').val(index);
            });
        }
		
		<?php if($items) {
			$conteoAux = 1;
			foreach($items as $item) { ?>
			transparenciaActivaEntriesContainer.append(_templateTransparenciaActiva({
				id: '<?php echo $item['id']?>',
				orden: '<?php echo $item['orden'] ?>',  
                fID: '<?php echo $item['fID'] ?>',
                <?php if(File::getByID($item['fID'])) { ?>
                image_url: '<?php echo htmlspecialchars(File::getByID($item['fID'])->getThumbnailURL('file_manager_listing'));?>',
                file_title: "<?php echo htmlspecialchars(File::getByID($item['fID'])->getTitle());?>",
                <?php } else { ?>
                image_url: '',
                file_title: '',
               <?php } ?>
                texto_link: "<?php echo htmlspecialchars($item['texto_link']); ?>"
			}));
			<?php
			}}
			?>
			
		doSortCount();
		
		$('.ccm-add-transparenciaActiva-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            transparenciaActivaEntriesContainer.append(_templateTransparenciaActiva({
				id: '',
                nombre: '',
                orden: '',
                fID: 0,
                image_url: '',
                file_title: '',
                texto_link: ''
            }));
            var newItem = $('.ccm-transparenciaActiva-entry').last();
            thisModal.scrollTop(newItem.offset().bottom);
			newItem.find('.redactor-content').redactor({
                minHeight: '200',
                'concrete5': {
                    filemanager: <?php echo $fp->canAccessFileManager()?>,
                    sitemap: <?php echo $tp->canAccessSitemap()?>,
                    lightbox: true
                }
            });
            attachDelete(newItem.find('.ccm-delete-transparenciaActiva-entry'));            
            attachFileManagerLaunch(newItem.find('.ccm-pick-archivo'));
            attachSortDesc(newItem.find('i.fa-sort-desc'));
            attachSortAsc(newItem.find('i.fa-sort-asc'));
            doSortCount();
        }); 
		attachDelete($('.ccm-delete-transparenciaActiva-entry'));
        attachSortAsc($('i.fa-sort-asc'));
        attachSortDesc($('i.fa-sort-desc'));
        attachFileManagerLaunch($('.ccm-pick-archivo'));
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
	.ccm-transparenciaActiva-block-container .redactor_editor {
        padding: 20px;
    }
    
    .ccm-ui .form-control.yt-vid-dims {
        width: 100px;
    }
	
    .ccm-transparenciaActiva-block-container input[type="text"],
    .ccm-transparenciaActiva-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-transparenciaActiva-block-container .btn-success {
        margin-bottom: 20px;
    }
	
	.ccm-transparenciaActiva-entries {
        padding-bottom: 30px;
    }
	
	.ccm-transparenciaActiva-entry {
		position: relative;
	}
    
    .ccm-pick-archivo {
        padding: 15px;
        cursor: pointer;
        background: #dedede;
        border: 1px solid #cdcdcd;
        text-align: center;
        vertical-align: center;
    }

    .ccm-pick-archivo img {
        max-width: 15%;
    }
	
	
</style>

<div class="ccm-transparenciaActiva-block-container">
    <div class="form-group">
        <label><?php echo t('Título del documento: ')?></label>
        <input type="text" class="form-control" name="titulo" value="<?php echo $titulo ?>" placeholder="Título del item" required="required" />
    </div>
    <div class="form-group">
        <label><?php echo t('Resumen: ')?></label>
         <div class="redactor-edit-content"></div>
            <textarea style="display: none" class="redactor-content" name="resumen"><?php echo $resumen?></textarea>
    </div>
    <div class="form-group">
        <label><?php echo t('Mes: ')?></label>
        <?php echo $form->select('mes', array(1=>'Enero', 2=>'Febrero', 3=>'Marzo', 4=>'Abril', 5=>'Mayo', 6=>'Junio',
                                              7=>'Julio', 8=>'Agosto', 9=>'Septiembre', 10=>'Octubre', 11=>'Noviembre',
                                              12=>'Diciembre'), $mes);?>
    </div>
    <div class="form-group">
        <label><?php echo t('Autor: ')?></label>
        <input type="text" class="form-control" name="autor" value="<?php echo $autor ?>" placeholder="Autor" required="required" />
    </div>
    <br />
	<div class="ccm-transparenciaActiva-entries">

	</div>
    <hr />
    <span class="btn btn-success ccm-add-transparenciaActiva-entry"><?php echo t('Agregar item') ?></span>
</div>



<!--El formulario se edita acá -->	
<script type="text/template" id="transparenciaActivaTemplate">
	<div class="ccm-transparenciaActiva-entry well">
		<style>.fa{font-size:25px !important; display:block !important; margin-bottom:-13px;} .sub-menuu{transition:all .3s; cursor:pointer} .sub-menuu:hover{color:#49c04c}</style>
		<div style="float:right;">
        	<div class="sub-menuu"><i class="fa fa-sort-asc"></i></div>
			<div class="sub-menuu"><i class="fa fa-sort-desc"></i></div>
		</div>
		
		<div class="form-group">
            <label><?php echo t('Archivo') ?></label>
            <div class="ccm-pick-archivo">
				<% if (image_url.length > 0) { %>
                    <img src="<%= image_url %>" />
                    <p><%= file_title %></p>
                <% } else { %>
                    <i class="fa fa-picture-o"></i>
                <% } %>
            </div>
            <input type="hidden" name="<?php echo $view->field('fID')?>[]" class="archivo-fID" value="<%=fID%>" />
        </div>
        
        <div class="form-group">
			<label><?php echo t('Texto del enlace: ')?></label>

			<input type="text" class="form-control" name="<?php echo $view->field('texto_link')?>[]" value="<%=texto_link%>" placeholder="Texto del item" required="required" />
		</div>
        
		<div class="form-group">
            <span class="btn btn-danger ccm-delete-transparenciaActiva-entry"><?php echo t('Borrar Item'); ?></span>
        </div>
				<div class="form-group">
		<input class="ccm-transparenciaActiva-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>	
		</div>
	</div>
</script>
