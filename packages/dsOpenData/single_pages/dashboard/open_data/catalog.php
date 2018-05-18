<?php  defined('C5_EXECUTE') or die('Access denied.');
$form = Loader::helper('form');
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
<?php  if (empty($catalog_title) && ( !isset( $catalog_title ))): ?>
    <div class="alert alert-info">
        <?php  echo t('No se encontró el Catálogo con el código <b>'.$catalogo_id.'</b>') ?>
    </div>
<?php  else: ?>
    <div class="btn_add_resource"></div>
    <div class="sub_cabecera">
        <h3 class="titulo_seccion" style="display:inline-block !important; margin:4px; margin-left:1px;">
            <a class="btn_volver" href="<?php  echo View::url('dashboard/open_data/list_catalog') ?>">
                <i class='fa fa-arrow-left' aria-hidden='true'></i>
            </a>
            <?php echo "Agregar / Editar un Catálogo";?>
        </h3>
    </div>
    
    <form class="form-horizontal col-sm-6 col-xs-12" method="post" id="ccm-multilingual-page-report-form">
        <fieldset class="control-group">

            <label class="control-label"><?php  echo t('Catalogo de Datos Abiertos') ?><span class="formulario_requerido">*</span></label>
            <div class="controls">
                <input maxlength="255" placeholder="Ej: Datos" class="form-control col-xs-6" type="text" name="catalog_title" id="catalog_title" value="<?php  echo ( isset( $catalog_title ) ) ? $catalog_title : ''; ?>">
            </div>

            <label class="control-label"><?php  echo t('Organización') ?><span class="formulario_requerido">*</span></label>
            <div class="controls">
                <input maxlength="255" placeholder="Ej: Secretaría Nacional de Tecnologías de la Información y Comunicación" class="form-control col-xs-6" type="text" name="catalog_organization" id="catalog_organization" value="<?php  echo ( isset( $catalog_organization ) ) ? $catalog_organization : ''; ?>">
            </div>

            <label class="control-label"><?php  echo t('URL') ?><span class="formulario_requerido">*</span></label>
            <div class="controls">
                <input maxlength="255" placeholder="Ej: http://www.senatics.gov.py" class="form-control col-xs-6" type="url" name="catalog_url" id="catalog_url" value="<?php  echo ( isset( $catalog_url ) ) ? $catalog_url : ''; ?>">
            </div>

            <label class="control-label"><?php  echo t('Correo elctrónico de la Organización') ?><span class="formulario_requerido">*</span></label>
            <div class="controls">
                <input maxlength="255" placeholder="Ej: soporteportales@senatics.gov.py" class="form-control col-xs-6" type="email" name="catalog_email" id="catalog_email" value="<?php  echo ( isset( $catalog_email ) ) ? $catalog_email : ''; ?>">
            </div>
        </fieldset>


        <fieldset class="control-group offset2">
            <div class="clearfix">
                <div style="margin-top: 10px;">
                    <button class="<?php  echo $button['class'] ?>" type="submit"><i class='fa fa-check' aria-hidden='true'></i> <?php  echo $button['label'] ?></button>
                    <a class="btn btn-default" href="<?php  echo View::url('dashboard/open_data/list_catalog') ?>">
                        <i class='fa fa-arrow-left' aria-hidden='true'></i>  <?php  echo t('Volver a la lista de Catálogos'); ?>
                    </a>
                </div>
            </div>
        </fieldset>
    </form>
    <div class="col-sm-6 col-xs-12">
        <div class="card">
            <h2>¿Que es un Catalogo?</h2>
            <blockquote class="detalle_descripcion">El catálogo de Datos Abiertos es el que contiene a los conjunto de datos, una colección de conjuntos de datos. El Catálogo de Datos Abiertos de Gobierno (<a taget="_blank" href="http://www.datos.gov.py">www.datos.gov.py</a>), es el portal oficial de datos abiertos del estado paraguayo, que se constituye como un <b>único punto de acceso a los datos abiertos</b> y disponibilizados por las instituciones públicas, siguiendo los estándares y formatos abiertos.
Este catálogo presenta los conjuntos de datos (datasets) organizados por instituciones, agrupados por categorías y presentados en distintos formatos, para facilitar la libre descarga de los mismos; así como las licencias libres asociadas al uso, reuso y distribución de cada datasets.
</blockquote>
        </div>
    </div>
<?php  endif; ?>
<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>