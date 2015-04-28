<?php defined('C5_EXECUTE') or die("Access Denied."); 
$fp = FilePermissions::getGlobal();
$al = Loader::helper('concrete/asset_library');
$tp = new TaskPermission();
?>


<script>
	var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Loader::helper('validation/token')->generate('editor')?>";
	var colorEscogido = "<?php echo substr($color, 1); ?>";
	$(document).ready(function() {
		var leyTransparenciaEntriesContainer = $('.ccm-leyTransparencia-entries');
		var _templateLeyTransparencia = _.template($('#leyTransparenciaTemplate').html());
		
		
		var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('¿Está seguro?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-leyTransparencia-entry').remove();
                    doSortCount();
                }
            });
        } 
		
		var attachSortDesc = function($obj) {
            $obj.click(function(){
               var myContainer = $(this).closest($('.ccm-leyTransparencia-entry'));
               myContainer.insertAfter(myContainer.next('.ccm-leyTransparencia-entry'));
               doSortCount();
            });
        }

        var attachSortAsc = function($obj) {
            $obj.click(function(){
                var myContainer = $(this).closest($('.ccm-leyTransparencia-entry'));
                myContainer.insertBefore(myContainer.prev('.ccm-leyTransparencia-entry'));
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
            $('.ccm-leyTransparencia-entry').each(function(index) {
                $(this).find('.ccm-leyTransparencia-entry-sort').val(index);
            });
        }
		
		<?php if($items) {
			$conteoAux = 1;
			foreach($items as $item) { ?>
			leyTransparenciaEntriesContainer.append(_templateLeyTransparencia({
				id: '<?php echo $item['id']?>',
				nombre: '<?php echo $item['nombre']?>',
				orden: '<?php echo $item['orden'] ?>',  
                fID: '<?php echo $item['fID'] ?>',
                <?php if(File::getByID($item['fID'])) { ?>
                image_url: '<?php echo File::getByID($item['fID'])->getThumbnailURL('file_manager_listing');?>',
                file_title: '<?php echo File::getByID($item['fID'])->getTitle();?>',
                <?php } else { ?>
                image_url: '',
                file_title: ''
               <?php } ?>
			}));
			<?php
			}}
			?>
			
		doSortCount();
		
		$('.ccm-add-leyTransparencia-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            leyTransparenciaEntriesContainer.append(_templateLeyTransparencia({
				id: '',
                nombre: '',
                orden: '',
                fID: 0,
                image_url: '',
                file_title: ''
            }));
            var newItem = $('.ccm-leyTransparencia-entry').last();
            thisModal.scrollTop(newItem.offset().bottom);

            attachDelete(newItem.find('.ccm-delete-leyTransparencia-entry'));            
            attachFileManagerLaunch(newItem.find('.ccm-pick-archivo'));
            attachSortDesc(newItem.find('i.fa-sort-desc'));
            attachSortAsc(newItem.find('i.fa-sort-asc'));
            doSortCount();
        }); 
		attachDelete($('.ccm-delete-leyTransparencia-entry'));
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
    .ccm-ui .form-control.yt-vid-dims {
        width: 100px;
    }
	
	.ccm-leyTransparencia-block-container {
        padding: 20px;
    }
    .ccm-leyTransparencia-block-container input[type="text"],
    .ccm-leyTransparencia-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-leyTransparencia-block-container .btn-success {
        margin-bottom: 20px;
    }
	
	.ccm-leyTransparencia-entries {
        padding-bottom: 30px;
    }
	
	.ccm-leyTransparencia-entry {
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

<div class="ccm-leyTransparencia-block-container">
	<div class="ccm-leyTransparencia-entries">
		<img src="/application/blocks/leytransparencia/Cabecera.jpg" width="100%" style="border-radius:3px; margin-bottom:15px;"/>
	</div>
    <hr />
    <span class="btn btn-success ccm-add-leyTransparencia-entry"><?php echo t('Agregar Documentos') ?></span>
</div>



<!--El formulario se edita acá -->	
<script type="text/template" id="leyTransparenciaTemplate">
	<div class="ccm-leyTransparencia-entry well">
		<style>.fa{font-size:25px !important; display:block !important; margin-bottom:-13px;} .sub-menuu{transition:all .3s; cursor:pointer} .sub-menuu:hover{color:#49c04c}</style>
		<div style="float:right;">
        	<div class="sub-menuu"><i class="fa fa-sort-asc"></i></div>
			<div class="sub-menuu"><i class="fa fa-sort-desc"></i></div>
		</div>
		<div class="form-group">
			<label><?php echo t('Nombre: ')?></label>

			<input type="text" class="form-control" name="<?php echo $view->field('nombre')?>[]" value="<%=nombre%>" placeholder="Nombre del Enlace" required="required" />
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
            <span class="btn btn-danger ccm-delete-leyTransparencia-entry"><?php echo t('Borrar Item'); ?></span>
        </div>
				<div class="form-group">
		<input class="ccm-leyTransparencia-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>	
		</div>
	</div>
</script>
