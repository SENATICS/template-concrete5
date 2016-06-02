<?php  defined('C5_EXECUTE') or die('Access denied.');
$form = Loader::helper('form');
?>

<style type="text/css" media="screen">
    div#ccm-dashboard-content>header{
        background-color:#b74057 !important;
        box-shadow: 0px 10px 10px #ECECEC;
    }
    div#ccm-dashboard-content>header h1{
        color:#FFF !important;   
    }
    div#ccm-dashboard-content .btn-link{
        color:#FFF !important;
    }
</style>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Cargar Recurso')); ?>

    <?php //SE CARGA EL MENU SUPERIOR PARA EL DASHBOARD
        $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
        include($packagePath.'/single_pages/dashboard/open_data/menu.php'); 
    ?>

<?php  if (empty($titulo_datasets) ): ?>
    <div class="alert alert-info">
        <?php  echo t('El código <b>'.$resource_datasetsID.'</b> no es Válido') ?>
    </div>
<?php  else: ?>

    <div class="btn_add_resource"></div>
    <div class="sub_cabecera">
        <h3 class="titulo_seccion" style="display:inline-block !important; margin:4px; margin-left:1px;">
            <a class="btn_volver" href="<?php  echo View::url('dashboard/open_data/list_resource/show/'.$titulo_datasets[0]['datasetsID']) ?>">
                <i class='fa fa-arrow-left' aria-hidden='true'></i>
            </a>
            <?php if (empty($resource_title)) {
                echo "Agregar Recurso en <b>".$titulo_datasets[0]['title']."</b>";
            } else {
                echo "Editar Recurso";
            }?>
        </h3>
    </div>

    <div class="row">
        <div class="col-sm-6 col-xs-12">
            <form class="form-horizontal" method="post" id="ccm-multilingual-page-report-form">
                <fieldset class="control-group">
                    <label class="control-label"><?php  echo t('Recurso') ?><span class="formulario_requerido">*</span></label>

                    <div class="controls">
                        <input maxlength="255" class="form-control" type="text" placeholder="Ej. Listado de Elementos Culturales - Abril 2016" name="resource_title" id="resource_title" value="<?php  echo ( isset( $resource_title ) ) ? $resource_title : ''; ?>">
                        <input maxlength="255" class="form-control" type="hidden" name="resource_datasetsID" id="resource_datasetsID" value="<?php  echo $resource_datasetsID; ?>">
                    </div>
                </fieldset>



                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Descripción') ?></label>
                    <div class="controls">
                         <textarea placeholder="Descripción detallada del recurso" class="form-control" rows="5" name="resource_description"
                          id="resource_description"><?php  echo (isset($resource_description)) ? $resource_description : ''; ?></textarea>
                    </div>
                </fieldset>

               
                <fieldset class="control-group offset2">
                    <div class="clearfix">
                        <div style="margin-top: 10px;">
                            <button class="<?php  echo $button['class'] ?>" type="submit"><i class='fa fa-check' aria-hidden='true'></i> <?php  echo $button['label'] ?></button>
                            <a class="btn btn-default" href="<?php  echo View::url('dashboard/open_data/list_resource/show/'.$titulo_datasets[0]['datasetsID']) ?>">
                                <i class='fa fa-arrow-left' aria-hidden='true'></i> <?php  echo t('Volver a la listado'); ?>
                            </a>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
        <div class="col-sm-6 col-xs-12">
            <div class="card">
                <h2>¿Que es un Recurso?</h2>
                <blockquote class="detalle_descripcion">Es un rango de aplicabilidad temporal de un conjunto de datos, por ejemplo, para un conjunto de datos del censo del año 2011, en el mes de abril.</blockquote>
                <h2>¿Cómo es un dato abierto?</h2>
                <blockquote class="detalle_descripcion">Un dato abierto es aquel que:
            <ul>
                <li>Está disponible y accesible desde internet</li>
                <li>Cualquiera puede descargarlo</li>
                <li>Cualquiera puede usarlo, re-usarlo y redistribuirlo</li>
                <li>Se encuentra en formatos abiertos (OpenFormat)</li>
                <li>No tiene un uso restringido (OpenLicense)</li>
            </ul>

</blockquote>
            </div>
        </div>
    </div>

   

<?php  endif; ?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>
