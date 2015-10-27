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
    .btn i{
        vertical-align:middle;   
    }
    .botoneras{
        top: 9px;
        position: absolute;
        right: 10px;   
    }
    .descripcion_text{
        height:300px;   
    }
	.sin_padding_col .col-xs-6{
        padding-left:0px;
        padding-right:0px;
    }
    .ccm-ui textarea.form-control{
        height:108px;   
    }
    
    .active{
        background:#efefef !important;
    }
</style>

<script type="text/javascript">
var con = 0;
 $(document).ready(function(){
    acordeones();
  });
function acordeones(){
    $('.collapsible').collapsible({
      accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });
    $(".collapsible-header").removeClass("active");
    

}
</script>

<div class="ccm-calendario-block-container">
    <div class="col-xs-4 perzonalizacion" style="position:fixed">
        <div class="form-group">
            <label><?php echo t('Administrar Calendario')?></label>
        </div>
        <a href="#abajo_items" onclick="acordeones();"><span class="btn btn-success ccm-add-calendario-entry"><i class="material-icons">playlist_add</i> <?php echo t(' Agregar un Nuevo Evento') ?></span></a>
    </div>
    <div class="col-xs-8" style="position:absolute; margin-left:27%;">
        <ul class="collapsible ccm-calendario-entries" data-collapsible="accordion">

        </ul>
        <div id="abajo_items"></div>
    </div>
</div>

<!--El formulario se edita acá -->	
<script type="text/template" id="calendarioTemplate">
        
<li class="ccm-calendario-entry">
    <div class="botoneras">
        <i class="material-icons right ccm-delete-calendario-entry red-text text-darken-2" style="cursor:pointer">delete</i>
    </div>
    <div class="collapsible-header active">
        <% if (titulo == "") { %>
            <i class="material-icons">playlist_add</i>Completa el Formulario para agregar un Evento
        <% } else { %>
            <i class="material-icons">label_outline</i><label><%=titulo%></label>
        <% } %>
    </div>

    <div class="collapsible-body" style="padding:20px; box-sizing: border-box;">
        <div class="col-xs-6 sin_padding_col">
            <div class="form-group">
                <label><?php echo t('Título del Evento')?></label>
                <input type="text" class="form-control" name="<?php echo $view->field('titulo')?>[]" value="<%=titulo%>" placeholder="Título del evento"/>
            </div>
            <div class="form-group">
                <label><?php echo t('Fecha')?></label>
                <input type="date" id="<%=fechaId%>" class="form-control fechaInput datepicker" name="<?php echo $view->field('fecha')?>[]">
            </div>
            <div class="form-group col-xs-6" style="padding-right:5px;">

                <label class="etiqueta"><?php echo t('Hora de inicio')?></label>

                <input type="text" class="form-control horaForm" name="horaInicio[]" value="<%=horaInicio%>" />

            </div>
            <div class="form-group col-xs-6" style="padding-left:5px;">
                <label class="etiqueta"><?php echo t('Hora de Fin')?></label>
                <input type="text" class="form-control horaForm" name="horaFin[]" value="<%=horaFin%>" />

            </div>
            
        </div>
        <div class="col-xs-6">
            <div class="form-group">
                <label><?php echo t('Descripción del Evento')?></label>
                <textarea  class="form-control descripcion_text" name="<?php echo html_entity_decode($view->field('descripcion'))?>[]"><%=descripcion%></textarea>
            </div>
            <div class="form-group">
                <label class="etiqueta" ><?php echo t('Lugar')?></label>
                <input type="text" class="form-control yt-vid-dims lugar" name="<?php echo $view->field('lugar')?>[]" value="<%=lugar%>" placeholder="Lugar del evento" />
            </div>
        </div>
        <div style="clear:both"></div>
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
</li>
</script>


