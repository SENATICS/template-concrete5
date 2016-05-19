<?php  defined('C5_EXECUTE') or die('Access denied.');
?>
<style type="text/css" media="screen">
    div.dataTables_wrapper {
        width: 100%;
        margin: 0 auto;
    }
    .categoria{ 
        width: 400px !important;
        min-width: 200px !important;
    }
    div#ccm-dashboard-content>header{
        background-color:#bf9648 !important;
        box-shadow: 0px 10px 10px #ECECEC;
    }
    div#ccm-dashboard-content>header h1{
        color:#FFF !important;   
    }
    div#ccm-dashboard-content .btn-link{
        color:#FFF !important;
    }
</style>



<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Archivos')); ?>

    <?php //SE CARGA EL MENU SUPERIOR PARA EL DASHBOARD
    $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
    include($packagePath.'/single_pages/dashboard/open_data/menu.php'); 
    ?>
<div class="btn_add_resource"></div>
<div class="sub_cabecera">
    <div class="row">
        <div class="col-sm-9 col-xs-12">
            <h3 class="titulo_seccion" style="display:inline-block !important; margin:4px; margin-left:1px;">
                <a href="<?php echo View::url('dashboard/open_data/list_catalog') ?>">
                    <?php echo "Catálogos";?>
                </a>
                <?php echo " / " ?>
                <a href="<?php echo View::url('dashboard/open_data/list_datasets/show/'.$datasets[0]['opendataID']) ?>">
                    <?php echo $datasets[0]['title_catalogo'];?>
                </a>
                <?php echo " / "; ?>
                <a href="<?php echo View::url('dashboard/open_data/list_resource/show/'.$datasets[0]['datasetsID']) ?>">
                    <?php echo $datasets[0]['title']; ?>
                </a>
                <?php echo " / Diccionario de Datos"; ?>
            </h3 >
        </div>
        <div class="col-sm-3 col-xs-12">
            <a href="<?php echo View::url('dashboard/open_data/dictionary/'.$dataset_id)?>" class="btn btn-warning edit btn-block">
                <i class="fa fa-plus" aria-hidden="true"></i> 
                <?php  echo t('Agregar Fila') ?>
            </a>
        </div>
    </div>
</div>

<?php  if (empty($diccionario)): ?>
    <div class="margin-top-10"></div>
    <div class="alert alert-info">
    <?php if (is_null($dataset_id)): ?>
        <?php  echo t('Falta el código de Conjunto de Datos') ?>
    <?php else: ?>
        <?php  echo t('No se encontraron Recursos para el Conjunto de Datos con código <b>'.$dataset_id.'</b>. <a href="'.View::url('dashboard/open_data/list_catalog').'">Volver al Listado de Catalogos</a>') ?>
        
    <?php endif ?>
    </div>
<?php  else: ?>
    
    <table id="listdictionary" class="table table-bordered table-hover display compact" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th><?php  echo t('#') ?></th>
                <th><?php  echo t('Propiedad en Columna') ?></th>
                <th><?php  echo t('Nombre de la propiedad') ?></th>
                <th><?php  echo t('Label Alternativos') ?></th>
                <th><?php  echo t('Ejemplos ') ?></th>
                <th><?php  echo t('Tipo de Datos') ?></th>
                <th><?php  echo t('Cardinalidad') ?></th>
                <th><?php  echo t('Formato') ?></th>
                <th><?php  echo t('Restricciones') ?></th>
                <th><?php  echo t('Descripción') ?></th>
                <th><?php  echo t('Propiedad equivalente') ?></th>
                <th class="opt_diccionary"><?php  echo t('Opciones') ?></th>
                
            </tr>
        </thead>
        <?php $i=0; ?>
        <tbody>
        <?php  foreach ($diccionario as $dic): ?>
            
            
            <tr class="toRemove<?php echo $dic['dictionaryID']; ?>">
                <td>
                    <?php echo ++$i; ?>
                    <input class="dictionaryID" type="hidden" value="<?php  echo $dic['dictionaryID']; ?>">
                </td>
                <td>
                    <?php echo $dic['column_name']; ?>
                </td>
                <td>
                    <?php echo $dic['property_name']; ?>
                </td>
                <td>
                    <?php echo $dic['alternative_label']; ?>
                </td>
                <td>
                    <?php echo $dic['example']; ?>
                </td>
                <td>
                    <?php echo $dic['datatype']; ?>
                </td>
                <td>
                    <?php echo $dic['cardinality']; ?>
                </td>
                <td>
                    <?php echo $dic['format']; ?>
                </td>
                <td>
                    <?php echo $dic['restrictions']; ?>
                </td>
                <td>
                    <?php echo $dic['description']; ?>
                </td>
                <td>
                    <?php echo $dic['equivalent_property']; ?>
                </td>
                 
                <td class="opt_diccionary">
                    <a href="<?php echo View::url('dashboard/open_data/dictionary/update/'.$dic['dictionaryID']) ?>" class="btn btn-success edit">
                        <i class="fa fa-pencil" aria-hidden="true"></i>
                    </a>
                    <button class="btn btn-danger" onclick="borrar(<?php echo $dic['dictionaryID'];?>)">
                        <i class="fa fa-trash" aria-hidden="true"></i> 
                    </button>
                    
                </td>
            </tr>
        <?php  endforeach; ?>
        </tbody>
    </table>

    <?php //SE CARGA FOOTER
    $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
    include($packagePath.'/single_pages/dashboard/open_data/footer.php'); 
    ?>

    <script>
        $(document).ready(function () {

            $('#listdictionary').DataTable( {
                "scrollX": true,
                "aaSorting": []
            });      

        });
        function borrar(id){
        var conf = confirm("<?php echo t("¿Está seguro que desea borrar este Fila del Diccionario de Datos?") ?> ");
                if (conf) {
                    $.ajax({
                        type: "POST",
                        url: "<?php  echo $this->url('dashboard/open_data/list_dictionary/delete'); ?>",
                        data: {"id": id},
                        success: function (data) {
                            if (data == "OK") {
                                $("#success").fadeIn(1000).delay(2000).fadeOut(1000);
                                $('.toRemove'+id).remove();
                            }
                            else {
                                $("#error").fadeIn(1000).delay(2000).fadeOut(1000);
                            }
                        }
                    });
                }
                else
                    return false;
        };
    </script>

<?php  endif; ?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>
