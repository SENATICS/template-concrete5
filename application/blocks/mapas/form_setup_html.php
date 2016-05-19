<?php defined('C5_EXECUTE') or die("Access Denied."); 
$fp = FilePermissions::getGlobal();
$tp = new TaskPermission();
?>

<script>
    var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Loader::helper('validation/token')->generate('editor')?>";
    var colorEscogido = "<?php echo substr($color, 1); ?>";
    $(document).ready(function() {
        var mapaEntriesContainer = $('.ccm-mapas-entries');
        var _templateMapa = _.template($('#mapaTemplate').html());
        
        
        var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('¿Está seguro?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-mapas-entry').remove();
                    doSortCount();
                }
            });
        } 
        
        var attachSortDesc = function($obj) {
            $obj.click(function(){
               var myContainer = $(this).closest($('.ccm-mapas-entry'));
               myContainer.insertAfter(myContainer.next('.ccm-mapas-entry'));
               doSortCount();
            });
        }

        var attachSortAsc = function($obj) {
            $obj.click(function(){
                var myContainer = $(this).closest($('.ccm-mapas-entry'));
                myContainer.insertBefore(myContainer.prev('.ccm-mapas-entry'));
                doSortCount();
            });
        }
        
        var doSortCount = function(){
            $('.ccm-mapas-entry').each(function(index) {
                $(this).find('.ccm-mapas-entry-sort').val(index);
            });
        }
        
        <?php if($items) {
            $conteoAux = 1;
            foreach($items as $item) { ?>
            
            mapaEntriesContainer.append(_templateMapa({
                titulo: '<?php echo $item['titulo']?>',
                orden: '<?php echo $item['orden'] ?>',
                descripcion: '<?php echo $item['descripcion'] ?>',
                icono: '<?php echo $item['icono'] ?>',
                comboIcono: '<?php echo $form->select('icono[]', array(0 => 'Icono Amarillo', 1 => 'Icono Naranja', 2 => 'Icono Rojo', 3 => 'Icono Fucsia', 4 => 'Icono Lila', 5 => 'Icono Azul', 6 => 'Icono Celeste', 7 => 'Icono Verde Esmeralda', 8 => 'Icono Verde', 9 => 'Icono Negro'), $item['icono']) ?>',
                <?php error_log("valor de icono: " . $item['icono']); ?>
                latitud: '<?php echo addslashes($item['latitud']) ?>',
                longitud: '<?php echo addslashes($item['longitud']) ?>'
                
            }, function() {
                    console.log("funciona mapa");
                }));
            <?php
            }}
            ?>
            
        doSortCount();
        
        $('.ccm-add-mapas-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            mapaEntriesContainer.append(_templateMapa({
                titulo: '',
                orden: '',
                descripcion: '',
                icono: '',
                comboIcono: '<?php echo $form->select('icono', array(0 => 'Icono Amarillo', 1 => 'Icono Naranja', 2 => 'Icono Rojo', 3 => 'Icono Fucsia', 4 => 'Icono Lila', 5 => 'Icono Azul', 6 => 'Icono Celeste', 7 => 'Icono Verde Esmeralda', 8 => 'Icono Verde', 9 => 'Icono Negro'), $item['icono']) ?>',
                latitud: '',
                longitud: ''
            }));
            var newItem = $('.ccm-mapas-entry').last();
            thisModal.scrollTop(newItem.offset().bottom);
            newItem.find('.redactor-content').redactor({
                minHeight: '200',
                'concrete5': {
                    filemanager: <?php echo $fp->canAccessFileManager()?>,
                    sitemap: <?php echo $tp->canAccessSitemap()?>,
                    lightbox: true
                }
            });
            attachDelete(newItem.find('.ccm-delete-mapas-entry'));            
            attachSortDesc(newItem.find('i.fa-sort-desc'));
            attachSortAsc(newItem.find('i.fa-sort-asc'));
            doSortCount();
        }); 
        attachDelete($('.ccm-delete-mapas-entry'));
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

    .ccm-mapas-block-container .redactor_editor {
        padding: 20px;
    }
    .ccm-mapas-block-container input[type="text"],
    .ccm-mapas-block-container input[type="number"]{
        width:100%;
        display:block !important;
    }
    
    
    
    .collapsible-body input[type="text"]{
        width:100%;
        display:block !important;
    }
    .ccm-mapas-block-container .btn-success {
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

    .ccm-mapas-entry {
        position: relative;
    }
    
    .ui-dialog .redactor-editor {
        min-height:60px;    
    }


    .ccm-mapas-block-container i.fa-sort-asc {
        position: absolute;
        right: 30px;
        top:4px;
        cursor: pointer;
        font-size: 14px !important;
    }

    .ccm-mapas-block-container i:hover {
        color: #5cb85c;
    }

    .ccm-mapas-block-container i.fa-sort-desc {
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
    .ccm-mapas-entries .well{
        margin-right:20px;
    }
    .ccm-mapas-entries .ccm-pick-galeria{
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
    .ccm-mapas-block-container textarea{
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
    
    .ccm-mapas-block-container .redactor_editor {
        padding: 20px;
    }
    .ccm-mapas-block-container {
        padding: 20px;
    }
    .ccm-mapas-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-mapas-block-container .btn-success {
        margin-bottom: 20px;
    }
    .ccm-mapas-entry {
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
    function numeros(e){
      key = e.keyCode || e.which;
      tecla = String.fromCharCode(key).toLowerCase();
      letras = "0123456789-.";
      especiales = [8,9,127];

      tecla_especial = false
      for(var i in especiales){
       if(key == especiales[i]){
         tecla_especial = true;
         break;
       }
     }
     if(letras.indexOf(tecla)==-1 && !tecla_especial)
      return false;
    }
</script>


<div class="ccm-mapas-block-container row">

 <div class="col-xs-2 perzonalizacion" style="position:fixed">
        <div class="form-group">
            <label><?php echo t('Título del mapa')?></label>
            <input type="text" name="titulo_mapa" value="<?php echo $titulo_mapa;?>" maxlength="100">
        </div>

        <div class="form-group">
            <?php echo $form->label('zoom', t('Zoom'));?>
            <?php
                $zoomArray = array();
                for($i=0;$i<=21;$i++) {
                    $zoomArray[$i] = $i;
                }
            ?>
            <?php echo $form->select('zoom', $zoomArray, $zoom);?>
        </div>
        <div class="form-group"> 
            <?php echo $form->label('width', t('Map Width'));?>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-arrows-h"></i></span>
                <?php if(is_null($width) || $width == 0) {$width = '100%';};?>
                <?php echo $form->text('width', $width);?>
            </div>
        </div>
        <div class="form-group">
            <?php echo $form->label('height', t('Map Height'));?>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-arrows-v"></i></span>
                <?php if(is_null($height) || $height == 0) {$height = '400px';};?>
                <?php echo $form->text('height', $height); ?>
            </div>
        </div>
        <div class="form-group">
          <label>
            <?php echo $form->checkbox('scrollwheel', 1, (is_null($scrollwheel) || $scrollwheel)); ?>
            <?php echo t("Enable Scroll Wheel")?>
          </label>
        </div>
        <a href="#abajo_items" onclick="acordeones();"><span class="btn btn-success ccm-add-mapas-entry"><i class="material-icons">playlist_add</i> <?php echo t(' Agregar Nueva posición') ?></span></a>
        
        <a href="https://support.google.com/maps/answer/18539" target="_blank">¿Como obtener la Logintud y Latitud <br>en Google Maps?</a>
    </div>
    <div class="col-xs-8" style="position:absolute; margin-left:27%;">
        <ul class="collapsible ccm-mapas-entries collection" data-collapsible="accordion">

        </ul>
        <div id="abajo_items"></div>
    </div>

 <!--El formulario se edita acá --> 
<script type="text/template" id="mapaTemplate">
    <li class="ccm-mapas-entry collection-item avatar">
        <div class="botoneras">
            <i class="fa fa-sort-desc"></i>
            <i class="fa fa-sort-asc"></i>
            <i class="material-icons right ccm-delete-mapas-entry red-text text-darken-2" style="cursor:pointer">delete</i>
        </div>
        <div class="collapsible-header active">
            <img src="<?php echo BASE_URL;?>/application/blocks/mapas/images/posicion.png" class="circle"/>
            <% if (titulo == "") { %>
                <span class="title">Esta posición en el Mapa no tiene titulo</span>
            <% } else { %>
                <span class="title"><%=titulo%></span>
            <% } %>
        </div>
        
        <div class="collapsible-body" style="padding:0px; box-sizing: border-box;">
            <div class="col-xs-6" style="padding-right:5px !important;">
                <div class="form-group">
                    <?php echo $form->label('titulo', t('Map Title (optional)'));?>
                    <input type="text" class="form-control" name="<?php echo $view->field('titulo')?>[]" value="<?php echo html_entity_decode('<%=titulo%>')?>" placeholder="Titulo" maxlength="50"/>
                </div>
            </div>
            <div class="col-xs-6" style="padding-left:5px !important;">
                <div class="form-group">
                    <label><?php echo t('Icono a mostrar')?></label>
                    <%=comboIcono%>
                </div>
            </div>
            <div class="form-group">
                <label><?php echo t('Descripción de esta Posición')?></label>
                 <div class="redactor-edit-content"></div>
                <textarea class="redactor-content" style="display:none" name="<?php echo $view->field('descripcion')?>[]" value="<?php echo html_entity_decode('<%=descripcion%>')?>"> <?php echo html_entity_decode('<%=descripcion%>')?></textarea>
            </div>

            
            <div class="col-xs-6" style="padding-right:5px !important;">
                <div class="form-group">
                    <label><?php echo t('Latitud')?></label>
                    <input type="text" class="form-control" name="<?php echo $view->field('latitud')?>[]" value="<%=latitud%>" placeholder="Ej: -25.2799849" required="required" maxlength="30" onKeyPress="return numeros(event)"/>
                </div>
            </div>
            <div class="col-xs-6" style="padding-left:5px !important;">
                <div class="form-group">
                    <label><?php echo t('Longitud')?></label>
                    <input type="text" class="form-control" name="<?php echo $view->field('longitud')?>[]" value="<%=longitud%>" placeholder="Ej: -57.6087856" required="required" maxlength="30" onKeyPress="return numeros(event)"/>
                </div>
            </div>
            
            <div style="clear:both"></div>
            <input class="ccm-mapas-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>
        </div>
    </li>
</script>
