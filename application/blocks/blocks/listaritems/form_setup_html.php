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
                nombre: '<?php echo addslashes($row['nombre']) ?>',
                descripcion: '<?php echo addslashes($row['descripcion']) ?>',
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
                nombre: '',
                descripcion: '',
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
        
    }
    .ccm-galeria-block-container .btn-success {
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

    .ccm-galeria-entry {
        position: relative;
    }
    
    .ui-dialog .redactor-editor {
        min-height:60px;    
    }


    .ccm-galeria-block-container i.fa-sort-asc {
        position: absolute;
        right: 30px;
        top:4px;
        cursor: pointer;
        font-size: 14px !important;
    }

    .ccm-galeria-block-container i:hover {
        color: #5cb85c;
    }

    .ccm-galeria-block-container i.fa-sort-desc {
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
    .ccm-galeria-entries .well{
        margin-right:20px;
    }
    .ccm-galeria-entries .ccm-pick-galeria{
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
    .ccm-galeria-block-container textarea{
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

<div class="ccm-galeria-block-container">
    <div class="col-xs-4 perzonalizacion" style="position:fixed">
        <div class="form-group">
            <label><?php echo t('Cantidad de Imagenes por página: ')?></label>
		    <input type="number" min="1" class="form-control" name="<?php echo $view->field('cantItemsPag')?>" required="required" placeholder="número" value="<?php echo $bObj->cantItemsPag == ''? $bObj->cantItemsPag:'9';?>"/>
        </div>
        <br>
        <a href="#abajo_items" onclick="acordeones();"><span class="btn btn-success ccm-add-galeria-entry"><i class="material-icons">playlist_add</i> <?php echo t(' Agregar Nueva imagen') ?></span></a>
    </div>
    <div class="col-xs-8" style="position:absolute; margin-left:27%;">
        <ul class="collapsible ccm-galeria-entries collection" data-collapsible="accordion">

        </ul>
        <div id="abajo_items"></div>
    </div>
</div>
<script type="text/template" id="galeriaTemplate">
    <li class="ccm-galeria-entry collection-item avatar">
        <div class="botoneras">
            <i class="fa fa-sort-desc"></i>
            <i class="fa fa-sort-asc"></i>
            <i class="material-icons right ccm-delete-galeria-entry red-text text-darken-2" style="cursor:pointer">delete</i>
        </div>
        <div class="collapsible-header active">
            <% if (image_url.length > 0) { %>
                <img src="<%= image_url %>" class="circle"/>
            <% } else { %>
                <img src="<?php echo BASE_URL;?>/application/blocks/listaritems/images/image.png" class="circle"/>
            <% } %>
            <% if (nombre == "") { %>
                <span class="title">Imagen sin titulo</span>
            <% } else { %>
                <span class="title"><%=nombre%></span>
            <% } %>
        </div>
        
        <div class="collapsible-body" style="padding:0px; box-sizing: border-box;">
            <div class="col-xs-4">
                <div class="form-group">
                    <label><?php echo t('Imagen') ?></label>
                    <div class="ccm-pick-galeria">
                        <% if (image_url.length > 0) { %>
                            <img src="<%= image_url %>" style="max-width:100%; width:100%;"/>
                        <% } else { %>
                            <img src="<?php echo BASE_URL;?>/application/blocks/listaritems/images/image.png" style="width:100%; max-width:100%;"/>
                        <% } %>
                    </div>
                    <input type="hidden" name="<?php echo $view->field('fID')?>[]" class="image-fID" value="<%=fID%>" />
                </div>
            </div>
            <div class="col-xs-8">
                <div class="form-group">
                    <label><?php echo t('Titulo de la Imagen') ?></label>
                    <input class="form-control" type="text" name="<?php echo $view->field('nombre')?>[]" placeholder="El titulo de la imagen es opcional" value="<%=nombre%>" style="width:100% !important" />
                </div>
                <div class="form-group">
                    <label><?php echo t('Descripción')?></label>
                    <div class="redactor-edit-content"></div>
                    <textarea style="display: none" class="redactor-content" name="<?php echo $view->field('descripcion')?>[]"><%=descripcion%></textarea>
                </div>
            </div>
            <div style="clear:both"></div>
            <input class="ccm-galeria-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>
        </div>
    </li>
</script>
