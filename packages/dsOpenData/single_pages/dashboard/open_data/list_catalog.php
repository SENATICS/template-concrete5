<?php  defined('C5_EXECUTE') or die('Access denied.');
?>

<style>
    div#ccm-dashboard-content>header{
        background-color:#428BCA !important;
        box-shadow: 0px 10px 10px #ECECEC;
    }
    div#ccm-dashboard-content>header h1{
        color:#FFF !important;   
    }
    div#ccm-dashboard-content .btn-link{
        color:#FFF !important;
    }
</style>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Datos Abiertos')); ?>
    
    <?php //SE CARGA EL MENU SUPERIOR PARA EL DASHBOARD
    $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
    include($packagePath.'/single_pages/dashboard/open_data/menu.php'); 
    ?>

    <!-- <h3><?php  echo t('Listado de Catálogos') ?></h3> -->
    
    <div class="alert alert-success" id="success" style="display: none">
        <?php  echo t('Se suprimió el Catálogo con todos los Conjuntos de datos') ?>
    </div>
    <div class="alert alert-danger" id="error" style="display: none">
        <?php  echo t('Algo salio mal en la eliminación. Inténtalo de nuevo') ?>
    </div>
    
    <div class="btn_add_resource"></div>
    <div class="sub_cabecera">
        <div class="row">
            <div class="col-sm-9 col-xs-12">
                <h3 class="titulo_seccion" style="display:inline-block !important; margin:4px; margin-left:1px;">
                    <?php echo "Catálogos";?>
                </h3>
            </div>
            <div class="col-sm-3 col-xs-12">
                <a href="<?php echo View::url('dashboard/open_data/catalog')?>" class="btn btn-info edit btn-block">
                    <i class="fa fa-plus" aria-hidden="true"></i> 
                    <?php  echo t('Agregar Catálogo') ?>
                </a>
            </div>
        </div>
    </div>


<?php  if (empty($catalogos)): ?>
    <div class="alert alert-info">
        <?php  echo t('No hay Catálogos. Ir a <a href="'.View::url('dashboard/open_data/catalog').'">Agregar Catálogo</a> para agregar nuevo catálogo.') ?>
    </div>
<?php  else: ?>

    

    <table id="listcatalog" class="table table-bordered table-hover display compact" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th><?php  echo t('ID') ?></th>
            <th><?php  echo t('Titulo del Catálogo') ?></th>
            <th><?php  echo t('Conjunto de Datos en el Catálogo') ?></th>
            <th class="th_opciones"><?php  echo t('Opciones') ?></th>
        </tr>
        </thead>

        <!-- <tfoot>
        <tr>
            <th><?php  echo t('ID') ?></th>
            <th><?php  echo t('Calendar title') ?></th>
            <th><?php  echo t('Events in calendar') ?></th>
            <th><?php  echo t('Options') ?></th>
        </tr>
        </tfoot> -->

        <tbody>
        <?php  foreach ($catalogos as $cata): ?>
            <tr class="toRemove<?php echo $cata['opendataID']; ?>">
                <td>
                    <?php  echo $cata['opendataID']; ?>
                </td>
                <td><input class="opendataID" type="hidden"
                           value="<?php  echo $cata['opendataID']; ?>"><?php  echo $cata['title']; ?>
                </td>

                <td>
                    <?php  if ($cata['total_datasets'] > 0): ?>
                        <span class="badge badge-important"><?php  echo $cata['total_datasets']; ?></span>
                    <?php  else: ?>
                        <span class="badge badge-success"><?php  echo $cata['total_datasets']; ?></span>
                    <?php  endif; ?>

                </td>
                <td class="td_opciones">
                    <a href="<?php  echo View::url('dashboard/open_data/list_datasets/show/' . $cata['opendataID']) ?>"
                       class="btn btn-success"><i class="fa fa-eye" aria-hidden="true"></i> <?php  echo t('Ver Conjuntos de Datos') ?></a>
                    <a href="<?php  echo View::url('dashboard/open_data/catalog/update/' . $cata['opendataID']) ?>"
                       class="btn btn-warning edit"><i class="fa fa-pencil" aria-hidden="true"></i> <?php  echo t('Editar') ?></a>
                    <!--<a href="<?php  echo View::url('dashboard/open_data/list_datasets/clearDatasets/' . $cata['opendataID']) ?>"
                       class="btn btn-info clearDatasets edit"><i class="fa fa-trash-o" aria-hidden="true"></i> <?php  echo t('Eliminar todos sus Conjuntos de Datos') ?></a>-->
                    <button onclick="borrar(<?php echo $cata['opendataID'] ?>,<?php echo $cata['total_datasets'] ?>)" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i> <?php  echo t('Eliminar') ?></button>
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

            $('#listcatalog').DataTable( {
                "scrollX": true,
                "aaSorting": [],
                responsive: true

            });

            $(".clearDatasets").click(function () {
                return confirm("<?php  echo t("¿Seguro que desea eliminar todos los Conjuntos de Datos?"); ?>");
            });

            
        });

        function borrar(id,total){
        var conf = confirm("<?php echo t("¿Está seguro que desea borrar este Catálogo con todos los Conjuntos de Datos?.Conjuntos de Datos en este catálogo:") ?> " + total);
                if (conf) {
                    $.ajax({
                        type: "POST",
                        url: "<?php  echo $this->url('dashboard/open_data/list_catalog/delete'); ?>",
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