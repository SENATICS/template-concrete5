<link  href="/application/blocks/generarmenu/css/colorpicker.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/application/blocks/generarmenu/js/colorpicker.js"></script>
<style>
	#colorpickertext { display: none;}
</style>

<?php defined('C5_EXECUTE') or die("Access Denied."); 
$fp = FilePermissions::getGlobal();
$tp = new TaskPermission();
static $indexForm = 0;
$a = 0;
$arregloPadres = array();
?>


<script>
	var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Loader::helper('validation/token')->generate('editor')?>";
	var colorEscogido = "<?php echo substr($color, 1); ?>";
	$(document).ready(function() {
        $('#colorpickertext').val('#' + colorEscogido);
        $('#colorpicker').ColorPicker({
            flat: true,
			color: colorEscogido,
            onChange: function(hsb, hex, rgb) {
                $('#colorpickertext').val('#' + hex);
            }
        });
		var menuEntriesContainer = $('.ccm-menu-entries');
		var _templateMenu = _.template($('#menuTemplate').html());
		
		
		var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('¿Está seguro?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-menu-entry').remove();
                    doSortCount();
                }
            });
        } 
		
		var attachSortDesc = function($obj) {
            $obj.click(function(){
               var myContainer = $(this).closest($('.ccm-menu-entry'));
               myContainer.insertAfter(myContainer.next('.ccm-menu-entry'));
               doSortCount();
            });
        }

        var attachSortAsc = function($obj) {
            $obj.click(function(){
                var myContainer = $(this).closest($('.ccm-menu-entry'));
                myContainer.insertBefore(myContainer.prev('.ccm-menu-entry'));
                doSortCount();
            });
        }
		
		var doSortCount = function(){
            $('.ccm-menu-entry').each(function(index) {
                $(this).find('.ccm-menu-entry-sort').val(index);
            });
        }
		
		<?php if($items) {
			$conteoAux = 1;
			foreach($items as $item) { ?>
			
			menuEntriesContainer.append(_templateMenu({
				id: '<?php echo $item['id']?>',
				nombre: '<?php echo $item['nombre']?>',
				orden: '<?php echo $item['orden'] ?>',
				idPadre: '<?php echo $item['idPadre'] ?>',
				checked: '<?php
					if(intval($item['target'])==0) {
						echo " ";
					}
					else {
						echo "selected";
					}?>',
				selected: '<?php
					if(intval($item['subMenu'])==0) {
						echo " ";
					}
					else {
						echo "selected";
					}
				?>',
				link: '<?php echo $item['link'] ?>'
			}));
			<?php
				array_push($arregloPadres, $item['idPadre']);
			}}
			?>
			
		doSortCount();
		
		$('.ccm-add-menu-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            menuEntriesContainer.append(_templateMenu({
				id: '',
                nombre: '',
                orden: '',
                idPadre: '',
				selected: ' ',
				checked: ' ',
                link: ''
            }));
            var newItem = $('.ccm-menu-entry').last();
            thisModal.scrollTop(newItem.offset().bottom);

            attachDelete(newItem.find('.ccm-delete-menu-entry'));            
            attachSortDesc(newItem.find('i.fa-sort-desc'));
            attachSortAsc(newItem.find('i.fa-sort-asc'));
            doSortCount();
        }); 
		attachDelete($('.ccm-delete-menu-entry'));
        attachSortAsc($('i.fa-sort-asc'));
        attachSortDesc($('i.fa-sort-desc'));
	});


</script>

<style>
    .ccm-ui .form-control.yt-vid-dims {
        width: 100px;
    }
	
	.ccm-menu-block-container {
        padding: 20px;
    }
    .ccm-menu-block-container input[type="text"],
    .ccm-menu-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-menu-block-container .btn-success {
        margin-bottom: 20px;
    }
	
	.ccm-menu-entries {
        padding-bottom: 30px;
    }
	
	.ccm-menu-entry {
		position: relative;
	}
	
	
</style>

<div class="ccm-menu-block-container">
	<div class="form-group">
        <label><?php echo t('Color del Menu:')?></label>
        <input type="text" id="colorpickertext" hidden="true" name="color">
        <div id ="colorpicker"></div>
        <?php echo t('Fondo recomendado: #d71e1e')?>
	</div>
	<div class="form-group">	
	<label><?php echo t('Color de texto:')?></label>
	<?php echo $form->select('colorTexto', array(0 => 'Blanco', 1 => 'Negro'), $colorTexto) ?>
	</div>
    <hr />
	<div class="ccm-menu-entries">

	</div>
    <hr />
    <span class="btn btn-success ccm-add-menu-entry"><?php echo t('Agregar item') ?></span>
</div>



<!--El formulario se edita acá -->	
<script type="text/template" id="menuTemplate">
	<div class="ccm-menu-entry well">
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
			<label><?php echo t('Es sub-Menu?: ')?></label>
			
		<select name="<?php echo $view->field('subMenu')?>[]" style="padding: 4px 22px;border: 1px solid #ccc;border-radius: 7px;">
			<option value="0">No</option>
			<option value="1" <%=selected%> >Sí</option>
		</select>
		<img src="/application/themes/template/img/menu.jpg" style="opacity:0.7; position:relative; max-width:300px"/>
		</div>
		<div class="form-group">
			<select name="target[]" style="padding: 4px 22px;border: 1px solid #ccc;border-radius: 7px;">
				<option value="0">Abrir en la misma pestaña</option>
				<option value="1" <%=checked%>>Abrir en una nueva pestaña</option>
			</select>
		</div>
		<div class="form-group">
			<label><?php echo t('link')?></label>
			<input type="text" class="form-control yt-vid-dims" name="<?php echo $view->field('link')?>[]" value="<%=link%>" placeholder="Link" style="width: 100%;" />
		</div>
		<div class="form-group">
            <span class="btn btn-danger ccm-delete-menu-entry"><?php echo t('Borrar Item'); ?></span>
        </div>
				<div class="form-group">
		<input class="ccm-menu-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>	
		</div>
	</div>
</script>
