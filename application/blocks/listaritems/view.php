<style>
#materialbox-overlay{
    background: rgba(0,0,0,.5);
}
    .galeria .card-image{
        height:200px;   
    }
    .cerrar_izquierda{
        float:right;
    }
    @media only screen and (max-width : 600px) {
        .cerrar_izquierda{
            text-align:right;
            float:none;
        }
    }
    .galeria #capa_item:hover{
        opacity:.8;
    }
</style>
<?php 
/**
 * view.php define como se ve el bloque al usuario. La vista del mismo.
 */
defined('C5_EXECUTE') or die("Access Denied.");
$navigationTypeText = ($navigationType == 0) ? 'arrows' : 'pages';
$c = Page::getCurrentPage();

$cant = count($rows);
$pagina = intval(htmlspecialchars($this->controller->get("pg")));	
//$cantpg se refiere a la cantidad de items por página
$pgTotal = ceil($cant/$cantpg); //cantidad total de páginas

    if($pagina<$pgTotal) {
        ?>
        
        <div class="row galeria" id="galeria"><?php
				$iInicial = $pagina*$cantpg;
				$iFinal = min(($iInicial+$cantpg), $cant);
				
				if($cant > 0) { 
					for($i=$iInicial; $i < $iFinal; $i++) { 
					
					$f = File::getByID($rows[$i]['fID']);
					
                 if(is_object($f)) { ?>
                <?php  ?>
				<div class="col l4 m6 s12">
                    <div class="card <?php echo $cantItemsPag ?>">
                        <div id="capa_item" class="card-image waves-effect waves-block waves-light" style="background:url(<?php echo $view->getThemePath(); ?>/img/ver.png) no-repeat scroll center center / 50px 50px, transparent url(<?php echo $f->getURL(); ?>) no-repeat center center; background-size:cover" onclick="addData('<?php echo $f->getURL(); ?>','<?php echo $rows[$i]['nombre'];?>',$('<?php echo $rows[$i]['descripcion'];?>').html());">
                        </div>
                        <div class="card-content">
                          <span class="card-title grey-text <?php if(html_entity_decode($rows[$i]['nombre']) || html_entity_decode($rows[$i]['descripcion'])) { ?>activator<?php } ?> text-darken-4 right waves-effect waves-block"><?php if(html_entity_decode($rows[$i]['nombre']) || html_entity_decode($rows[$i]['descripcion'])) { ?><i class="material-icons right">more_vert</i><?php } ?></span>
                          
                            <?php if(html_entity_decode($rows[$i]['nombre'])) { ?>
                                <p><a onclick="addData('<?php echo $f->getURL(); ?>','<?php echo $rows[$i]['nombre'];?>',$('<?php echo $rows[$i]['descripcion'];?>').html());" style="cursor:pointer"><?php echo html_entity_decode($rows[$i]['nombre']);?></a></p>
                            <?php }else{ ?>
                                <p style="color:#FFF">.</p>
                            <?php } ?>
                            
                        </div>
                        <div class="card-reveal">
                          <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i><?php echo html_entity_decode($rows[$i]['nombre']);?></span>
                          <p><?php echo html_entity_decode($rows[$i]['descripcion']);?></p>
                        </div>
                    </div>
                </div>
            <?php }
			}
			?>
					
</div>
<?php if($pgTotal>1) {?>
<ul class="pagination" id="paginacion" style="list-style-type:none !important; padding-left:0 !important">
			<?php if($pagina>0) {?>
                <li class="waves-effect" style="list-style-type:none !important"><a href="?pg=<?php echo $pagina-1 ?>"><i class="material-icons">chevron_left</i></a></li>
            <?php }else{ ?>
                <li class="disabled" style="list-style-type:none !important"><a><i class="material-icons">chevron_left</i></a></li>
            <?php } ?>
    
            <?php for($i=0; $i < $pgTotal; $i++) {
                if( $i === $pagina ) {?>
                    <li class="active" style="background:#154354; list-style-type:none !important">
                <?php }else{ ?>
                    <li class="waves-effect" style="list-style-type:none !important">
                <?php } ?>
                <a href="?pg=<?php echo $i ?>">
                    <?php echo $i+1 ?>
                </a>
                <?php if( $i === $pagina ) { ?>
                    </li>
            <?php }} ?>
			
			<?php if($pagina < $pgTotal-1) {?>
			     <li class="waves-effect" style="list-style-type:none !important"><a href="?pg=<?php echo $pagina+1?>"><i class="material-icons">chevron_right</i></a></li>
            <?php }else{ ?>
                <li class="disabled" style="list-style-type:none !important"><a><i class="material-icons">chevron_right</i></a></li>
            <?php } ?>
    
 </ul> 
<?php } ?>
    
   <!--
            <?php if($cant == 0) { ?>
				<img src="/application/blocks/generargaleria/images/galeria-sin-fotos.jpg" width="100%" style="border-radius:5px;" />
			<?php }else{ ?>
            	<p style="font-size: 15px;text-align: center;width: 100%;float: left;">Página <b><?php echo $pagina+1 ?></b> de <b><?php echo $pgTotal ?></b></p><br />
            <?php } ?>
   -->         


<div class="detalle_item" id="capa_detalle" style="display: none; margin-bottom:20px">
    <a onclick="cerrar();" style="color:#000"><i class="material-icons cerrar_izquierda waves-effect waves-block" style="padding:10px">close</i></a>	
    
    <div class="card">
        <div class="card-image waves-effect waves-block waves-light">
          <img id="imagen" width="100%"/>
        </div>
        <div class="card-content">
          <span class="card-title grey-text text-darken-4" id="nombre"></span>
          <p id="descri"></p>
        </div>            

    </div>
    
</div>

<script>
	function cerrar(){
		$("#capa_detalle").hide();
        $("#paginacion").fadeIn();
        $("#galeria").fadeIn();
        $("#capa_item").show();
	}
   function addData(src,nomb,descri){
        $("#capa_item").hide();
        $("#galeria").hide();
        $("#paginacion").hide();
		$("#capa_detalle").fadeIn("slow");
		$('#imagen').attr('src',src);
		$("#nombre").html(nomb);
        $("#descri").html(descri);
    }
</script>




        <div style="clear:left"></div>
        <?php } ?>
        <?php }else{ ?>
        <div class="ccm-galeria-placeholder">
            <img src="<?php echo $view->getThemePath(); ?>/img/galeria-sin-fotos.jpg" width="100%" >
        </div>
<?php } ?>
