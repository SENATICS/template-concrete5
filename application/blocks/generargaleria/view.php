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
//Si está en modo de edición
if ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item" style="width: <?php echo $width; ?>; height: <?php echo $height; ?>">
        <div style="padding: 40px 0px 40px 0px"><?php echo t('Clic izquierdo para editar la Galeria')?></div>
    </div>
<?php  } 
	//si se activa la vista pública
	else {
			if($pagina<$pgTotal) {
				$iInicial = $pagina*$cantpg;
				$iFinal = min(($iInicial+$cantpg), $cant);
				
				if($cant > 0) { 
					for($i=$iInicial; $i < $iFinal; $i++) { 
					
					$f = File::getByID($rows[$i]['fID']);
					
                 if(is_object($f)) { ?>
					<a href="<?php echo $f->getURL();?>" class="shadowbox">
                <?php  ?>
				<div class="columna-uno-tres" style="background-image:url(<?php echo $f->getURL(); ?>); height:200px; background-size:cover;">
                <div class="titulo_galeria">
                                <div class="contenido_titulo"><?php echo $rows[$i]['titulo'];?></div>
								<div class="ver"><img src="/application/themes/template/img/ver.png" width="50" /></div>
                        </div>
				</div></a>
            <?php }
			}
			?>
					
			
			<?php
				$cantImpresa = $iFinal - $iInicial;
				$cantFilas = ceil($cantImpresa/3);
				$cantUltFila = $cantImpresa - 3*($cantFilas - 1);
				$cantFaltante = 3 - $cantUltFila;
				
				for($i=0; $i < $cantFaltante; $i++) {
			?>
                        <div class="columna-uno-tres" style="height:200px; "></div>
			<?php } ?>

			<?php if($pagina>0) {
				?>
			<a href="?pg=<?php echo $pagina-1 ?>"><div class="navegacion_anterior">
				Anterior
			</div></a>
			<?php } ?>
			
			<?php if($pagina < $pgTotal-1) {
			?>
			<a href="?pg=<?php echo $pagina+1?>"><div class="navegacion_siguiente">
				Siguiente
			</div></a>
			<?php } 
			} 
			else { ?>
        <div class="ccm-galeria-placeholder">
            <p><?php echo t('Sin imágenes para mostrar.'); ?></p>
        </div>
        <?php }} ?>
        	
            
            <?php if($cant == 0) { ?>
				<img src="/application/blocks/generargaleria/images/galeria-sin-fotos.jpg" width="100%" style="border-radius:5px;" />
			<?php }else{ ?>
            	<p style="font-size: 15px;text-align: center;width: 100%;float: left;">Página <b><?php echo $pagina+1 ?></b> de <b><?php echo $pgTotal ?></b></p><br />
            <?php } ?>
            
            <?php if($pgTotal > 1) {?>
				<p style="float: left;text-align: center; font-size: 15px;">Ir a página: 
				<?php for($i=0; $i < $pgTotal; $i++) {
                    if( $i === $pagina ) {
                    ?>
                    <strong>
                    <?php } ?>
                    <a href="?pg=<?php echo $i ?>">
                        <?php echo $i+1 ?>
                    </a>
                    <?php if( $i === $pagina ) { ?>
                        </strong>
                <?php }} ?>
                </p>
            <?php }?>
<?php } ?>
			
