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
	
	
	$(document).ready(function() {
		$('.datepicker').datepicker();
		var calendarioEntriesContainer = $('.ccm-calendario-entries');
		var _templateCalendario = _.template($('#calendarioTemplate').html());
		
		
		var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('¿Está seguro?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-calendario-entry').remove();
                }
            });
        } 
		
		/*seccion en la que se agregan los items pasados mediante
		 *la funcion edit() del controller al formulario
		*/
		<?php
			$idFec = 4000;
			if($items) {
			foreach($items as $item) { ?>
			
			calendarioEntriesContainer.append(_templateCalendario({
				id: '<?php echo $item['id']?>',
				titulo: '<?php echo $item['titulo']?>',
				descripcion: '<?php echo $item['descripcion']?>',
				horaInicio: '<?php echo $item['horaInicio']; ?>',
				horaFin: '<?php echo $item['horaFin']; ?>',
				fecha: '<?php 
					$anho = substr($item['fecha'], 0, 4);
					$mes = substr($item['fecha'], 4, 2);
					$dia = substr($item['fecha'], 6, 2);
					echo $anho . '-' . $mes . '-' . $dia;
				?>',
				fechaId: '<?php echo $idFec++; ?>',
				lugar: '<?php echo $item['lugar'] ?>'
			}));
			<?php }} ?>
			
			
		/*
		**Cuando se hace clic en agregar item se carga un nuevo
		**conjunto de campos vacios.
		*/
		$('.ccm-add-calendario-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            calendarioEntriesContainer.append(_templateCalendario({
				id: '',
                titulo: '',
				descripcion: '',
				horaInicio: '',
                horaFin: '',
				fecha: ' ',
                lugar: '',
				fechaId: '<?php echo $idFec++; ?>'
            }));
            var newItem = $('.ccm-calendario-entry').last();
            thisModal.scrollTop(newItem.offset().bottom);

            attachDelete(newItem.find('.ccm-delete-calendario-entry'));            
            
        }); 
		attachDelete($('.ccm-delete-calendario-entry'));
	});


</script>

<style>
    .ccm-ui .form-control.yt-vid-dims {
        width: 100px;
    }
	
	.ccm-calendario-block-container {
        padding: 20px;
    }
    .ccm-calendario-block-container input[type="text"],
    .ccm-calendario-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-calendario-block-container .btn-success {
        margin-bottom: 20px;
    }
	
	.ccm-calendario-entries {
        padding-bottom: 30px;
    }
	
	.ccm-calendario-entry {
		position: relative;
	}
	
	.hora {
		width: 50px !important;
		float: left !important;	
	}
	
	.minutos {
		width: 50px !important;
	}
	
	.etiqueta {
		width:100%;
		display:block;
	}
	
	.lugar {
		width: 100% !important;
	}
	
</style>

<div class="ccm-calendario-block-container">
	<div class="form-group">
		<label><?php echo t('Administrar Calendario')?></label>
	</div>
	
	<div class="ccm-calendario-entries">

	</div>
	<span class="btn btn-success ccm-add-calendario-entry"><?php echo t('Agregar evento') ?></span>
</div>



<!--El formulario se edita acá -->	
<script type="text/template" id="calendarioTemplate">
	<div class="ccm-calendario-entry well">
		<div class="form-group">
			<label><?php echo t('Título del Evento: ')?></label>
			<!--Importante tener en cuenta que para que el metodo save() del controller.php pueda tomar
				estos valores es necesario que el atributo name de  cada campo se llame como después
				vamos a referenciar en el método save() del controller.php
			-->
			<input type="text" class="form-control" name="<?php echo $view->field('titulo')?>[]" value="<%=titulo%>" placeholder="Título del evento"/>
		</div>
		<div class="form-group">
			<label><?php echo t('Descripción del Evento: ')?></label>
			<input type="text" class="form-control" name="<?php echo $view->field('descripcion')?>[]" value="<%=descripcion%>" placeholder="Descripción del Evento"/>
		</div>
		<div class="form-group">
			<label><?php echo t('Fecha: ')?></label>
			<input type="text" id="<%=fechaId%>" class="form-control fechaInput" name="<?php echo $view->field('fecha')?>[]">
		</div>
		<div class="form-group">
			
			<label class="etiqueta"><?php echo t('Hora de inicio: ')?></label>

			<input type="text" class="form-control horaForm" name="horaInicio[]" value="<%=horaInicio%>" />
			
		</div>
		<div class="form-group">
			<label class="etiqueta"><?php echo t('Hora de Fin: ')?></label>
			<input type="text" class="form-control horaForm" name="horaFin[]" value="<%=horaFin%>" />
			
		</div>
		<div class="form-group">
			<label class="etiqueta" ><?php echo t('Lugar: ')?></label>
			<input type="text" class="form-control yt-vid-dims lugar" name="<?php echo $view->field('lugar')?>[]" value="<%=lugar%>" placeholder="Lugar del evento" />
		</div>
		<div class="form-group">
            <span class="btn btn-danger ccm-delete-calendario-entry"><?php echo t('Borrar Evento'); ?></span>
        </div>	
	</div>
	<script>
				$(function() {
					$(".fechaInput").datepicker({
						dateFormat: "yy-mm-dd"
					});
					$("#<%=fechaId%>").datepicker( "setDate", "<%=fecha%>");
					$(".horaForm").timepicker();
				});
	</script>
</script>
