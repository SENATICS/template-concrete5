

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
        var _templateGaleria = _.template($('#itemsTramites').html());

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
                sitio_web: '<?php echo addslashes($row['sitio_web']) ?>',
                institucion: '<?php echo addslashes($row['institucion']) ?>',
                tipo_servicio: '<?php echo addslashes($row['tipo_servicio']) ?>',
                producto: '<?php echo addslashes($row['producto']) ?>',
                direccion: '<?php echo addslashes($row['direccion']) ?>',
                correo: '<?php echo addslashes($row['correo']) ?>',
                telefono: '<?php echo addslashes($row['telefono']) ?>',
                canal: '<?php echo addslashes($row['canal']) ?>',
                area_servicio: '<?php echo addslashes($row['area_servicio']) ?>',
                audiencia: '<?php echo addslashes($row['audiencia']) ?>',
                tramite: '<?php echo addslashes($row['tramite']) ?>',
                etiqueta: '<?php echo addslashes($row['etiqueta']) ?>',
                documentacion: '<?php echo addslashes($row['documentacion']) ?>',
                tiempo_estimado: '<?php echo addslashes($row['tiempo_estimado']) ?>',
                precio: '<?php echo addslashes($row['precio']) ?>',
                forma_pago: '<?php echo addslashes($row['forma_pago']) ?>',
                atencion: '<?php echo addslashes($row['atencion']) ?>',
                correo_servicio: '<?php echo addslashes($row['correo_servicio']) ?>',
                formulario: '<?php echo addslashes($row['formulario']) ?>',
                online: '<?php echo addslashes($row['online']) ?>',
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
                sitio_web : '',
                descripcion: '',
                institucion : '',
                tipo_servicio : '',
                producto : '',
                direccion : '',
                correo : '',
                telefono : '',
                canal : '',
                area_servicio : '',
                audiencia : '',
                tramite : '',
                etiqueta : '',
                documentacion : '',
                tiempo_estimado : '',
                precio : '',
                forma_pago : '',
                atencion : '',
                correo_servicio : '',
                formulario : '',
                online : '',
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
        padding: 15px;
        cursor: pointer;
        background: #dedede;
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
        height:90px;
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
    .ccm-galeria-block-container input[type="text"], .ccm-galeria-block-container textarea{
        width:140px !important;   
    }
    .redactor-toolbar li a{
        padding: 9px 5px !important;   
        font-size:12px;
    }
    
    .tooltip_t {
        display: inline;
        position: relative;
        background:rgba(92, 184, 92,.7);
        border-radius:50%;
        padding:1px 4px;
        cursor:pointer;
        font-size:10px;
        text-decoration:none !important;
        color:#FFF !important;
    }
    .tooltip_t:hover:after {
        bottom: 26px;
        content: attr(title); /* este es el texto que será mostrado */
        left: -60%;
        position: absolute;
        z-index: 98;
        /* el formato gráfico */
        background: rgba(0,0,0, 0.7); /* el color de fondo */
        border-radius: 5px;
        color: #FFF; /* el color del texto */
        font-family: Georgia;
        font-size: 12px;
        padding: 5px 8px;
        text-align: left;
        text-shadow: 1px 1px 1px #666;
        width: 150px;
    }
    .tooltip_t:hover:before {
        bottom: 20px;
        content: "";
        left: 20%;
        position: absolute;
        z-index: 9999;
        /* el triángulo inferior */
        border: solid;
        border-color: rgba(0,0,0, 0.7) transparent;
        border-width: 6px 6px 0 6px;
    }
    label{
        color:#222 !important;   
    }
    input[type="text"], input[type="email"], input[type="tel"], input[type="search"], input[type="url"], input[type="password"], .ui-autocomplete-input, textarea, .uneditable-input{
        color:#888 !important;
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
            <label><?php echo t('Cantidad de Trámites por página: ')?></label>
            <input type="number" min="1" class="form-control" name="<?php echo $view->field('cantItemsPag')?>" required="required" placeholder="número" value="<?php echo ($bObj->cantItemsPag);?>"/>
        </div>
        <br>
        <a href="#abajo_items" onclick="acordeones();"><span class="btn btn-success ccm-add-galeria-entry"><i class="material-icons">playlist_add</i> <?php echo t(' Agregar Nuevo Trámite') ?></span></a>
    </div>
    <div class="col-xs-8" style="position:absolute; margin-left:27%;">
        <ul class="collapsible ccm-galeria-entries" data-collapsible="accordion">

        </ul>
        <div id="abajo_items"></div>
    </div>
</div>
<script type="text/template" id="itemsTramites">
<li class="ccm-galeria-entry">
    <div class="botoneras">
        <i class="fa fa-sort-desc"></i>
        <i class="fa fa-sort-asc"></i>
        <i class="material-icons right ccm-delete-galeria-entry red-text text-darken-2" style="cursor:pointer">delete</i>
    </div>
    <div class="collapsible-header active">
        <% if (nombre == "") { %>
            <i class="material-icons">playlist_add</i>Completa el Formulario para agregar un trámite
        <% } else { %>
            <i class="material-icons">label_outline</i><label><%=nombre%></label>
        <% } %>
    </div>

    <div class="collapsible-body" style="padding:20px; box-sizing: border-box;">
        <div class="col-xs-6" style="padding-left:0px;">
            <div class="form-group">
                <label><?php echo t('Nombre') ?></label>
                <a title="El nombre del trámite" class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('nombre')?>[]" placeholder="Titulo del Trámite" value="<%=nombre%>" style="width:302px !important" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Institución') ?></label>
                <a title="El nombre de la Institución que provee el servicio." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('institucion')?>[]" placeholder="Nombre" value="<%=institucion%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Dirección') ?></label>
                <a title="Dirección ofiial donde el servicio es prestado." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('direccion')?>[]" placeholder="Dirección de la Institucion" value="<%=direccion%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Teléfono') ?></label>
                <a title="Numero(s) de teléfono(s) oficial(es) para consultas sobre trámites." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('telefono')?>[]" placeholder="Teléfono de la Institucion" value="<%=telefono%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Correo Electrónico') ?></label>
                <a title="Correo electrónico oficial para consultas sobre trámites." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('correo')?>[]" placeholder="Correo electrónico de la Institucion" value="<%=correo%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('URL o enlace') ?></label>
                <a title="URL o dirección de la página que describe el servicio." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('sitio_web')?>[]" placeholder="URL o enlace" value="<%=sitio_web%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Tipo de Servicio') ?></label>
                <a title="El tipo de servicio que ofrece, ejemplos: Jubilaciones, Identidad, Vivienda, Servicios financieros, etc." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('tipo_servicio')?>[]" placeholder="Tipo de Servicio" value="<%=tipo_servicio%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Producto tangible') ?></label>
                <a title="La cosa o cosas tangibles producidas por el servicio, ejemplos: Cédula, Pasaporte, un Préstamo, un Bono, etc." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('producto')?>[]" placeholder="Producto o Servicio" value="<%=producto%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Cobertura') ?></label>
                <a title="Departamento donde se presta el servicio." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('area_servicio')?>[]" placeholder="Cobertura" value="<%=area_servicio%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Población Objetivo') ?></label>
                <a title="Cite el tipo o tipos de audiencia a quienes va dirigido el servicio." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('audiencia')?>[]" placeholder="Población Objetivo " value="<%=audiencia%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Etiquetas') ?></label>
                <a title="Palabras simples que identifican al servicio para facilitar su búsqueda y ubicación, Ejemplos: casa, medicamento, subsidio, etc." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('etiqueta')?>[]" placeholder="Etiquetas entre 'cómas'" value="<%=etiqueta%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Documentaciòn') ?></label>
                <a title="Lista de los documentos necesarios para solicitar el servicio, Indicar si los mismos deben ser originales, copias simples o copias autenticadas." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('documentacion')?>[]" placeholder="Documentación" value="<%=documentacion%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Tiempo Estimado') ?></label>
                <a title="Estimación en días, meses o años desde el momento que se solicita el servicio y el momento en el cual es entregado." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('tiempo_estimado')?>[]" placeholder="Tiempo de obtención" value="<%=tiempo_estimado%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Precio') ?></label>
                <a title="Monto o importe asociado para la obtención del servicio." class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('precio')?>[]" placeholder="Precio" value="<%=precio%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Forma de Pago') ?></label>
                <a title="Formas para realizar el pago (Efectivo en ventanilla, Giros moviles, Tarjeta de crédito, etc.)" class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('forma_pago')?>[]" placeholder="Forma de Pago" value="<%=forma_pago%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Días de atención') ?></label>
                <a title="Listado de los días que puede ser solicitado el servicio, Ejemplo: Lunes, Martes, Viernes y sus horarios" class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('atencion')?>[]" placeholder="Dias de atención" value="<%=atencion%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Correo del Trámite') ?></label>
                <a title="Correo electrónico para obtener mayor información sobre el servicio" class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('correo_servicio')?>[]" placeholder="Correos para mayor información" value="<%=correo_servicio%>" />
            </div>
            <div class="form-group col-xs-6">
                <label><?php echo t('Es un servicio Online?') ?></label>
                <a title="Si este servicio puede ser solicitado desde la internet, ingresar el vinculo o enlace a dicho servicio en Línea" class="tooltip_t">?</a>
                <input type="text" name="<?php echo $view->field('online')?>[]" placeholder="Sitio Web" value="<%=online%>" />
            </div>

            
        </div>
        <div class="col-xs-6" style="background:rgba(0,0,0,.05); padding:5px 10px !important">
            <div class="form-group">
                <label><?php echo t('Logo/Imagen del Tramite') ?></label>
                <a title="Logo o imagen que represente al servicio" class="tooltip_t">?</a>
                <div class="ccm-pick-galeria">
                    <% if (image_url.length > 0) { %>
                        <img src="<%= image_url %>" />
                    <% } else { %>
                        <i class="fa fa-picture-o"></i>
                    <% } %>
                </div>
                <input type="hidden" name="<?php echo $view->field('fID')?>[]" class="image-fID" value="<%=fID%>" />
            </div>
            <div class="form-group">
                <label><?php echo t('Descripción del servicio')?></label>
                <a title="Descripción corta del servicio" class="tooltip_t">?</a>
                <div class="redactor-edit-content"></div>
                <textarea style="display: none" class="redactor-content" name="<?php echo html_entity_decode($view->field('descripcion'))?>[]"><%=descripcion%></textarea>
            </div>
            <div class="form-group">
                <label><?php echo t('Canales Habilitados')?></label>
                <a title="Mencionar todos los canales disponibles para acceder al servicio, Ejemplos: Teléfonos, Sitio web, E-mail, Presencial, Resdes sociales, etc." class="tooltip_t">?</a>
                <div class="redactor-edit-content"></div>
                <textarea style="display: none" class="redactor-content" name="<?php echo $view->field('canal')?>[]"><%=canal%></textarea>
            </div>
            <div class="form-group">
                <label><?php echo t('Trámites para acceder al Servicio')?></label>
                <div class="redactor-edit-content"></div>
                <textarea style="display: none" class="redactor-content" name="<?php echo $view->field('tramite')?>[]"><%=tramite%></textarea>
            </div>
            <div class="form-group">
                <label><?php echo t('Formularios necesarios')?></label>
                <a title="Listado de formularios que deberán acompañar para coniderarse una solicitud válida. Puede incluirse el link o enlace desde el cual podrá descargarse dichos formularios en formato digital" class="tooltip_t">?</a>
                <div class="redactor-edit-content"></div>
                <textarea style="display: none" class="redactor-content" name="<?php echo $view->field('formulario')?>[]"><%=formulario%></textarea>
            </div>
        </div>
        <input class="ccm-galeria-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>
        <div class="form-group">
            <span class="btn btn-danger ccm-delete-galeria-entry"><?php echo t('Eliminar'); ?></span>
        </div>
    </div>
</li>
</script>
