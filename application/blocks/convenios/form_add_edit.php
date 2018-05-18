<?php defined('C5_EXECUTE') or die("Access Denied.");

$al = Loader::helper('concrete/asset_library');
$tp = new TaskPermission();
$args = array();
$dh = Loader::helper('form/date_time');

function jsspecialchars( $string = '') {
    $string = preg_replace("/\r*\n/","\\n",$string);
    return $string;
    }

function jsspecialchars_inv_convenios( $string = '') {
    $string = preg_replace("/\\n/","<br/>",$string);
    return $string;
}

?>


<script>
    var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Loader::helper('validation/token')->generate('editor')?>";

    $(document).ready(function() {

        
        var conveniosEntriesContainer = $('.ccm-convenios-entries');
        var _templateConvenios = _.template($('#conveniosTemplate').html());

        var attachDelete = function($obj) {
            $obj.click(function(){
                var deleteIt = confirm('<?php echo t('¿Está seguro?') ?>');
                if(deleteIt == true) {
                    $(this).closest('.ccm-convenios-entry').remove();
                    doSortCount();
                }
            });
        } 
        
        var attachSortDesc = function($obj) {
            $obj.click(function(){
               var myContainer = $(this).closest($('.ccm-convenios-entry'));
               myContainer.insertAfter(myContainer.next('.ccm-convenios-entry'));
               doSortCount();
            });
        }

        var attachSortAsc = function($obj) {
            $obj.click(function(){
                var myContainer = $(this).closest($('.ccm-convenios-entry'));
                myContainer.insertBefore(myContainer.prev('.ccm-convenios-entry'));
                doSortCount();
            });
        }
        
             
        var doSortCount = function(){
            $('.ccm-convenios-entry').each(function(index) {
                $(this).find('.ccm-convenios-entry-sort').val(index);
            });
        }
        
        <?php if($items) {
            $conteoAux = 1;
            foreach($items as $item) { ?>
            conveniosEntriesContainer.prepend(_templateConvenios({
                id: '<?php echo addslashes($item['id'])?>',
                numero: '<?php echo addslashes($item['numero'])?>',
                anho: '<?php echo addslashes($item['anho'])?>',
                titulo: '<?php echo addslashes($item['titulo']) ?>',  
                descripcion: '<?php echo jsspecialchars(addslashes($item['descripcion'])) ?>',
                institucion: '<?php echo addslashes($item['institucion']) ?>',
                fecha: '<?php echo addslashes($item['fecha'])?>',
                enlace: '<?php echo addslashes($item['enlace'])?>',
                orden: '<?php echo addslashes($item['orden'])?>'
            }));
            <?php
            }}
            ?>
            
        doSortCount();
        
        $('.ccm-add-convenios-entry').click(function(){
           var thisModal = $(this).closest('.ui-dialog-content');
            conveniosEntriesContainer.prepend(_templateConvenios({
                id:'',
                numero: '',
                anho: '',
                titulo: '',
                descripcion: '',
                institucion: '',
                fecha: '',
                enlace:'',
                orden: ''
            }));
            var newItem = $('.ccm-convenios-entry').last();
            thisModal.scrollTop(newItem.offset().bottom);

            attachDelete(newItem.find('.ccm-delete-convenios-entry'));            
        
            attachSortDesc(newItem.find('i.fa-sort-desc'));
            attachSortAsc(newItem.find('i.fa-sort-asc'));
            doSortCount();
        }); 
        attachDelete($('.ccm-delete-convenios-entry'));
        attachSortAsc($('i.fa-sort-asc'));
        attachSortDesc($('i.fa-sort-desc'));
        
        
    });


</script>

<style>
    .ccm-ui .form-control.yt-vid-dims {
        width: 100px;
    }
    
    .ccm-convenios-block-container {
        padding: 20px;
    }
    .ccm-convenios-block-container input[type="text"],
    .ccm-convenios-block-container textarea {
        display: block;
        width: 100%;
    }
    .ccm-convenios-block-container .btn-success {
        margin-bottom: 20px;
    }
    
    .ccm-convenios-entry {
        position: relative;
    }
    
    .ccm-convenios-block-container i.fa-sort-asc {
        position: absolute;
        right: 30px;
        top:4px;
        cursor: pointer;
        font-size: 14px !important;
    }

    .ccm-convenios-block-container i:hover {
        color: #5cb85c;
    }

    .ccm-convenios-block-container i.fa-sort-desc {
        position: absolute;
        top: 10px;
        cursor: pointer;
        right: 30px;        
        font-size: 14px !important;
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


<div class="ccm-convenios-block-container">
    <a href="#" onclick="acordeones();"><span class="btn btn-success ccm-add-convenios-entry"><i class="material-icons">playlist_add</i> <?php echo t(' Agregar nuevo Item') ?></span></a>      
        <hr style="margin:5px !important">
    <ul class="collapsible ccm-convenios-entries" data-collapsible="accordion">
    
    </ul>
    

</div>



<!--El formulario se edita acá -->  
<script type="text/template" id="conveniosTemplate">

    <li class="ccm-convenios-entry">
        <div class="botoneras">
            <!-- 
            <i class="fa fa-sort-desc"></i>
            <i class="fa fa-sort-asc"></i>
            -->
            <i class="material-icons right ccm-delete-convenios-entry red-text text-darken-2" style="cursor:pointer">delete</i>
        </div>
        <div class="collapsible-header">
            <% if (titulo == "") { %>
                <i class="material-icons">playlist_add</i><span style="color:red;">Completa el Formulario para agregar un Documento/Convenio</span>
            <% } else { %>
                <i class="material-icons">label_outline</i><label><%=numero%> / <%=anho%></label>
            <% } %>
        </div>

        <div class="collapsible-body" style="padding:20px; box-sizing: border-box;">
            <div class="col-xs-6 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Número')?></label>

                    <input type="text" class="form-control" name="<?php echo $view->field('numero')?>[]" value="<%=numero%>" placeholder="Número del Documento" size="11" maxlength="11" required="required" />
                </div>
            </div>
            <div class="col-xs-6 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Año')?></label>

                    <input type="text" class="form-control" name="<?php echo $view->field('anho')?>[]" value="<%=anho%>" placeholder="Año al que corresponde el Documnento" size="4" maxlength="4" required="required" />
                </div>
            </div>
            <div class="col-xs-12 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Título')?></label>

                    <input type="text" class="form-control" name="<?php echo $view->field('titulo')?>[]" value="<%=titulo%>" placeholder="Título del Documento" size="255" maxlength="255" required="required" />
                </div>
            </div>
            <div class="col-xs-12 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Descripción')?></label>

                    <textarea class="form-control" name="<?php echo $view->field('descripcion')?>[]" placeholder="Descripción del Documento" required="required"><%=descripcion%></textarea>
                </div>
            </div>
            <!--  //comentando en JS
            <div class="col-xs-6 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Institución')?></label>

                    <input type="text" class="form-control" name="<?php echo $view->field('institucion')?>[]" value="<?php echo jsspecialchars_inv_convenios('<%=institucion%>') ?>" placeholder="Institución al que pertenece el Documento" size="100" maxlength="100"  />
                </div>
            </div>
            <div class="col-xs-6 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Fecha')?></label>
                      <input type="date" class="form-control" name="<?php echo $view->field('fecha')?>[]" value="<%=fecha%>" placeholder="YYYY-MM-DD" size="10" maxlength="10"  />
                </div>
            </div>
            //Fin Comentario en JS
            -->
            <div class="col-xs-12 sin_padding_col">
                <div class="form-group">
                    <label><?php echo t('Enlace')?></label>
                    <input type="text" class="form-control" name="<?php echo $view->field('enlace')?>[]" value="<%=enlace%>" placeholder="http://..." size="255" maxlength="255" required="required" />
                    
                </div>
            </div>

            <div style="clear:both"></div>
            <div class="form-group">
                <input class="ccm-convenios-entry-sort" type="hidden" name="<?php echo $view->field('orden')?>[]" value="<%=orden%>"/>   
            </div>
        </div>
    </li>
</script>



