<?php  defined('C5_EXECUTE') or die('Access denied.'); ?>
<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneHeaderWrapper(t('Agregar Formato de archivos')); ?>
    
    <?php //SE CARGA EL MENU SUPERIOR PARA EL DASHBOARD
        $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
        include($packagePath.'/single_pages/dashboard/open_data/menu.php'); 
    ?>

<style type="text/css" media="screen">
    div#ccm-dashboard-content>header{
        background-color:#48b6bf !important;
        box-shadow: 0px 10px 10px #ECECEC;
    }
    div#ccm-dashboard-content>header h1{
        color:#FFF !important;   
    }
    div#ccm-dashboard-content .btn-link{
        color:#FFF !important;
    }
</style>

    <div class="alert alert-success" id="success" style="display: none">
        <?php  echo t('Tipo de Archivo ha sido eliminado') ?>
    </div>
    <div class="alert alert-danger" id="error" style="display: none">
        <?php  echo t('Erro al Eliminar, Inténtalo de nuevo.') ?>
    </div>

    <div class="row">
        <div class="col-sm-6 col-xs-12" style="margin-top:20px;">
        <table id="typelist" class="table table-bordered table-hover display compact" cellspacing="0" width="100%">
            <thead>
            <tr>
                <th><?php  echo t('#') ?></th>
                <th><?php  echo t('Formato de Archivo') ?></th>
                <th><?php  echo t('Contador de Uso') ?></th>
                <th><?php  echo t('Options') ?></th>
            </tr>
            </thead>
            <tbody>
            <?php  foreach ($formatos as $t): ?>
                <tr>
                    <td><input class="formatID" if="formatID" type="hidden" value="<?php  echo $t['formatID']; ?>">
                        <span class="type"><?php  echo $t['formatID']; ?></span>
                    </td>
                    <td><input type="hidden"  value="<?php  echo $t['description']; ?>">
                        <span class="descri"><?php  echo $t['description']; ?></span>
                        
                    </td>
                    <td>
                        <?php  if ($t['total_file'] > 0): ?>
                            <span class="badge badge-important"><?php  echo $t['total_file']; ?></span>
                        <?php  else: ?>
                            <span class="badge badge-success">0</span>
                        <?php  endif; ?>
                    </td>
                    <td>
                    <?php if ($t['formatID']>20) {?>
                    <!-- <button class="btn btn-warning edit"> <i class="fa fa-pencil" aria-hidden="true"></i></button> -->
                        <button class="btn btn-danger delete"><i class="fa fa-trash" aria-hidden="true"></i> </button>
                    <?php } ?>
                    </td>
                </tr>
            <?php  endforeach; ?>

            </tbody>
        </table>
    </div>
    <div class="col-sm-6 col-xs-12">
        
        <div class="panel panel-primary" style="margin-top:20px;">
            <div class="panel-heading">Tipo de Dato</div>
            <div class="panel-body" style="padding:30px !important;">
                <div class="alert alert-success" id="success-edit" style="display: none">
                    <?php  echo t('Tipo de Archivo ah sido Editado') ?>
                </div>
                <div class="alert alert-danger" id="error-edit" style="display: none">
                    <?php  echo t('Error al Editar, Inténtalo de nuevo.') ?>
                </div>


                <form class="form-horizontal" method="post" id="ccm-multilingual-page-report-form">
                    <div class="input-group">
                        <input class="formatID" type="hidden" id="formatID" value="<?php  echo $t['formatID']; ?>">
                        <input maxlength="255" type="text" class="form-control" placeholder="Nombre del Tipo de dato" name="description" id="description" value="<?php  echo $description; ?>"> 
                        <span class="input-group-btn">
                            <button class="btn btn-success" id="submit-add" type="submit"  ><i class='fa fa-plus' aria-hidden='true'></i> Agregar Tipo de Archivo</button>
                            <button class="btn btn-success" style="display: none;" id="submit-new" ><i class="fa fa-plus" aria-hidden="true"></i><?php  echo t(' Agregar nuevo') ?></button>
                            <button class="btn btn-warning" style="display: none;" id="submit-edit" ><i class="fa fa-pencil" aria-hidden="true"></i><?php  echo t(' Editar') ?></button>
                        </span>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {
    var editMode = false;
    showButtons();

    $('#typelist').DataTable( {
                "scrollX": true,
                "aaSorting": []
            });

    $("tr").on('click', 'button.edit', function (){
        editMode = true;
        showButtons();
        var elem = $(this);
        var id = elem.closest('tr').children('td').children('input.formatID').val();
        var description = elem.closest('tr').find('td span.descri').html().trim();
        


        $('#formatID').val(id);
        $('#description').val(descripcion);
        
    });

    $("#submit-new").on('click',function(){
        editMode = false;
        showButtons();
    });

    $("#submit-edit").on('click',function(e){
        e.preventDefault();
        var id = $('#formatID').val();
        var description = $('#description').val();
        
        $.ajax({
            type: "POST",
            url: "<?php  echo $this->url('dashboard/open_data/types/update'); ?>",
            data: {"id": id, "description" : description},
            success: function (data) {
                if (data == "OK") {
                    $("#success-edit").fadeIn(1000).delay(2000).fadeOut(1000);
                    var row = $("#typelist").find("input[value="+id+"]").closest('tr');
                    row.find('td input.description').val(description);
                    
                    editMode = false;
                    $('#formatID').val("");
                    $('#description').val("");
                }
                else {
                    $("#error-edit").fadeIn(1000).delay(2000).fadeOut(1000);
                }

            }
        });
    });


    function showButtons(){
        if(editMode)
        {
            $("#submit-edit").show();
            $("#submit-new").show();
            $("#submit-add").hide();
        }
        else
        {
            $("#submit-edit").hide();
            $("#submit-new").hide();
            $("#submit-add").show();
        }
    };

    $("tr").on('click', 'button.delete', function () {
        var elem = $(this);
        var conf = confirm('<?php  echo t("Esta seguro que desea borrar este tipo de archivo?."); ?>');
        if (conf) {
            var id = elem.closest('tr').children('td').children('input.formatID').val();
            elem.closest('tr').addClass('toRemove');

            $.ajax({
                type: "POST",
                url: "<?php  echo $this->url('dashboard/open_data/types/delete'); ?>",
                data: {"id": id},
                success: function (data) {
                    if (data == "OK") {
                        $("#success").fadeIn(1000).delay(2000).fadeOut(1000);
                        $('#formatID').val("");
                        $('#description').val("");
                        $("#typelist").find("input[value="+id+"]").closest('tr').remove();
                    }
                    else {
                        $("#error").fadeIn(1000).delay(2000).fadeOut(1000);
                    }

                }
            });
        }
        else
            return false;
    });

});
</script>
 <?php //SE CARGA FOOTER
    $packagePath = Package::getByID($this->c->pkgID)->getPackagePath();
    include($packagePath.'/single_pages/dashboard/open_data/footer.php'); 
    ?>

<?php  echo Loader::helper('concrete/dashboard')->getDashboardPaneFooterWrapper();
