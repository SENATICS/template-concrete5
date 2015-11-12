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
				nombre: '<?php echo html_entity_decode($item['nombre'])?>',
				orden: '<?php echo $item['orden'] ?>',
				cuerpo: '<?php echo html_entity_decode($item['cuerpo']) ?>',
				icono: '<?php echo $item['icono'] ?>',
				comboIcono: '<?php echo $form->select('icono[]', array(0 => 'Icono Verde', 1 => 'Icono Naranja', 2 => 'Icono Rojo'), $item['icono']) ?>',
				<?php error_log("valor de icono: " . $item['icono']); ?>
                x: '<?php echo html_entity_decode($item['x']) ?>',
                y: '<?php echo html_entity_decode($item['y']) ?>'
                
			}, function() {
					console.log("funciona mapa");
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

    .ccm-mapa-block-container .redactor_editor {
        padding: 20px;
    }
    .ccm-mapa-block-container input[type="text"],
    .ccm-mapa-block-container input[type="number"]{
        width:255px;
        display:block !important;
    }
    
    
    
    .collapsible-body input[type="text"]{
        width:100%;
        display:block !important;
    }
    .ccm-mapa-block-container .btn-success {
        margin-bottom: 20px;
    }
    .ccm-pick-galeria {
        padding: 40px;
        cursor: pointer;
        background: #dedede;
        box-sizing:border-box;
        border: 1px solid #cdcdcd;
        text-align: center;
        vertical-align: center;
    }

    .ccm-pick-galeria img {
        max-width: 100%;
    }

    .ccm-mapa-entry {
        position: relative;
    }
    
    .ui-dialog .redactor-editor {
        min-height:60px;    
    }


    .ccm-mapa-block-container i.fa-sort-asc {
        position: absolute;
        right: 30px;
        top:4px;
        cursor: pointer;
        font-size: 14px !important;
    }

    .ccm-mapa-block-container i:hover {
        color: #5cb85c;
    }

    .ccm-mapa-block-container i.fa-sort-desc {
        position: absolute;
        top: 10px;
        cursor: pointer;
        right: 30px;        
        font-size: 14px !important;
    }
    
    input[type="number"]{
        border:1px solid #ccc;  
        padding:4px;
        color:#555555;
        border-radius:3px;
        width:100px !important;
    }
    .ccm-mapa-entries .well{
        margin-right:20px;
    }
    .ccm-mapa-entries .ccm-pick-galeria{
        height:auto;
    }
    .btn i{
        vertical-align:middle;   
    }
    .botoneras{
        top: 9px;
        position: absolute;
        right: 10px;   
    }
    .redactor-toolbar{
        position:static !important   
    }
    .redactor-editor p{
        padding:0px !important;   
    }
    .col-xs-6{
        padding-left:0px !important;   
        padding-right:0px !important;   
    }
    .ccm-mapa-block-container textarea{
        width:100% !important;   
        min-height:200px;
        height:auto !important;
    }
    .redactor-toolbar li a{
        padding: 9px 5px !important;   
        font-size:12px;
    }
    
    .collapsible-header, .collapsible-body{
        border-bottom:0px !important;  
        background:transparent;
    }
    .collection .collection-item.active{
        background:#efefef !important;
    }
    .collection .collection-item.active span, .collection .collection-item.active i{
        color:#3276b1;
    }
    .collection .collection-item.active p{
        color:#222 !important;   
    }
    .ccm-pick-galeria img{
        width:100% !important;
        max-width:100%;
    }
    .collection .collection-item.avatar{
        min-height:auto !important;    
    }
    
    .ccm-ui .form-control.yt-vid-dims {
        width: 100px;
    }
	
    .ccm-mapa-block-container .redactor_editor {
        padding: 20px;
    }
	.ccm-mapa-block-container {
        padding: 20px;
    }
    .ccm-mapa-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-mapa-block-container .btn-success {
        margin-bottom: 20px;
    }
	.ccm-mapa-entry {
		position: relative;
	}
	
    .collapsible-body .col-xs-6{
        padding:0px !important;   
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
<div class="ccm-mapa-block-container">
    <div class="col-xs-4 perzonalizacion" style="position:fixed">
        <div class="form-group">
            <label><?php echo t('Título del mapa')?></label>
            <input type="text" name="titulo" value="<?php echo html_entity_decode($titulo);?>">
        </div>
        <div class="form-group">
            <label><?php echo t('Zoom (del 1 al 21)')?></label>
            <input type="number" class="input" required="required" name="zoom" min="1" max="21" value="<?php echo html_entity_decode($zoom)?>">
        </div>
        <a href="#abajo_items" onclick="acordeones();"><span class="btn btn-success ccm-add-mapa-entry"><i class="material-icons">playlist_add</i> <?php echo t(' Agregar Nueva posición') ?></span></a>
        <hr>
        <a href="https://support.google.com/maps/answer/18539" target="_blank">¿Como obtener la Logintud y Latitud <br>en Google Maps?</a>
    </div>
    <div class="col-xs-8" style="position:absolute; margin-left:27%;">
        <ul class="collapsible ccm-mapa-entries collection" data-collapsible="accordion">

        </ul>
        <div id="abajo_items"></div>
    </div>
</div>



<!--El formulario se edita acá -->	
<script type="text/template" id="mapaTemplate">
    <li class="ccm-mapa-entry collection-item avatar">
        <div class="botoneras">
            <i class="fa fa-sort-desc"></i>
            <i class="fa fa-sort-asc"></i>
            <i class="material-icons right ccm-delete-mapa-entry red-text text-darken-2" style="cursor:pointer">delete</i>
        </div>
        <div class="collapsible-header active">
            <img src="<?php echo BASE_URL;?>/application/blocks/generarmapa/images/posicion.png" class="circle"/>
            <% if (nombre == "") { %>
                <span class="title">Esta posición en el Mapa no tiene titulo</span>
            <% } else { %>
                <span class="title"><%=nombre%></span>
            <% } %>
        </div>
        
        <div class="collapsible-body" style="padding:0px; box-sizing: border-box;">
            <div class="col-xs-6" style="padding-right:5px !important;">
                <div class="form-group">
                <label><?php echo t('Titulo de la Posición en el Mapa')?></label>

                <input type="text" class="form-control" name="<?php echo $view->field('nombre')?>[]" value="<%=nombre%>" placeholder="El titulo para esta posición" />
                </div>
            </div>
            <div class="col-xs-6" style="padding-left:5px !important;;">
                <div class="form-group">
                    <label><?php echo t('Icono a mostrar')?></label>
                    <%=comboIcono%>
                </div>
            </div>
            <div class="form-group">
                <label><?php echo t('Descripción de esta Posición')?></label>
                 <div class="redactor-edit-content"></div>
                <textarea class="redactor-content" style="display:none" name="<?php echo $view->field('cuerpo')?>[]" value="<%=cuerpo%>">  <%=cuerpo%></textarea>
            </div>

            
            <div class="col-xs-6" style="padding-right:5px !important;;">
                <div class="form-group">
                    <label><?php echo t('Latitud')?></label>
                    <input type="text" class="form-control" name="<?php echo $view->field('x')?>[]" value="<%=x%>" placeholder="Ej: -25.2799849" required="required" />
                </div>
            </div>
            <div class="col-xs-6" style="padding-left:5px !important;;">
                <div class="form-group">
                    <label><?php echo t('Longitud')?></label>
                    <input type="text" class="form-control" name="<?php echo $view->field('y')?>[]" value="<%=y%>" placeholder="Ej: -57.6087856" required="required" />
                </div>
            </div>
            
            <div style="clear:both"></div>
            <input class="ccm-mapa-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>
        </div>
    </li>
</script>
