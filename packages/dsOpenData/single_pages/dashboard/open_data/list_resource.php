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


<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Archivos')); ?>

    <?php //SE CARGA EL MENU SUPERIOR PARA EL DASHBOARD
    $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
    include($packagePath.'/single_pages/dashboard/open_data/menu.php'); 
    ?>

<div class="btn_add_resource"></div>
<div class="sub_cabecera">
    <div class="row">
        <div class="col-sm-8 col-xs-12">
            <h3 class="titulo_seccion" style="display:inline-block !important; margin:4px; margin-left:1px;">
                <a href="<?php echo View::url('dashboard/open_data/list_catalog') ?>">
                    <?php echo "Catálogos";?>
                </a>
                <?php echo " / " ?>
                <a href="<?php echo View::url('dashboard/open_data/list_datasets/show/'.$titulo_datasets[0]['opendataID']) ?>">
                    <?php echo $titulo_datasets[0]['title_catalogo'];?>
                </a>
                <?php echo " / "; ?>
                <?php echo $titulo_datasets[0]['title']; ?>
            </h3 >
        </div>
        <div class="col-sm-4 col-xs-12">
            <a style="float:right; margin:3px" href="<?php  echo View::url('dashboard/open_data/list_dictionary/show/'.$titulo_datasets[0]['datasetsID'])?>" class="btn btn-warning edit">
                <i class="fa fa-eye" aria-hidden="true"></i> 
                <?php  echo t('Ver Diccionario de Datos') ?>
            </a>

            <a style="float:right; margin:3px" href="<?php  echo View::url('dashboard/open_data/resource/'.$titulo_datasets[0]['datasetsID'])?>" class="btn btn-danger edit">
                <i class="fa fa-plus" aria-hidden="true"></i> 
                <?php  echo t('Agregar Recurso') ?>
            </a>
        </div>
    </div>
</div>


<?php  if (empty($resource)): ?>
    <div class="margin-top-10"></div>
    <div class="alert alert-info">
    <?php if (is_null($dataset_id)): ?>
        <?php  echo t('Falta el código de Conjunto de Datos') ?>
    <?php else: ?>
        <?php  echo t('No se encontraron Recursos para el Conjunto de Datos con código <b>'.$dataset_id.'</b>. <a href="'.View::url('dashboard/open_data/list_catalog').'">Volver al Listado de Catalogos</a>') ?>
        
    <?php endif ?>
    </div>
<?php  else: ?>
    
    <table id="listresource" class="table table-bordered table-hover display compact" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th><?php  echo t('ID') ?></th>
                <th><?php  echo t('Título') ?></th>
                <th><?php  echo t('Descripción') ?></th>
                <th class="lista_archivos"><?php  echo t('Archivos') ?></th>
                <th class="th_opciones_small"><?php  echo t('Opciones') ?></th>
            </tr>
        </thead>

        <tbody>
        <?php  foreach ($resource as $reso): ?>
            
            <tr class="toRemove<?php echo $reso['resourceID']; ?>">
                <td>
                    <?php  echo $reso['resourceID']; ?>
                    <input class="resourceID" id="resourceID" name="resourceID" type="hidden" value="<?php  echo $reso['resourceID']; ?>">
                </td>
                <td>
                    <?php  echo $reso['resource_title']; ?>
                </td>
                <td><?php  echo $reso['description']; ?>
                </td>
                <td class="lista_archivos">
                <?php 
                $db = Loader::db();
                    $q_files = " SELECT ODF.*,OF.description as format ";
                    $q_files .= " FROM dsOpenDataFile as ODF  ";
                    $q_files .= " LEFT JOIN dsOpenDataResource AS ODR ON ODR.resourceID = ODF.resourceID ";
                    $q_files .= " LEFT JOIN dsOpenDataFormat AS OF ON ODF.formatID = OF.formatID ";
                    $q_files .= " WHERE ODF.resourceID =" . $reso['resourceID'];
                    $q_files.= " group by ODF.fileID";

                    $files= $db->GetAll($q_files);
                    //$files = $dsOpenData2->getFiles();
                     foreach ($files as $file):
                        ?> 
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


                        <div id="<?php echo 'file'.$file['fileID']; ?>" class="list_files">
                            <input class="fileID " id="fileID" type="hidden" value="<?php  echo $file['fileID']; ?>"> <?php
                                //echo "<a target='_blank' href='".$file['externalLink']."'>Descargar ".$file['format']."</a> ";
                                
                                if ($file['fID'] != 0) {
                                    print '<a href="'.View::url('/download_file', $file['fID'],$cID).'" target="'.$target.'" class="enlace'.$bID.'" style="cursor:pointer !important;">Descargar '.$file['format'].'</a>'; 
                                }else{
                                    print '<a href="'.$linkURL.'" target="'.$target.'" class="enlace'.$bID.'" style="cursor:pointer !important;">Descargar '.$file['format'].'</a>';  
                                }
                                ?>
                                <a class="btn btn-danger btn_file_delete" onclick="delete_file(<?php echo $file['fileID']; ?>);">
                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                </a>
                                <a href="<?php echo View::url('dashboard/open_data/files/update/'.$file['fileID']) ?>" class="btn btn-warning edit btn_file_edit">
                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                </a> 
                                
                                <?php echo "<br>";
                        ?></div><?php
                     endforeach;
                    
                 ?>
                    <div class="footer_file_list">  
                        <a href="<?php  echo View::url('dashboard/open_data/files/'.$reso['resourceID']) ?>"
                        class="btn btn-warning edit"><i class="fa fa-plus" aria-hidden="true"></i> <?php  echo t('Agregar Archivo') ?></a> 
                        <div class="total_files">
                            <?php echo "Total: " ?><span class="badge"><?php  echo $reso['total_resource']; ?></span>
                        </div>
                        
                    </div>
                </td>
            
                <td class="td_opciones_small">
                    <a href="<?php  echo View::url('dashboard/open_data/resource/update/'.$reso['resourceID']) ?>"
                       class="btn btn-success edit"><i class="fa fa-pencil" aria-hidden="true"></i> <?php  echo t('Editar') ?></a>
                    <button class="btn btn-danger" onclick="borrar_recurso(<?php echo $reso['resourceID'];?>,<?php echo $reso['total_resource'];?>);">
                        <i class="fa fa-trash" aria-hidden="true"></i> 
                        <?php  echo t('Eliminar el Recurso') ?>
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

            $('#listresource').DataTable( {
                "scrollX": true,
                "aaSorting": []
            });          
        });
            function borrar_recurso(id,total){
            var conf = confirm("<?php echo t("¿Está seguro que desea borrar este Recurso con todos los Archivos?. Archivos en este Recurso:") ?> "+total);
                    if (conf) {
                        $.ajax({
                            type: "POST",
                            url: "<?php  echo $this->url('dashboard/open_data/list_resource/delete'); ?>",
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
            function delete_file(id){
                var conf = confirm("<?php echo t('¿Está seguro que desea borrar este Archivo?.') ?> ");
                if (conf) {
                    alert(id);
                    $.ajax({
                        type: "POST",
                        url: "<?php  echo $this->url('dashboard/open_data/list_resource/delete_file'); ?>",
                        data: {"id": id},
                        success: function (data) {
                            if (data == "OK") {
                                $("#success").fadeIn(1000).delay(2000).fadeOut(1000);
                                $('#file'+id).remove();

                            }
                            else {
                                $("#error").fadeIn(1000).delay(2000).fadeOut(1000);
                            }   
                        }                     
                    });
                }else{
                    return false;
                }
            };
    
    </script>

<?php  endif; ?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper(); ?>
