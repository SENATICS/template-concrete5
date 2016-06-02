<?php  defined('C5_EXECUTE') or die("Access Denied.");?>

<style type="text/css" media="screen">
	div.dataTables_wrapper {
        width: 100%;
        margin: 0 auto;
    }
    .categoria{ 
        width: 400px !important;
        min-width: 200px !important;
    }
</style>
<script src="<?php echo BASE_URL?>/application/blocks/convenios/jquery.dataTables.min.js" ></script>
<link rel="stylesheet" href="<?php echo BASE_URL?>/application/blocks/convenios/jquery.dataTables.min.css">


<script>
	$(document).ready(function() {
        $('#convenios').DataTable( {
            "scrollX": true,
            "aaSorting": []
        } );
    } );
</script>

<table id="convenios" class="display compact " width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>Número</th>
                <th>Año</th>
                <th>Título</th>
                <th class="Categoria">Descripción</th>
                <th>Institución</th>
                <th>Fecha</th>
                <th style="text-align:center; width:30px !important ">Enlace</th>
            </tr>
        </thead>
        <tbody>
        
        <?php
            foreach($items as $item) {
                ?>
                <tr>
                    <td><?php echo $item['numero']; ?></td>
                    <td><?php echo $item['anho']; ?></td>
                    <td><?php echo $item['titulo']; ?></td>
                    <td><?php echo $item['descripcion']; ?></td>
                    <td><?php echo $item['institucion']; ?></td>
                    <td><?php echo $item['fecha']; ?></td>
                    <td style="text-align:center;"><a href="<?php echo $item['enlace']; ?>" target="_blank"><i class="material-icons" >get_app</i></a></td>
                </tr>
            <?php                 
            }
        ?>
        </tbody>
    </table>
