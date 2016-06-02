<?php defined('C5_EXECUTE') or die("Access Denied.");
$navigationTypeText = ($navigationType == 0) ? 'dots' : 'slide';
$c = Page::getCurrentPage();
?>

<style>
    .lista_publicaciones-<?php echo $bID ?> .item_especifico_publicacion{
        padding: 0px;
    }
    .lista_publicaciones-<?php echo $bID ?> .link_publicacion{
        float: right;
        padding: 5px 12px;
        background-color: #EAEAEA;
    }
</style>


<?php if(count($rows) > 0) { 

    $cant = count($rows);
    $pagina = intval(htmlspecialchars($this->controller->get("pg")));   
    $pgTotal = ceil($cant/$item_por_pagina); //cantidad total de páginas

    if($pagina<$pgTotal) { 
        $iInicial = $pagina*$item_por_pagina;
        $iFinal = min(($iInicial+$item_por_pagina), $cant);
        ?>
        <section class="lista_publicaciones lista_publicaciones-<?php echo $bID; ?> ">
            <?php for($i=$iInicial; $i < $iFinal; $i++) { ?>

                <div class="item_especifico_publicacion">

                    <?php $f = File::getByID($rows[$i]['fID']); ?>

                    <?php if (is_object($f)){ ?>
                        <div class="portada_imagen">
                            <?php
                            $img = Core::make('html/image', array($f));
                            $tag = $img->getTag();
                            $tag->addClass('activator img-responsive materialboxed');
                            print $tag;
                            ?>
                        </div>
                    <?php }else{ ?>
                        <style>
                            .contenido_detalle{
                                padding-left:10px !important;
                            }
                        </style>
                    <?php } ?>



                    <div class="card-content contenido_detalle">                  
                        <?php if ($rows[$i]['title']){ ?>
                            <span class="card-title activator grey-text text-darken-4">
                                <?php if($rows[$i]['linkURL']) { ?>
                                    <a href="<?php echo $rows[$i]['linkURL'] ?>" class="mega-link-overlay" target="<?php if($rows[$i]['target'] == 0) { echo '_self'; }else{ echo '_blank'; } ?>">
                                <?php } ?>
                                    <?php echo $rows[$i]['title']; ?>
                                <?php if($rows[$i]['linkURL']) { ?>
                                    </a>
                                <?php } ?>
                            </span>
                        <?php } ?>
                        
                        <?php if ($rows[$i]['description']){ ?>
                            <p><?php echo $rows[$i]['description']; ?></p>
                        <?php } ?>
                        
                        <?php if($rows[$i]['linkURL']) { ?>
                        <div class="link_publicacion">
                            <a href="<?php echo $rows[$i]['linkURL'] ?>" class="mega-link-overlay" target="<?php if($rows[$i]['target'] == 0) { echo '_self'; }else{ echo '_blank'; } ?>">
                                <?php if($rows[$i]['btnTexto']) { ?>
                                    <?php echo $rows[$i]['btnTexto']; ?>
                                <?php }else{ ?>
                                    Abrir
                                <?php } ?>
                            </a>
                        </div>
                        <div style="clear: both;"></div>
                        <?php } ?>
                    </div>
                    <div class="oculto"></div>

                </div>
            <?php } ?>
        </section>
    <?php } ?>

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
        <div style="clear: both"></div>
    <?php } ?>

<?php } else { ?>
<div class="ccm-image-slider-placeholder">
    <p><?php echo t('No se encuentra publicaciones'); ?></p>
</div>
<?php } ?>
