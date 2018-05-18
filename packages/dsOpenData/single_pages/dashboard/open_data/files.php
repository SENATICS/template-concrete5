<?php  defined('C5_EXECUTE') or die('Access denied.');
$form = Loader::helper('form');

$al = Loader::helper('concrete/asset_library');
$ih = Loader::helper('concrete/ui');
$args = array();
$addSelected = true;

?>

<style type="text/css" media="screen">
    div#ccm-dashboard-content>header{
        background-color:#7f59d4 !important;
        box-shadow: 0px 10px 10px #ECECEC;
    }
    div#ccm-dashboard-content>header h1{
        color:#FFF !important;   
    }
    div#ccm-dashboard-content .btn-link{
        color:#FFF !important;
    }
</style>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Agregar Archivo')); ?>

    <?php //SE CARGA EL MENU SUPERIOR PARA EL DASHBOARD
        $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
        include($packagePath.'/single_pages/dashboard/open_data/menu.php'); 
    ?>

<?php  if (empty($titulo_recurso) ): ?>
    <div class="alert alert-info">
        <?php  echo t('El código <b>'.$resourceID.'</b> no es Válido') ?>
    </div>
<?php  else: ?>
    <div class="btn_add_resource"></div>
    <div class="sub_cabecera">
        <h3 class="titulo_seccion" style="display:inline-block !important; margin:4px; margin-left:1px;">
            <a class="btn_volver" href="<?php  echo View::url('dashboard/open_data/list_resource/show/'.$titulo_recurso[0]['datasetsID']) ?>">
                <i class='fa fa-arrow-left' aria-hidden='true'></i>
            </a>
            <?php echo "Agregar Archivos en <b>".$titulo_recurso[0]['resource_title']."</b>" ?>
        </h3>
    </div>

    <div class="row">
        <div class="col-sm-6 col-xs-12">
            <form class="form-horizontal" method="post" id="ccm-multilingual-page-report-form">
                <fieldset class="control-group">
                    
                    <div >
                        <label class="control-label"><?php  echo t('URL Archivo') ?><span class="formulario_requerido">*</span></label>
                        <select name="linkType" id="imageLinkType" class="form-control" style="width: 100%;">
                            <option value="0" <?php echo (empty($externalLink) && empty($internalLinkCID) && empty($fID) ? 'selected="selected"' : '')?>><?php echo t('None')?></option>
                            <option value="1" <?php echo (empty($externalLink) && !empty($internalLinkCID) && empty($fID) ? 'selected="selected"' : '')?>><?php echo t('Another Page')?></option>
                            <option value="2" <?php echo (!empty($externalLink)  && empty($internalLinkCID) && empty($fID)? 'selected="selected"' : '')?>><?php echo t('External URL')?></option>
                            <option value="3" <?php echo (empty($externalLink)  && empty($internalLinkCID) && !empty($fID) ? 'selected="selected"' : '')?>><?php echo t('Seleccionar Archivo')?></option>

                        </select>
                    </div>

                    <div id="imageLinkTypePage" style="display: none;" >
                       <label class="control-label"><?php  echo t('Seleccionar Página') ?><span class="formulario_requerido">*</span></label>
                        <?php echo Loader::helper('form/page_selector')->selectPage('internalLinkCID', $internalLinkCID); ?>
                    </div>

                    <div id="imageLinkTypeExternal" style="display: none;" >
                        <label class="control-label"><?php  echo t('Enlace Externo') ?><span class="formulario_requerido">*</span></label>
                        <input style="width: 100%;" maxlength="255" placeholder="Ej: http://www.senatics.gov.py" type="url" name="externalLink" id="externalLink" value="<?php  echo ( isset( $externalLink ) ) ? $externalLink : ''; ?>">
                    </div>

                    <div id="archivo" style="display: none;" >
                        <label class="control-label"><?php  echo t('Seleccinar Archivo') ?><span class="formulario_requerido">*</span></label>
                        <?php
                            if (isset($fID) && $fID > 0){
                                $bf = File::getByID($fID); 
                            }
                         ?>
                        <?php echo $al->file('ccm-b-file', 'fID', t('Choose File'), $bf);?>
                    </div>
                    <div >
                        <label class="control-label"><?php  echo t('Target') ?></label>
                        <select name="target" id="target" class="form-control" style="width: 100%;">
                            <option value="0" <?php echo ($target == 0  ? 'selected="selected"' : '')?>><?php echo t('Abrir en esta pagina (_self)')?></option>
                            <option value="1" <?php echo ($target == 1  ? 'selected="selected"' : '')?>><?php echo t('Abrir en nueva pestaña (_blank)')?></option>
                        </select>
                    </div>
                    <input maxlength="255" class="form-control" type="hidden" name="resourceID" id="resourceID" value="<?php  echo $resourceID; ?>">
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Formato') ?><span class="formulario_requerido">*</span></label>
                    <div class="controls">
                        <?php  $format = isset( $format ) ? $format : null; ?>
                        <select class="form-control" name="format" id="format" value="<?php  echo $format; ?>">
                            <option value="0"> Seleccione una opción </option>
                            <?php  foreach ($formatos as $formato): ?>
                                <option value="<?php  echo $formato['formatID'] ?>" <?php  $selected = $formato['formatID']==$format ? "selected" : ""; echo $selected; ?> ><?php  echo $formato['description'] ?></option>
                            <?php  endforeach; ?>
                        </select>
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Nivel') ?></label>
                    <div class="controls">
                                                  
                        <select class="form-control" name="level" id="level" value="<?php  echo $level; ?>">
                            <option value="0"> Seleccione una opción </option>
                            <?php for ($i=1; $i <= 5 ; $i++) { 
                                ?> 
                                <option value="<?php  echo $i ?>" <?php  $selected = $i==$level ? "selected" : ""; echo $selected; ?> ><?php  echo $i ?></option>
                                
                            <?php } ?>
                            
                        </select>
                    </div>
                </fieldset>

               
                <fieldset class="control-group offset2">
                    <div class="clearfix">
                        <div style="margin-top: 10px;">
                            <button class="<?php  echo $button['class'] ?>" type="submit"><i class='fa fa-check' aria-hidden='true'></i> <?php  echo $button['label'] ?></button>
                            <a class="btn btn-default" href="<?php  echo View::url('dashboard/open_data/list_resource/show/'.$titulo_recurso[0]['datasetsID']) ?>">
                                <i class='fa fa-arrow-left' aria-hidden='true'></i> <?php  echo t('Volver a la listado'); ?>
                            </a>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
        <div class="col-sm-6 col-xs-12">
            <div class="card">
                <h2>¿Que es un Archivo?</h2>
                <blockquote class="detalle_descripcion">Una forma descargable de este conjunto de datos, en un lugar específico, en un formato específico.</blockquote>
            </div>
            <h2>Niveles de apertura de datos</h2>
            <blockquote class="detalle_descripcion">Categorización respecto a qué tan abiertos y usables son los datos que puede ofrecer una institución:
            <div class="image_5start"></div>
            <a href="http://5stardata.info/es/" target="_blank">ver más información</a>
            </blockquote>
            
        </div>
    </div>

   

<?php  endif; ?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>

<script type="text/javascript">
    refreshImageLinkTypeControls = function() {
        var linkType = $('#imageLinkType').val();
        $('#imageLinkTypePage').toggle(linkType == 1);
        $('#imageLinkTypeExternal').toggle(linkType == 2);
        $('#archivo').toggle(linkType == 3);
    }
    $(document).ready(function() {
        $('#imageLinkType').change(refreshImageLinkTypeControls);
        refreshImageLinkTypeControls();
    });
</script>