<?php  defined('C5_EXECUTE') or die('Access denied.');
$form = Loader::helper('form');
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

<?php  if (empty($catalogos) && ( !isset( $datasetsID ) || $datasetsID === null)): ?>
    <div class="alert alert-info">
        <?php  echo t('No hay Catálogo para añadir un nuevo Conjunto de Datos. Ir al Añadir Catálogo para añadir un nuevo Catálogo') ?>
    </div>
<?php  else: ?>

    <div class="btn_add_resource"></div>
    <div class="sub_cabecera">
        <h3 class="titulo_seccion" style="display:inline-block !important; margin:4px; margin-left:1px;">
            <a class="btn_volver" href="<?php  echo View::url('dashboard/open_data/list_datasets/show/'.$titulo_datasets[0]['opendataID']) ?>">
                <i class='fa fa-arrow-left' aria-hidden='true'></i>
            </a>
            <?php echo "Agregar / Editar un Conjunto de Dato";?>
        </h3>
    </div>
    
    <div class="row">
        <div class="col-sm-6 col-xs-12">
            <form class="form-horizontal" method="post" id="ccm-multilingual-page-report-form">
                
                <fieldset class="control-group">
                    <label class="control-label"><?php  echo t('Catálogo') ?><span class="formulario_requerido">*</span></label>
                    <div class="controls">
                        <?php  $datasets_catalogID = isset( $datasets_catalogID ) ? $datasets_catalogID : null; ?>

                        <select class="form-control" name="datasets_catalogID" id="datasets_catalogID" value="<?php  echo $datasets_catalogID; ?>">
                            <option value="0"> Seleccione una opción </option>
                            <?php  foreach ($catalogos as $cata): ?>
                                <option value="<?php  echo $cata['opendataID'] ?>" <?php  $selected = $cata['opendataID']==$datasets_catalogID ? "selected" : ""; echo $selected; ?> ><?php  echo $cata['title'] ?></option>
                            <?php  endforeach; ?>
                        </select>
                    </div>
                </fieldset>

                <fieldset class="control-group">
                    <label class="control-label"><?php  echo t('Título del Conjunto de Datos') ?><span class="formulario_requerido">*</span></label>

                    <div class="controls">
                        <input maxlength="150" placeholder="Ej. Elementos Culturales" class="form-control" type="text" name="datasets_title" id="datasets_title" value="<?php  echo ( isset( $datasets_title ) ) ? $datasets_title : ''; ?>">
                    </div>
                </fieldset>

                

                <fieldset class="control-group datasets_description">
                    <label class="control-label"><?php  echo t('Descripción') ?></label>

                    <div class="controls">
                        <textarea placeholder="Descripción detallada del Conjunto de Datos" class="form-control" rows="5" name="datasets_description"
                          id="datasets_description"><?php  echo (isset($datasets_description)) ? $datasets_description : ''; ?></textarea>
                    </div>
                </fieldset>
                <fieldset class="control-group datasets_url">
                    <label class="control-label"><?php  echo t('URL Página de Descarga') ?><span class="formulario_requerido">*</span></label>

                    <div class="controls">
                        <input maxlength="255" style="width:100%;" placeholder="Ej: http://www.midominio.gov.py/datos/conjunto-de-datos" type="url" name="datasets_url" id="datasets_url"
                               value="<?php  echo (isset($datasets_url)) ? $datasets_url : ''; ?>">
                    </div>

                </fieldset>
                <fieldset class="control-group datasets_author">
                    <label class="control-label"><?php  echo t('Autor') ?> </label>

                    <div class="controls">
                        <input maxlength="255" placeholder="Ej: Juan Gonzalez"  type="text" name="datasets_author" id="datasets_author"
                               value="<?php  echo (isset($datasets_author)) ? $datasets_author : ''; ?>">
                    </div>

                </fieldset>
                <fieldset class="control-group datasets_email_author">
                    <label class="control-label"><?php  echo t('E-mail Autor') ?> </label>

                    <div class="controls">
                        <input style="width:100%;" maxlength="255" placeholder="Ej: jgonzalez@midominio.gov.py" type="email" name="datasets_email_author" id="datasets_email_author"
                               value="<?php  echo (isset($datasets_email_author)) ? $datasets_email_author : ''; ?>">
                    </div>

                </fieldset>
                <fieldset class="control-group datasets_licenseID">
                    <label class="control-label"><?php  echo t('Licencia') ?><span class="formulario_requerido">*</span></label>

                    <div class="controls"> <!-- FOREACH PARA LISTAR LICENCIAS -->
                        <?php  $datasets_licenseID = isset( $datasets_licenseID ) ? $datasets_licenseID : null; ?>
                        <select class="form-control" name="datasets_licenseID" id="datasets_licenseID" value="<?php  echo $datasets_licenseID; ?>">
                            <option value="0"> Seleccione una opción </option>
                            <?php  foreach ($licenses as $lic): ?>
                                <option value="<?php  echo $lic['licenseID'] ?>" <?php  $selected = $lic['licenseID']==$datasets_licenseID ? "selected" : ""; echo $selected; ?> ><?php  echo $lic['license_name'] ?></option>
                            <?php  endforeach; ?>
                        </select>
                    </div> 

                </fieldset>
                <fieldset class="control-group datasets_tags">
                    <label class="control-label"><?php  echo t('Etiquetas') ?> </label>
                    <!-- separado por comas -->
                    <div class="controls">
                        <input style="width:100%;" placeholder="Cultura,Transparencia,Elemento Cultural (Separados por comas)" maxlength="255" type="text" name="datasets_tags" id="datasets_tags"
                               value="<?php  echo (isset($datasets_tags)) ? $datasets_tags : ''; ?>">
                    </div>

                </fieldset>
                <fieldset class="control-group datasets_version">
                    <label class="control-label"><?php  echo t('Versión') ?> </label>

                    <div class="controls">
                        <input placeholder="1.0" maxlength="255" type="text" name="datasets_version" id="datasets_version"
                               value="<?php  echo (isset($datasets_version)) ? $datasets_version : ''; ?>">
                    </div>

                </fieldset>
                <fieldset class="control-group offset2">
                    <div class="clearfix">
                        <div style="margin-top: 10px;">
                            <button class="<?php  echo $button['class'] ?>" type="submit"><i class='fa fa-check' aria-hidden='true'></i> <?php  echo $button['label'] ?></button>
                            <a class="btn btn-default" href="<?php  echo View::url('dashboard/open_data/list_datasets/show/'.$titulo_datasets[0]['opendataID']) ?>">
                                <i class='fa fa-arrow-left' aria-hidden='true'></i> <?php  echo t('Volver a la lista de Conjunto de Datos'); ?>
                            </a>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
        <div class="col-sm-6 col-xs-12">
            <div class="card">
                <h2>¿Datos Abiertos?</h2>
                <blockquote class="detalle_descripcion">El concepto <b>datos abiertos</b> (open data, en inglés) es una filosofía y práctica que persigue que determinados tipos de datos estén disponibles de forma libre para todo el mundo, sin restricciones de derechos de autor, de patentes o de otros mecanismos de control. La reutilización de la información es el objetivo fundamental de las políticas de Open Data. La información del sector público constituye una materia prima importante para diversos productos y servicios de contenidos digitales.</blockquote>

                <h2>¿Que son los Conjunto de Datos?</h2>
                <blockquote class="detalle_descripcion">Es un <b>conjunto de información estructurada que describe algún tema(s) de interés</b>. Un conjunto de datos (conocido también por el anglicismo: dataset, comúnmente utilizado en algunos países hispanohablantes) es una colección de datos habitualmente tabulada.

En general y en su versión más simple, un conjunto de datos corresponde a los contenidos de una única tabla de base de datos o una única matriz de datos estadística, donde cada columna de la tabla representa una variable en particular, y cada fila representa a un miembro determinado del conjunto de datos en cuestión.

Un conjunto de datos contiene los valores para cada una de las variables, como por ejemplo la altura y el peso de un objeto, que corresponden a cada miembro del conjunto de datos. Cada uno de estos valores se conoce con el nombre de dato. El conjunto de datos puede incluir datos para uno o más miembros en función de su número de filas.</blockquote>
            </div>
        </div>
    </div>

<?php  endif; ?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>
