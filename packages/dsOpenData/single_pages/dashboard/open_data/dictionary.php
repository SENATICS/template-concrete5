<?php  defined('C5_EXECUTE') or die('Access denied.');
$form = Loader::helper('form');
?>
<style type="text/css" media="screen">
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

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Agregar Archivo')); ?>

    <?php //SE CARGA EL MENU SUPERIOR PARA EL DASHBOARD
        $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
        include($packagePath.'/single_pages/dashboard/open_data/menu.php'); 
    ?>

<?php  if (empty($titulo_datasets) ): ?>
    <div class="alert alert-info">
       <?php  echo t('No se encontraron Datos para el código <b>'.$datasetsID.'</b>') ?>
        
    </div>
<?php  else: ?>
    <div class="btn_add_resource"></div>
    <div class="sub_cabecera" ¡>
        <h3 class="titulo_seccion" style="display:inline-block !important; margin:4px; margin-left:1px;">
            <a class="btn_volver" href="<?php  echo View::url('dashboard/open_data/list_dictionary/show/'.$titulo_datasets[0]['datasetsID']) ?>">
                <i class='fa fa-arrow-left' aria-hidden='true'></i>
            </a>
            <?php echo "Agregar un Diccionario de Datos en: ".$titulo_datasets[0]['title'] ?>
        </h3>
    </div>

    <div class="row">
        <div class="col-sm-4 col-xs-12">
            <form class="form-horizontal" method="post" id="ccm-multilingual-page-report-form">
                <fieldset class="control-group">
                    <label class="control-label"><?php  echo t('Propiedad en Columna') ?><span class="formulario_requerido">*</span></label>

                    <div class="controls">
                        <input placeholder="Ej: ticket_id" maxlength="255" class="form-control" type="column_name" name="column_name" id="column_name" 
                        value="<?php  echo ( isset( $column_name ) ) ? $column_name : ''; ?>">
                        <input maxlength="255" class="form-control" type="hidden" name="datasetsID" id="datasetsID" value="<?php  echo $datasetsID; ?>">
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Nombre de la propiedad') ?></label>
                    <div class="controls">
                        <input placeholder="Ej: Identificación del Ticket" maxlength="255" class="form-control" type="property_name" name="property_name" id="property_name" 
                        value="<?php  echo ( isset( $property_name ) ) ? $property_name : ''; ?>">
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Labels alternativos, separados por comas') ?></label>
                    <div class="controls">
                        <input placeholder="Ej: codigo_ticket, identificación" maxlength="255" class="form-control" type="alternative_label" name="alternative_label" id="alternative_label" 
                        value="<?php  echo ( isset( $alternative_label ) ) ? $alternative_label : ''; ?>">
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Ejemplos') ?></label>
                    <div class="controls">
                        <input placeholder="Ej: 902" maxlength="255" class="form-control" type="example" name="example" id="example" 
                        value="<?php  echo ( isset( $example ) ) ? $example : ''; ?>">
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Tipo de datos') ?><span class="formulario_requerido">*</span></label>
                    <div class="controls">
                        
                        <select class="form-control" name="datatype" id="datatype" value="<?php  echo $datatype; ?>">
                            <option value="none"> Seleccione una opción </option>
                            <option value="integer" <?php echo $datatype=='integer' ? "selected" : ""; ?> ><?php  echo 'integer' ?></option>
                            <option value="string" <?php echo $datatype=='string' ? "selected" : ""; ?> ><?php  echo 'string' ?></option>
                            <option value="boolean" <?php echo $datatype=='boolean' ? "selected" : ""; ?> ><?php  echo 'boolean' ?></option>
                            <option value="decimal" <?php echo $datatype=='decimal' ? "selected" : ""; ?> ><?php  echo 'decimal' ?></option>
                            <option value="float" <?php echo $datatype=='float' ? "selected" : ""; ?> ><?php  echo 'float' ?></option>
                            <option value="double" <?php echo $datatype=='double' ? "selected" : ""; ?> ><?php  echo 'double' ?></option>
                            <option value="duration" <?php echo $datatype=='duration' ? "selected" : ""; ?> ><?php  echo 'duration' ?></option>
                            <option value="dateTime" <?php echo $datatype=='dateTime' ? "selected" : ""; ?> ><?php  echo 'dateTime' ?></option>
                            <option value="time" <?php echo $datatype=='time' ? "selected" : ""; ?> ><?php  echo 'time' ?></option>
                            <option value="date" <?php echo $datatype=='date' ? "selected" : ""; ?> ><?php  echo 'date' ?></option>
                            <option value="gYearMonth" <?php echo $datatype=='gYearMonth' ? "selected" : ""; ?> ><?php  echo 'gYearMonth' ?></option>
                            <option value="gYear" <?php echo $datatype=='gYear' ? "selected" : ""; ?> ><?php  echo 'gYear' ?></option>
                            <option value="gMonthDay" <?php echo $datatype=='gMonthDay' ? "selected" : ""; ?> ><?php  echo 'gMonthDay' ?></option>
                            <option value="gDay" <?php echo $datatype=='gDay' ? "selected" : ""; ?> ><?php  echo 'gDay' ?></option>
                            <option value="gMonth" <?php echo $datatype=='gMonth' ? "selected" : ""; ?> ><?php  echo 'gMonth' ?></option>
                            <option value="hexBinary" <?php echo $datatype=='hexBinary' ? "selected" : ""; ?> ><?php  echo 'hexBinary' ?></option>
                            <option value="base64Binary" <?php echo $datatype=='base64Binary' ? "selected" : ""; ?> ><?php  echo 'base64Binary' ?></option>
                            <option value="anyURI" <?php echo $datatype=='anyURI' ? "selected" : ""; ?> ><?php  echo 'anyURI' ?></option>
                            <option value="QName" <?php echo $datatype=='QName' ? "selected" : ""; ?> ><?php  echo 'QName' ?></option>
                            <option value="NOTATION" <?php echo $datatype=='NOTATION' ? "selected" : ""; ?> ><?php  echo 'NOTATION' ?></option>
                        </select>
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Cardinalidad') ?></label>
                    <div class="controls">
                        
                        <select class="form-control" name="cardinality" id="cardinality" value="<?php  echo $cardinality; ?>">
                            <option value="0"> Seleccione una opción </option>
                                <option value="single" <?php echo $cardinality=='single' ? "selected" : ""; ?> ><?php  echo 'Single' ?></option>
                                <option value="multivalue" <?php echo $cardinality=='multivalue' ? "selected" : ""; ?> ><?php  echo 'Multivalue' ?></option>
                        </select>
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Formato') ?></label>
                    <div class="controls">
                        <input placeholder="Ej: YYYY-MM-DD" maxlength="255" class="form-control" type="format" name="format" id="format" 
                        value="<?php  echo ( isset( $format ) ) ? $format : ''; ?>">
                    </div>
                    
                </fieldset>
                
                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Restricciones') ?></label>
                    <div class="controls">
                        <input placeholder="Ej: ticket_id > 0" maxlength="255" class="form-control" type="restrictions" name="restrictions" id="restrictions" 
                        value="<?php  echo ( isset( $restrictions ) ) ? $restrictions : ''; ?>">
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Descripción') ?></label>
                    <div class="controls">
                        <input placeholder="Ej: Número único de identificacion de las preguntas y respuestas correspondientes entre ellas" maxlength="255" class="form-control" type="description" name="description" id="description" 
                        value="<?php  echo ( isset( $description ) ) ? $description : ''; ?>">
                    </div>
                </fieldset>

                <fieldset class="control-group event_info_type">
                  <label class="control-label"><?php  echo t('Propiedad equivalente') ?></label>
                    <div class="controls">
                        <input placeholder="Ej: date-time string" maxlength="255" class="form-control" type="equivalent_property" name="equivalent_property" id="equivalent_property" 
                        value="<?php  echo ( isset( $equivalent_property ) ) ? $equivalent_property : ''; ?>">
                    </div>
                </fieldset>
               
                <fieldset class="control-group offset2">
                    <div class="clearfix">
                        <div style="margin-top: 10px;">
                            <button class="<?php  echo $button['class'] ?>" type="submit"><i class='fa fa-check' aria-hidden='true'></i> <?php  echo $button['label'] ?></button>
                            <a class="btn btn-default" href="<?php  echo View::url('dashboard/open_data/list_dictionary/show/'.$titulo_datasets[0]['datasetsID']) ?>">
                                <i class='fa fa-arrow-left' aria-hidden='true'></i> <?php  echo t('Volver a la listado'); ?>
                            </a>
                            
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
        <div class="col-sm-7 col-xs-12 col-xs-offset-1">
            <div class="card">
                <h2>Definiciones</h2>
                    <table class="table table-striped"> 
                        <thead> 
                            <tr> 
                             <th width="30%" style="min-width:150px;"> Nombre de la columna </th> 
                             <th width="70%"> Descripción </th> 
                            </tr> 
                        </thead> 
                        <tbody> 
                            <tr> 
                                <td> <b>Propiedad en Columna</b> </td> 
                                <td> Establece el nombre de la propiedad exactamente como se devuelve en el servicio </td> 
                            </tr> 
                            <tr> 
                                <td> <b>Nombre de la propiedad</b> </td> 
                                <td> Nombre completo de la propiedad </td> 
                            </tr> 
                            <tr> 
                                <td> <b>Labels alternativos</b> </td> 
                                <td> Establece los nombres alternativos de la propiedad en español, separados por comas </td> 
                            </tr> 
                            <tr> 
                                <td> <b>Ejemplos</b> </td> 
                                <td> Los valores de ejemplo </td> 
                            </tr> 
                            <tr> 
                                <td> <b>Tipo de datos</b> </td> 
                                <td> El tipo de dato esperado de los valores del attributo. Por ejemplo: String, Integer, Float, …. Idealmente se deben utilizar los tipos de datos definidos en el Estándar XML Schema Datatypes de la W3C. <a target="_blank" href="http://www.w3.org/TR/xmlschema-2/#built-in-primitive-datatypes">http://www.w3.org/TR/xmlschema-2/#built-in-primitive-datatypes</a>, por ejemplo: xsd:string, xsd:boolean, xsd:dateTime </td> 
                            </tr> 
                            <tr> 
                                <td> <b>Cardinalidad</b> </td> 
                                <td> Establace la relación existente entre la clases padre e hija (single or multivalue) </td> 
                            </tr> 
                            <tr> 
                                <td> <b>Formato</b> </td> 
                                <td> Forma en que es presentada la información. EJ,YYYY-MM-DD para las fechas</td> 
                            </tr> 
                            <tr> 
                                <td> <b>Restricciones</b> </td> 
                                <td> En caso que existan, se especifican las restricciones de los datos (incluyendo posibles valores separados por comas)</td> 
                            </tr> 
                            <tr> 
                                <td> <b>Descripción</b> </td> 
                                <td> Describe con más detalles los datos que se encuentran en el atributo en el idioma español </td> 
                            </tr> 
                            <tr> 
                                <td> <b>Propiedad equivalente</b> </td> 
                                <td> De existir, se especifica la correspondencia con una propiedad del estándar de datos <a href="http://www.open-contracting.org/?lang=es" target="_blank">Open Contracting </a> <a href="http://standard.open-contracting.org/latest/es/schema/reference/" target="_blank">Ver Referencias</a></td> 
                            </tr> 
                        </tbody> 
                    </table>
            </div>
        </div>
    </div>

   

<?php  endif; ?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>
