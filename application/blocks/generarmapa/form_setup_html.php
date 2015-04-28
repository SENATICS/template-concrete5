<?php defined('C5_EXECUTE') or die("Access Denied."); 
$fp = FilePermissions::getGlobal();
$tp = new TaskPermission();
?>


<script>
	var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Loader::helper('validation/token')->generate('editor')?>";
	var colorEscogido = "<?php echo substr($color, 1); ?>";
	$(document).ready(function() {
		var mapaEntriesContainer = $('.ccm-mapa-entries');
		var _templateMapa = _.template($('#mapaTemplate').html());
		
		
		var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('¿Está seguro?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-mapa-entry').remove();
                    doSortCount();
                }
            });
        } 
		
		var attachSortDesc = function($obj) {
            $obj.click(function(){
               var myContainer = $(this).closest($('.ccm-mapa-entry'));
               myContainer.insertAfter(myContainer.next('.ccm-mapa-entry'));
               doSortCount();
            });
        }

        var attachSortAsc = function($obj) {
            $obj.click(function(){
                var myContainer = $(this).closest($('.ccm-mapa-entry'));
                myContainer.insertBefore(myContainer.prev('.ccm-mapa-entry'));
                doSortCount();
            });
        }
		
		var doSortCount = function(){
            $('.ccm-mapa-entry').each(function(index) {
                $(this).find('.ccm-mapa-entry-sort').val(index);
            });
        }
		
		<?php if($items) {
			$conteoAux = 1;
			foreach($items as $item) { ?>
			
			mapaEntriesContainer.append(_templateMapa({
				nombre: '<?php echo $item['nombre']?>',
				orden: '<?php echo $item['orden'] ?>',
				cuerpo: '<?php echo $item['cuerpo'] ?>',
				icono: '<?php echo $item['icono'] ?>',
				comboIcono: '<?php echo $form->select('icono[]', array(0 => 'Icono Verde', 1 => 'Icono Naranja', 2 => 'Icono Rojo'), $item['icono']) ?>',
				<?php error_log("valor de icono: " . $item['icono']); ?>
                x: '<?php echo $item['x'] ?>',
                y: '<?php echo $item['y'] ?>'
                
			}, function() {
					console.log("op");
				}));
			<?php
			}}
			?>
			
		doSortCount();
		
		$('.ccm-add-mapa-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            mapaEntriesContainer.append(_templateMapa({
                nombre: '',
                orden: '',
                cuerpo: '',
				icono: '',
				comboIcono: '<?php echo $form->select('icono', array(0 => 'Icono Verde', 1 => 'Icono Naranja', 2 => 'Icono Rojo')) ?>',
                x: '',
                y: ''
            }));
            var newItem = $('.ccm-mapa-entry').last();
            thisModal.scrollTop(newItem.offset().bottom);
			newItem.find('.redactor-content').redactor({
                minHeight: '200',
                'concrete5': {
                    filemanager: <?php echo $fp->canAccessFileManager()?>,
                    sitemap: <?php echo $tp->canAccessSitemap()?>,
                    lightbox: true
                }
            });
            attachDelete(newItem.find('.ccm-delete-mapa-entry'));            
            attachSortDesc(newItem.find('i.fa-sort-desc'));
            attachSortAsc(newItem.find('i.fa-sort-asc'));
            doSortCount();
        }); 
		attachDelete($('.ccm-delete-mapa-entry'));
        attachSortAsc($('i.fa-sort-asc'));
        attachSortDesc($('i.fa-sort-desc'));
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
	
    .ccm-mapa-block-container .redactor_editor {
        padding: 20px;
    }
	.ccm-mapa-block-container {
        padding: 20px;
    }
    .ccm-mapa-block-container input[type="text"],
    .ccm-mapa-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-mapa-block-container .btn-success {
        margin-bottom: 20px;
    }
	
	.ccm-mapa-entries {
        padding-bottom: 30px;
    }
	
	.ccm-mapa-entry {
		position: relative;
	}
	
	
</style>

<div class="ccm-mapa-block-container">
	<div class="form-group">
        <label><?php echo t('Título del mapa:')?></label>
        <input type="text" name="titulo" value="<?php echo $titulo?>">
	</div>
	<div class="form-group">
        <label><?php echo t('Zoom (del 1 al 21):')?></label>
        <input type="number" name="zoom" min="1" max="21" value="<?php echo $zoom?>">
	</div>
    <hr />
	<div class="ccm-mapa-entries">

	</div>
    <hr />
    <span class="btn btn-success ccm-add-mapa-entry"><?php echo t('Agregar item') ?></span>
</div>



<!--El formulario se edita acá -->	
<script type="text/template" id="mapaTemplate">
	<div class="ccm-mapa-entry well">
		<style>.fa{font-size:25px !important; display:block !important; margin-bottom:-13px;} .sub-menuu{transition:all .3s; cursor:pointer} .sub-menuu:hover{color:#49c04c}</style>
		<div style="float:right;">
        	<div class="sub-menuu"><i class="fa fa-sort-asc"></i></div>
			<div class="sub-menuu"><i class="fa fa-sort-desc"></i></div>
		</div>
		<div class="form-group">
			<label><?php echo t('Nombre del item: ')?></label>

			<input type="text" class="form-control" name="<?php echo $view->field('nombre')?>[]" value="<%=nombre%>" placeholder="Texto del item" required="required" />
		</div>

		<div class="form-group">
			<label><?php echo t('Descripción del punto: ')?></label>
			 <div class="redactor-edit-content"></div>
            <textarea class="redactor-content" style="display:none" name="<?php echo $view->field('cuerpo')?>[]" value="<%=cuerpo%>">  <%=cuerpo%></textarea>
		</div>
        
		<div class="form-group">
			<label><?php echo t('Icono a mostrar')?></label>
			<%=comboIcono%>
		</div>
        <div class="form-group">
			<label><?php echo t('Latitud: ')?></label>
			<input type="text" class="form-control" name="<?php echo $view->field('x')?>[]" value="<%=x%>" placeholder="Texto del item" required="required" />
		</div>
        <div class="form-group">
			<label><?php echo t('Longitud: ')?></label>
			<input type="text" class="form-control" name="<?php echo $view->field('y')?>[]" value="<%=y%>" placeholder="Texto del item" required="required" />
		</div>
        
		<div class="form-group">
            <span class="btn btn-danger ccm-delete-mapa-entry"><?php echo t('Borrar Item'); ?></span>
        </div>
				<div class="form-group">
		<input class="ccm-mapa-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>	
		</div>
	</div>
</script>
