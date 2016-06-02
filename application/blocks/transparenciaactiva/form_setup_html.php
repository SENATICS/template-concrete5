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
    
    .redactor-content{
        max-height: 180px !important;   
    }

	.redactor-toolbar li a{
        padding: 9px 5px !important;   
        font-size:12px;
        display:inline-block !important;
    }
    
    .sin_padding_col .col-xs-9, .sin_padding_col .col-xs-3{
        padding-left:0px;
        padding-right:0px;
    }
    
    .active{
        background:#efefef !important;
    }
    
    .perzonalizacion .active{
        background:none !important;   
    }
    
    .collapsible-body{
        border-bottom:0px !important;   
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

<div class="ccm-transparenciaActiva-block-container">
    <div class="col-xs-4 perzonalizacion" style="position:fixed">
        <div class="form-group">
            <label>Título del documento</label>
            <input type="text" class="form-control" name="titulo" value="<?php echo $titulo ?>" placeholder="Ej: Nomina de funcionarios, Viaticos, etc." required="required" />
        </div>
        <div class="form-group">
            <label><?php echo t('Resumen: ')?></label>
             <div class="redactor-edit-content"></div>
                <textarea style="display: none" class="redactor-content" name="resumen"><?php echo $resumen?></textarea>
        </div>
        <div class="col-xs-6" style="padding-left:0px;">
            <div class="form-group">
                <label><?php echo t('Mes')?></label>
                <?php echo $form->select('mes', array(0=>'No especificar', 1=>'Enero', 2=>'Febrero', 3=>'Marzo', 4=>'Abril', 5=>'Mayo', 6=>'Junio',
                                                      7=>'Julio', 8=>'Agosto', 9=>'Septiembre', 10=>'Octubre', 11=>'Noviembre',
                                                      12=>'Diciembre'), $mes);?>
            </div>
        </div>
        <div class="col-xs-6" style="padding-left:0px;">
            <div class="form-group">
                <label><?php echo t('Autor')?></label>
                <input type="text" class="form-control" name="autor" value="<?php echo $autor ?>" placeholder="Autor" />
            </div>
        </div>
        <div style="clear:both"></div>
        <hr style="margin:5px !important">
        <a href="#abajo_items" onclick="acordeones();"><span class="btn btn-success ccm-add-transparenciaActiva-entry"><i class="material-icons">playlist_add</i> <?php echo t(' Agregar un nuevo enlace a un documento') ?></span></a>
    </div>
    <div class="col-xs-8" style="position:absolute; margin-left:50%; width:465px !important;">
        <ul class="collapsible ccm-transparenciaActiva-entries" data-collapsible="accordion">

        </ul>
        <div id="abajo_items"></div>
    </div>
</div>



<!--El formulario se edita acá -->	
<script type="text/template" id="transparenciaActivaTemplate">
	<li class="ccm-transparenciaActiva-entry">
        <div class="botoneras">
            <i class="material-icons right ccm-delete-transparenciaActiva-entry red-text text-darken-2" style="cursor:pointer">delete</i>
            <div class="form-group">
              <input class="ccm-transparenciaActiva-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>	
            </div>
        </div>
        <div class="collapsible-header active">
            <% if (texto_link == "") { %>
                <i class="material-icons">playlist_add</i>Completa el Formulario para agregar un Enlace
            <% } else { %>
                <i class="material-icons">label_outline</i><label>Titulo del Enlace: <b><%=texto_link%></b></label>
            <% } %>
        </div>

        <div class="collapsible-body" style="padding:20px; box-sizing: border-box;">
            <div class="col-xs-9 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Titulo del Enlace ')?></label>

                    <input type="text" class="form-control" name="<?php echo $view->field('texto_link')?>[]" value="<%=texto_link%>" placeholder="Texto del item" required="required" />
                </div>
            </div>
            <div class="col-xs-3 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Archivo') ?></label>
                    <div class="ccm-pick-archivo">
                        <% if (image_url.length > 0) { %>
                            <img src="<%= image_url %>" />
                        <% } else { %>
                            <img src="<?php echo BASE_URL;?>/application/blocks/transparenciaactiva/images/image.png" style="width:100%; max-width:100%;"/>
                        <% } %>
                    </div>
                    <input type="hidden" name="<?php echo $view->field('fID')?>[]" class="archivo-fID" value="<%=fID%>" />
                </div>
            </div>
        </div>
        <div style="clear:both"></div>
	</li>
</script>
