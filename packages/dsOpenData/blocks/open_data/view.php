<?php 
defined('C5_EXECUTE') or die(_("Access Denied."));
$c = Page::getCurrentPage();
?>
<style>

    .page_list li{
        list-style-type: none !important;   
        color:#000;
    }
    .page_list{
        padding-left:0px !important;
    }
    
    .page_list .collapsible-header{
        height:auto !important;   
    }
    .page_list .collapsible-header{
        font-size:14px !important;
        font-weight:500 !important;
    }
    .page_list .collapsible-header i{
        margin-right:0px !important;
        margin-left:10px !important;
    }
    .page_list .collapsible-body{
        background: #FAFAFA;
    }
    .page_list .descripcion_ubicacion p{
        padding-left:46px;   
        font-size:12px !important;
        line-height:1rem !important;
        margin-top:0px !important;
    }
    .page_list .img_info{
        width:100%;
        max-width:300px;
        float:left;
        margin-right: 20px;
    }

     .dataTables_scrollHeadInner{
    width:100% !important;
    
    }
    .dataTable {
        width:100% !important;
    }

    
</style>
<?php  if ($c->isEditMode()): ?>
    <?php  if ($catalogos[0]['title'] === null): ?>
        <div class="eventCalendarInfo">
            <?php  echo t('Sin Catálogos Seleccionados') ?>
        </div>
    <?php  else: ?>
        <div class="alert alert-info" role="alert">
            <?php  echo t('Modo Edición del Catálogo: <b>') ?> <?php  echo $catalogos[0]['title']."</b>"; ?>
        </div>
    <?php  endif; ?>
<?php  else: ?>

<div itemscope itemtype="https://schema.org/DataCatalog">
    <!-- CATALOGO -->
    <meta itemprop="name" content="<?php echo $catalogos[0]['title'] ?>">
    <meta itemprop="url" content="<?php echo $catalogos[0]['url'] ?>">
    <meta itemprop="description" content="<?php echo $catalogos[0]['email_organization'] ?>">
    <ul  class="collapsible page_list" data-collapsible="accordion" style="padding-left:0px !important">
        <?php  foreach ($datasets as $data): ?>


            <!-- Modal -->
            <div id="modal<?php echo $data['datasetsID']; ?>" class="modal bottom-sheet" style="max-height:90% !important">
                <div class="modal-content" style="padding-bottom:0px !important">
                    <h4>Diccionario de Datos de <b><?php  echo $data['title_datasets']; ?></b></h4>
                    <div class="row" style="margin-bottom:0px !important">
                    <style type="text/css" media="screen">
                        .collection-item .title{
                            font-weight: bold;
                            font-size: 14px;
                        }
                        .collection-item p{
                            margin: 0px !important;
                        }
                    </style>
                    <?php 
                    $db = Loader::db();
                    $q_dic = " SELECT DIC.* ";
                    $q_dic .= "FROM dsOpenDataDictionary as DIC ";
                    $q_dic.= " LEFT JOIN dsOpenDataDataset AS ODD ON ODD.datasetsID = DIC.datasetsID ";
                    $q_dic.= " WHERE DIC.datasetsID = ".$data['datasetsID'];
                    $q_dic.= " group by DIC.dictionaryID ";

                    $diccionario= $db->GetAll($q_dic);
                    if (empty($diccionario)) {
                       echo "no hay diccionario";
                    } else {
                        ?>

                         <table id="diccionario<?php echo $data['datasetsID']; ?>" class="table table-bordered table-hover display compact" cellspacing="0" width="100%">
                                <thead>
                                    <?php $i= 0; ?><!--Contador de Conjunto de Datos -->
                                    <tr>
                                        <th><?php  echo t('#') ?></th>
                                        <th><?php  echo t('Propiedad en Columna') ?></th>
                                        <th><?php  echo t('Nombre de la propiedad') ?></th>
                                        <th><?php  echo t('Label Alternativos') ?></th>
                                        <th><?php  echo t('Ejemplo') ?></th>
                                        <th><?php  echo t('Tipo de Datos') ?></th>
                                        <th><?php  echo t('Cardinalidad') ?></th>
                                        <th><?php  echo t('Formato') ?></th>
                                        <th><?php  echo t('Restricciones') ?></th>
                                        <th><?php  echo t('Descripción') ?></th>
                                        <th><?php  echo t('Propiedad equivalente') ?></th>            
                                    </tr>
                                </thead>

                               <?php $i=0; ?>
                                <tbody>
                                <?php  foreach ($diccionario as $dic): ?>
                                    <tr>
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
                                    </tr>
                                <?php  endforeach; ?>
                                </tbody>
                            </table>
                            <hr>
                            <h4>Referencia</h4>
                            <p>La siguiente tabla presenta una breve descripción de los atributos incluídos en el diccionario de datos del dataset.
    Básicamente, un diccionario de datos describe los atributos que contiene un dataset, incluyendo el tipo de dato y las restricciones que se apliquen a cada uno.</p>
                            <table class="striped bordered highlight "> 
                                <thead> 
                                    <tr> 
                                     <th width="20%" style="min-width:150px;"> Nombre de la columna </th> 
                                     <th width="80%"> Descripción </th> 
                                    </tr> 
                                </thead> 
                                <tbody > 
                                    <tr > 
                                        <td > Propiedad en Columna </td> 
                                        <td> Establece el nombre de la propiedad exactamente como se devuelve en el servicio </td> 
                                    </tr> 
                                    <tr> 
                                        <td> Nombre de la propiedad </td> 
                                        <td> Nombre completo de la propiedad </td> 
                                    </tr> 
                                    <tr> 
                                        <td> Labels alternativos </td> 
                                        <td> Establece los nombres alternativos de la propiedad en español, separados por comas </td> 
                                    </tr> 
                                    <tr> 
                                        <td> Ejemplos </td> 
                                        <td> Los valores de ejemplo </td> 
                                    </tr> 
                                    <tr> 
                                        <td> Tipo de datos </td> 
                                        <td> El tipo de dato esperado de los valores del attributo. Por ejemplo: String, Integer, Float, …. Idealmente se deben utilizar los tipos de datos definidos en el Estándar XML Schema Datatypes de la W3C. <a target="_blank" href="http://www.w3.org/TR/xmlschema-2/#built-in-primitive-datatypes">http://www.w3.org/TR/xmlschema-2/#built-in-primitive-datatypes</a>, por ejemplo: xsd:string, xsd:boolean, xsd:dateTime </td> 
                                    </tr> 
                                    <tr > 
                                        <td> Cardinalidad </td> 
                                        <td > Establace la relación existente entre la clases padre e hija (single or multivalue) </td> 
                                    </tr> 
                                    <tr > 
                                        <td> Formato </td> 
                                        <td > Forma en que es presentada la información. EJ,YYYY-MM-DD para las fechas</td> 
                                    </tr> 
                                    <tr> 
                                        <td> Restricciones </td> 
                                        <td> En caso que existan, se especifican las restricciones de los datos (incluyendo posibles valores separados por comas)</td> 
                                    </tr> 
                                    <tr> 
                                        <td> Descripción </td> 
                                        <td> Describe con más detalles los datos que se encuentran en el atributo en el idioma español </td> 
                                    </tr> 
                                    <tr > 
                                        <td> Propiedad equivalente </td> 
                                        <td> De existir, se especifica la correspondencia con una propiedad del estándar de datos <a href="http://www.open-contracting.org/?lang=es" target="_blank">Open Contracting </a> <a href="http://standard.open-contracting.org/latest/es/schema/reference/" target="_blank">Ver Referencias</a> </td> 
                                    </tr> 
                                </tbody> 
                            </table>                    
                       
                    <?php } ?>
                    </div>
                </div>
                <div class="modal-footer" style="box-sizing:border-box;">
                  <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cerrar</a>
                </div>
            </div>




            
                <li itemprop="dataset" itemscope itemtype="https://schema.org/Dataset">
                
                <!-- CONJUNTO DE DATOS -->
                    <div class="collapsible-header">
                        <input class="datasetsID" type="hidden" value="<?php  echo $data['datasetsID']; ?>">
                        <spam itemprop="name"><?php  echo $data['title_datasets']; ?></spam>
                        <spam><?php  echo "(".$data['total_resource'].")"; ?></spam>
                        <meta itemprop="description" content="<?php echo $data['description_datasets'] ?>">

                        <?php if (!empty($diccionario)) { ?>
                        <a class="right-align right waves-effect waves-light modal-trigger<?php echo $data['datasetsID']; ?>" href="#modal<?php echo $data['datasetsID']; ?>">
                            <i class="material-icons">filter_drama</i> Diccionario de datos 
                        </a>
                        <?php } ?>


                        <div itemprop="provider" itemscope itemtype="https://schema.org/Organization" style="display: none;">
                            <meta itemprop="name" content="<?php echo $catalogos[0]['title'] ?>">
                            <meta itemprop="url" content="<?php echo $catalogos[0]['url'] ?>">
                            <meta itemprop="email" content="<?php echo $catalogos[0]['email_organization'] ?>">
                        </div>
                        
                        <div itemprop="creator" itemscope itemtype="https://schema.org/Person" style="display: none;">
                            <meta itemprop="name" content="<?php echo $data['author'] ?>">
                            <meta itemprop="email" content="<?php echo $data['email_author'] ?>">
                        </div>
                        
                        <meta itemprop="url" content="<?php echo $data['url_download_page'] ?>" style="display: none;">
                        <meta itemprop="license" style="display:none;" content="<?php echo $data['code_license'] ?>">
                        <meta itemprop="keywords" style="display:none;" content="<?php echo $data['tags'] ?>">
                        <meta itemprop="version" style="display:none;" content="<?php echo $data['version'] ?>">
                    </div>
                
                    <div class="collapsible-body" style="padding:20px">
                        <?php if ($data['total_resource']==0): ?>
                            <?php echo "No hay recursos."; ?>      
                        <?php else: ?>
                            <spam><?php echo $data['description_datasets'] ?></spam>
                            <table id="listdatasets<?php echo $data['datasetsID']; ?>" class="table table-bordered table-hover display compact" cellspacing="0" width="100%">
                                <thead>
                                    <?php $i= 0; ?><!--Contador de Conjunto de Datos -->
                                    <tr>
                                        <th><?php  echo t('#') ?></th>
                                        <th><?php  echo t('Título') ?></th>
                                        <th><?php  echo t('Descripción') ?></th>
                                        <th><?php  echo t('Archivos') ?></th>                
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php foreach ($resource as $reso): ?>
                                        <!-- RECURSOS -->
                                        <?php if ($reso['datasetsID']==$data['datasetsID']): ?>     
                                            <tr>
                                                <td>
                                                    <?php  echo ++$i; ?>
                                                    <input class="resourceID" type="hidden" value="<?php  echo $reso['resourceID']; ?>">
                                                </td>
                                                <td>
                                                    <?php  echo $reso['resource_title']; ?>
                                                </td>
                                                <td>
                                                    <?php  echo $reso['description']; ?>
                                                </td>
                                                <td>
                                                    <?php 
                                                    //$db = Loader::db();
                                                        $q_files = "SELECT ODF.*,OF.description as format";
                                                        $q_files .= " FROM dsOpenDataFile as ODF  ";
                                                        $q_files.= "  LEFT JOIN dsOpenDataResource AS ODR ON ODR.resourceID = ODF.resourceID ";
                                                        $q_files.= "  LEFT JOIN dsOpenDataFormat AS OF ON ODF.formatID = OF.formatID ";
                                                        $q_files .= " WHERE ODF.resourceID = ".$reso['resourceID'];
                                                        $q_files.= " group by ODF.fileID ";

                                                        $files= $db->GetAll($q_files);
                                                        
                                                         foreach ($files as $file): ?>
                                                        <!-- VALIDACIONES -->
                                                            <?php 
                                                            $target='';
                                                            if($file['target'] == 0) {
                                                                $target = '_self';
                                                            }else{
                                                                if($file['target'] == 1) {
                                                                    $target = '_blank';
                                                                } 
                                                            }
                                                            $linkURL='';
                                                            if (!empty($file['externalLink'])) {
                                                                $linkURL = $file['externalLink'];
                                                            } else if (!empty($file['internalLinkCID'])) {
                                                                        $linkToC = Page::getByID($file['internalLinkCID']);
                                                                        $linkURL = (empty($linkToC) || $linkToC->error) ? '' : Loader::helper('navigation')->getLinkToCollection($linkToC);
                                                                    } else if (!empty($file['fID'])) {
                                                                                $linkURL = (trim($file['fID']));
                                                                            } else{
                                                                                $linkURL= 'none';
                                                                            }

                                                             ?>
                                                         <!-- ARCHIVOS -->
                                                            <div itemprop="distribution" itemscope="" itemtype="https://schema.org/DataDownload">
                                                                <div id="<?php echo $file['fileID']; ?>" class="list_files">
                                                                    <meta itemprop="url" content="<?php echo $file['url_resource'] ?>">
                                                                    <meta itemprop="name" content="<?php echo $reso['resource_title']; ?>">
                                                                    <meta itemprop="description" content="<?php echo $reso['description']; ?>">
                                                                    <input class="fileID " type="hidden" value="<?php  echo $file['fileID']; ?>"> <?php
                                                                        if ($file['fID'] != 0) {
                                                                            print '<a href="'.View::url('/download_file', $file['fID'],$cID).'" target="'.$target.'" class="enlace'.$bID.'" style="cursor:pointer !important;">Descargar '.$file['format'].'</a>'; 
                                                                        }else{
                                                                            print '<a href="'.$linkURL.'" target="'.$target.'" class="enlace'.$bID.'" style="cursor:pointer !important;">Descargar '.$file['format'].'</a>';  
                                                                        }
                                                                        echo "<br>";
                                                                    ?>
                                                                    <meta itemprop="encodingFormat" content="<?php echo $file['format'] ?>">
                                                                    <meta itemprop="license" style="display: none;" content="<?php echo $data['code_license'] ?>" />
                                                                </div>
                                                            </div>
                                                        <?php endforeach;?>
                                                </td>
                                            </tr>
                                        <?php endif ?>    
                                    <?php  endforeach; ?>

                                </tbody>
                            </table>
                        <?php endif ?>
                    </div>
                </li>   
            
            <script>
                $(document).ready(function () {
                    $('.modal-trigger'+<?php echo $data['datasetsID']; ?>).leanModal();
                    $('#listdatasets'+<?php echo $data['datasetsID']; ?>).DataTable( {
                        "scrollX": true,
                        "aaSorting": []
                    });
                    $('#diccionario'+<?php echo $data['datasetsID']; ?>).DataTable( {
                        "scrollX": true,
                        "aaSorting": []
                    });
                });
            </script>
       <?php  endforeach; ?>
   </ul>
</div>
<?php  endif ?>