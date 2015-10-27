<?php defined('C5_EXECUTE') or die("Access Denied."); 
$al = Loader::helper('concrete/asset_library');
$fp = FilePermissions::getGlobal();
$tp = new TaskPermission();
$args = array();
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
				nombre: '<?php echo html_entity_decode($item['nombre'])?>',
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
	
	.ccm-leyTransparencia-entry {
		position: relative;
	}
    
    .ccm-pick-archivo {
        padding: 10px;
        height:auto;
        cursor: pointer;
        background: #dedede;
        border: 1px solid #cdcdcd;
        text-align: center;
        vertical-align: center;
    }
    .ccm-pick-archivo img{
        width:100%   
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
	.sin_padding_col .col-xs-9, .sin_padding_col .col-xs-3{
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

<div class="ccm-leyTransparencia-block-container">
    <img src="<?php echo BASE_URL?>/application/blocks/leytransparencia/Cabecera.jpg" width="100%" style="border-radius:3px; margin-bottom:15px;"/>
    
    

    <ul class="collapsible ccm-leyTransparencia-entries" data-collapsible="accordion">

    </ul>
    <div id="abajo_items"></div>
    
    <hr style="margin:5px !important">
    <a href="#abajo_items" onclick="acordeones();"><span class="btn btn-success ccm-add-leyTransparencia-entry"><i class="material-icons">playlist_add</i> <?php echo t(' Agregar un nuevo enlace a un documento') ?></span></a>
    
    <div id="imageLinkTypePage" class="form-group">
        <?php echo $form->label('internalLinkCID', t('Página para el Histórico de archivos de la Ley 5189/14:'))?>
        <?php echo Loader::helper('form/page_selector')->selectPage('internalLinkCID', $internalLinkCID); ?>
    </div>
</div>



<!--El formulario se edita acá -->	
<script type="text/template" id="leyTransparenciaTemplate">
	<li class="ccm-leyTransparencia-entry">
        <div class="botoneras">
            <i class="material-icons right ccm-delete-leyTransparencia-entry red-text text-darken-2" style="cursor:pointer">delete</i>
        </div>
        <div class="collapsible-header active">
            <% if (nombre == "") { %>
                <i class="material-icons">playlist_add</i>Completa el Formulario para agregar un Enlace
            <% } else { %>
                <i class="material-icons">label_outline</i><label><%=nombre%></label>
            <% } %>
        </div>

        <div class="collapsible-body" style="padding:20px; box-sizing: border-box;">
            <div class="col-xs-9 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Titulo del Enlace')?></label>

                    <input type="text" class="form-control" name="<?php echo $view->field('nombre')?>[]" value="<%=nombre%>" placeholder="Nombre del Enlace" required="required" />
                </div>
            </div>
            <div class="col-xs-3 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Archivo') ?></label>
                    <div class="ccm-pick-archivo">
                        <% if (image_url.length > 0) { %>
                            <img src="<%= image_url %>" />
                        <% } else { %>
                            <img src="<?php echo BASE_URL;?>/application/blocks/leytransparencia/images/image.png" style="width:100%; max-width:100%;"/>
                        <% } %>
                    </div>
                    <input type="hidden" name="<?php echo $view->field('fID')?>[]" class="archivo-fID" value="<%=fID%>" />
                </div>
            </div>
            <div style="clear:both"></div>
            <div class="form-group">
                <input class="ccm-leyTransparencia-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>	
            </div>
        </div>
	</li>
</script>
