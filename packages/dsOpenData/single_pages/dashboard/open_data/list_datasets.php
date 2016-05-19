<?php  defined('C5_EXECUTE') or die('Access denied.');
?>

<style>
    div#ccm-dashboard-content>header{
        background-color:#42ca90 !important;
        box-shadow: 0px 10px 10px #ECECEC;
    }
    div#ccm-dashboard-content>header h1{
        color:#FFF !important;   
    }
    div#ccm-dashboard-content .btn-link{
        color:#FFF !important;
    }
</style>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Conjunto de Datos')); ?>

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
                    <?php echo $titulo_catalog[0]['title'] ?>
                </h3 >
            </div>
            <div class="col-sm-3 col-xs-12">
                <a href="<?php echo View::url('dashboard/open_data/datasets/'.$catalogID)?>" class="btn btn-warning edit btn-block">
                    <i class="fa fa-plus" aria-hidden="true"></i> 
                    <?php  echo t('Agregar Conjunto de Datos') ?>
                </a>
            </div>
        </div>
    </div>
<?php  if (empty($datasets)): ?>
    <div class="margin-top-10"></div>
    <div class="alert alert-info">
        <?php  echo t("No se encontró el Catálogo de Datos Abiertos con el código <b>".$catalogID."</b>. <a href='".View::url('dashboard/open_data/list_catalog')."'>Volver al Listado de Catalogos</a>") ?>
    </div>
<?php  else: ?>
    

    <table id="listdatasets" class="table table-bordered table-hover display compact" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th><?php  echo t('ID') ?></th>
            <th><?php  echo t('Titulo del Conjunto de Datos') ?></th>
            <th><?php  echo t('Recursos en el Conjunto de Datos') ?></th>
            <th class="th_opciones"><?php  echo t('Opciones') ?></th>
        </tr>
        </thead>

        <tbody>
        <?php  foreach ($datasets as $data): ?>
            <tr class="toRemove<?php echo $data['datasetsID'];?>  ">
                <td>
                    <?php  echo $data['datasetsID']; ?>
                    <input class="datasetsID" type="hidden" value="<?php echo $data['datasetsID']; ?>">
                </td>
                <td><?php  echo $data['title']; ?>
                </td>

                <td>
                    <?php  if ($data['total_resource'] > 0): ?>
                        <span class="badge badge-important"><?php  echo $data['total_resource']; ?></span>
                    <?php  else: ?>
                        <span class="badge badge-success"><?php  echo $data['total_resource']; ?></span>
                    <?php  endif; ?>

                </td>
                <td class="td_opciones">
                    <a href="<?php  echo View::url('dashboard/open_data/list_resource/show/' . $data['datasetsID']) ?>"
                       class="btn btn-success"><i class="fa fa-eye" aria-hidden="true"></i> <?php  echo t('Ver Recursos') ?></a>
                    <a href="<?php  echo View::url('dashboard/open_data/datasets/update/'.$data['datasetsID']) ?>"
                       class="btn btn-warning edit"><i class="fa fa-pencil" aria-hidden="true"></i> <?php  echo t('Editar') ?></a>
                    <!--<a href="<?php  echo View::url('dashboard/open_data/list_datasets/clearDatasets/' . $data['datasetsID']) ?>"
                       class="btn btn-info clearDatasets edit"><i class="fa fa-trash-o" aria-hidden="true"></i> <?php  echo t('Eliminar todos los Recursos') ?></a>-->
                    
                    <button onclick="borrar(<?php echo $data['datasetsID'] ?>,<?php echo $data['total_resource'] ?>)" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i> <?php  echo t('Eliminar') ?></button>
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

            $('#listdatasets').DataTable( {
                "scrollX": true,
                "aaSorting": []
            });


            $(".clearDatasets").click(function () {
                return confirm("<?php  echo t("¿Seguro que desea eliminar todos los Recursos?"); ?>");
            });
            
        });
    function borrar(id,total){
        var conf = confirm("<?php echo t("¿Está seguro que desea borrar este Conjunto de Datos con todos los Recursos?. Recurcos en este Conjunto de Datos: ") ?> "+total);
            if (conf) {
                $.ajax({
                    type: "POST",
                    url: "<?php  echo $this->url('dashboard/open_data/list_datasets/delete'); ?>",
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
