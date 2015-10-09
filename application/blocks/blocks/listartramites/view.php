<style>
    #materialbox-overlay{
        background: rgba(0,0,0,.5);
    }
    @media only screen and (max-width : 600px) {
        .cerrar_izquierda{
            text-align:right;
            float:none;
        }
    }
    .pagination .active a{
        color:#FFF !important;   
    }
    .tramites .collapsible-header{
        height:auto !important;   
    }
    .tramites .collapsible-header{
        font-size:14px !important;
        font-weight:500 !important;
    }
    .tramites .descripcion_ubicacion p{
        padding-left:46px;   
        font-size:12px !important;
        line-height:1rem !important;
        margin-top:0px !important;
    }
    .servicios{
		max-width: 1000px;
		width: 100%;
		margin: 0 auto;
		clear: right;
	}
	.servicios table{
		width: 100% !important;
	}
	.servicios .lado_derecho{
		width: 100%;
		max-width: 450px;
		display: inline-block;
		margin-bottom: 20px;
	}
	.servicios .lado_izquierdo{
		width: 100%;
		max-width: 450px;
		float: right;
		box-sizing: border-box;
	}

	.fila {
		width: 100%;
		clear: both;
		border-top: 1px solid #fafafa;
	}
	.fila .titulo{
		width: 210px; 
		font-size: 15px;
		padding: 5px;
		box-sizing:border-box;
		float: left;
	}
	.fila .contenido{
		padding-left: 214px;
		padding-top: 7px;
		padding-bottom: 7px;
	}
    .fila .contenido p{
        padding:0px !important;
        display:inline-block;
    }
	.fila .descripcion_larga{
		min-height: 35px;
	}
	.fila .titulo2{
		width: 100%; 
		font-size: 17px;
		padding: 5px 5px 5px 10px;
		box-sizing:border-box;

		background: rgba(237,237,237,1);
		background: -moz-linear-gradient(left, rgba(237,237,237,1) 0%, rgba(255,255,255,0) 100%);
		background: -webkit-gradient(left top, right top, color-stop(0%, rgba(237,237,237,1)), color-stop(100%, rgba(255,255,255,0)));
		background: -webkit-linear-gradient(left, rgba(237,237,237,1) 0%, rgba(255,255,255,0) 100%);
		background: -o-linear-gradient(left, rgba(237,237,237,1) 0%, rgba(255,255,255,0) 100%);
		background: -ms-linear-gradient(left, rgba(237,237,237,1) 0%, rgba(255,255,255,0) 100%);
		background: linear-gradient(to right, rgba(237,237,237,1) 0%, rgba(255,255,255,0) 100%);
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ededed', endColorstr='#ffffff', GradientType=1 );
	}
	.fila .contenido2{
		padding-left: 100%;
		padding: 0px 0 10px 14px;
	}

	@media only screen and (max-width: 950px) {
		.servicios .lado_derecho{
			max-width: 100% !important;
			display: block !important;
		}
		.servicios .lado_izquierdo{
			max-width: 100% !important;
			float: none !important;
		}
	}

	@media only screen and (max-width: 500px) {
		.fila .titulo{
			width: 100% !important;
			float: none !important;
		}
		.fila .contenido{
			padding-left: 10px !important;
			padding-bottom: 7px;
		}

		.servicios .lado_izquierdo{
			padding: 0px !important;
			-webkit-box-shadow: -3px 5px 37px 0px rgba(0,0,0,0.0);
			-moz-box-shadow: -3px 5px 37px 0px rgba(0,0,0,0.0);
			box-shadow: -3px 5px 37px 0px rgba(0,0,0,0.0);
		}
	}

	.icono{
		width: 20px;
		height: 20px;
		float: left;
		margin-right: 5px;
		background-repeat: no-repeat;
		background-size: 20px;
	}
	.ico_descripcion{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Descripcion.png/fba3f6a4-86e4-49bb-955d-5938f28b3261?t=1435154128000);
	}
	.ico_tipo{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Tipo.png/c3cec582-1232-48d2-8082-9c123c18a9b1?t=1435154130000);
	}
	.ico_ofrecido_por{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Ofrecido-por.png/d663e9d4-290a-456b-bea7-3a690b209400?t=1435154129000);
	}
	.ico_entrega{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Entrega.png/e34f4895-a539-43ff-8259-580f93aa597c?t=1435154129000);
	}
	.ico_direccion{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Direcci%C3%B3n.png/c47b1cd2-3db8-4b6e-8190-cf800699cd83?t=1435154129000);
	}
	.ico_email{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Email.png/a086cfe2-04bb-434b-81ee-bb82b60c0c95?t=1435154129000);
	}
	.ico_telefono{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Telefono.png/244dfd54-e578-4183-9998-0ff5b9fbfceb?t=1435154130000);
	}
	.ico_canales{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Canalaes-Habilitados.png/5cfd51a3-5a3a-4c2a-94f9-afd6fa8879fe?t=1435154127000);
	}
	.ico_cobertura{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Cobertura.png/241ce0e6-0836-4f68-aaa8-e87861b67ec5?t=1435154128000);
	}
	.ico_poblacion{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Poblacion.png/6300c1cc-6512-48f5-bd6b-b9f4b9f772a1?t=1435154129000);
	}

	.ico_documentos{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Documentos.png/44ddb863-5712-4caf-bb48-7269fbd9f635?t=1435154129000);
	}
	.ico_tiempo{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Tiempo.png/f6ad9037-2cd8-4027-bf43-ba28f80c93e1?t=1435154130000);
	}
	.ico_precio{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Precio.png/fec4c029-bdca-4e7e-9a92-7bfd2099e025?t=1435154130000);
	}
	.ico_metoso_pago{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Metodo-de-Pago.png/9112e668-f8fa-4380-bc02-d96b21c190a9?t=1435154129000);
	}
	.ico_dia_atencion{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Dia-de-Atencion.png/9681f32a-8c58-49ce-9faf-36c68815c3e9?t=1435154128000);
	}
	.ico_correo{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Correo.png/eb538dea-063d-4a03-945f-c163c3762373?t=1435154128000);
	}
	.ico_formulario{
		background-image: url(http://www.paraguay.gov.py/documents/10179/1304165/Formulario.png/bb5f9dcb-5063-4ac8-b337-b960af6f0953?t=1435154129000);
	}

	/* COLORES DE FONDO*/
	.color_a{border-left: 4px solid #F44336 !important;}
	.color_b{border-left: 4px solid #E91E63 !important;}
	.color_C{border-left: 4px solid #9C27B0 !important;}
	.color_d{border-left: 4px solid #673AB7 !important;}
	.color_e{border-left: 4px solid #3F51B5 !important;}
	.color_f{border-left: 4px solid #2196F3 !important;}
	.color_g{border-left: 4px solid #03A9F4 !important;}
	.color_h{border-left: 4px solid #00BCD4 !important;}
	.color_i{border-left: 4px solid #009688 !important;}
	.color_j{border-left: 4px solid #4CAF50 !important;}
	.color_k{border-left: 4px solid #8BC34A !important;}
	.color_l{border-left: 4px solid #CDDC39 !important;}
	.color_m{border-left: 4px solid #FFEB3B !important;}
	.color_n{border-left: 4px solid #FFC107 !important;}
	.color_o{border-left: 4px solid #FF9800 !important;}
	.color_p{border-left: 4px solid #FF5722 !important;}
	.color_q{border-left: 4px solid #795548 !important;}
	.fondo_verde_agua{border-left: 4px solid #009688 !important;}
	.fondo_verde{border-left: 4px solid #4CAF50 !important;}
	.fondo_verde_claro{border-left: 4px solid #8BC34A !important;}
	.fondo_verde_limon{border-left: 4px solid #CDDC39 !important;}

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
    <div class="tramites">
        <ul class="collapsible popout" data-collapsible="accordion" style="padding-left: 0px !important"><?php
				$iInicial = $pagina*$cantpg;
				$iFinal = min(($iInicial+$cantpg), $cant);
				
				if($cant > 0) { 
					for($i=$iInicial; $i < $iFinal; $i++) { 
					
					$f = File::getByID($rows[$i]['fID']);
					
                ?>
                    <?php  ?>
                    <li style="list-style-type:none !important">
                        <div class="collapsible-header">
                            <a href="#!" class="secondary-content right"><i class="material-icons">info_outline</i></a>
                            <i class="material-icons">label_outline</i><b><?php echo trim($rows[$i]['nombre']) == '' ? '-':$rows[$i]['nombre'];?></b>
                            <span class="descripcion_ubicacion"><?php echo trim($rows[$i]['descripcion']) == '' ? '':html_entity_decode($rows[$i]['descripcion']);?></span>
                        </div>
                        <div class="collapsible-body" style="padding:20px">
                            <div class="servicios">
                                <div class="lado_derecho">
                                    <div class="fila color_b">
                                        <div class="titulo"><div class="icono ico_tipo"></div><b>Tipo</b></div>
                                        <div class="contenido"> <?php echo trim($rows[$i]['tipo_servicio']) == '' ? '-' : $rows[$i]['tipo_servicio'];?></div>
                                    </div>

                                    <div class="fila color_C">
                                        <div class="titulo"><div class="icono ico_ofrecido_por"></div><b>Ofrecido por</b></div>
                                        <div class="contenido"> <?php echo trim($rows[$i]['institucion']) == ''?'-':$rows[$i]['institucion'];?></div>	
                                    </div>

                                    <div class="fila color_d">
                                        <div class="titulo"><div class="icono ico_entrega"></div><b>Etiquetas</b></div>
                                        <div class="contenido"><?php echo trim($rows[$i]['etiqueta']) == '' ? '-':$rows[$i]['etiqueta'];?></div>	
                                    </div>

                                    <div class="fila color_e">
                                        <div class="titulo"><div class="icono ico_direccion"></div><b>Dirección</b></div>
                                        <div class="contenido"><?php echo trim($rows[$i]['direccion']) == '' ? '-':$rows[$i]['direccion'];?></div>	
                                    </div>

                                    <div class="fila color_f">
                                        <div class="titulo"><div class="icono ico_email"></div><b>Correo Electrónico</b></div>
                                        <div class="contenido"><?php echo trim($rows[$i]['correo']) == '' ? '-':$rows[$i]['correo'];?></div>	
                                    </div>

                                    <div class="fila color_g">
                                        <div class="titulo"><div class="icono ico_telefono"></div><b>Teléfono</b></div>
                                        <div class="contenido"><?php echo trim($rows[$i]['telefono']) == '' ? '-':$rows[$i]['telefono'];?></div>	
                                    </div>

                                    <div class="fila color_h">
                                        <div class="titulo"><div class="icono ico_canales"></div><b>Canales Habilitados</b></div>
                                        <div class="contenido"><?php echo trim($rows[$i]['canal']) == '' ? '-':html_entity_decode($rows[$i]['canal']);?></div>	
                                    </div>

                                    <div class="fila color_i">
                                        <div class="titulo"><div class="icono ico_cobertura"></div><b>Cobertura</b></div>
                                        <div class="contenido"><?php echo trim($rows[$i]['area_servicio']) == '' ? '-':$rows[$i]['area_servicio'];?></div>	
                                    </div>

                                    <div class="fila color_j">
                                        <div class="titulo"><div class="icono ico_poblacion"></div><b>Población objetivo</b></div>
                                        <div class="contenido"><?php echo trim($rows[$i]['audiencia'])== '' ? '-':$rows[$i]['audiencia'];?></div>	
                                    </div>

                                </div>

                                <div class="lado_izquierdo hoverable">
                                    
                                  <div class="card" style="margin:0 !important;">
                                    
                                    <?php if(is_object($f)) { ?>
                                    <div class="card-image">
                                        <img src="<?php echo $f->getURL(); ?>" style="width:100%;">
                                    </div>    
                                    <?php } ?>
                                    <div class="card-content" style="padding-top:0px !important">
                                        <span class="card-title activator grey-text text-darken-4">Trámite para acceder al servicio</span>
                                        <div class="fila color_k">
                                            <div class="titulo2"><div class="icono ico_documentos"></div><b>Documentación que debes presentar</b></div>
                                            <div class="contenido2"><?php echo trim($rows[$i]['tramite'])== '' ? '-': html_entity_decode($rows[$i]['tramite']);?></div>	
                                        </div>	
                                        <div class="fila color_l">
                                            <div class="titulo"><div class="icono ico_tiempo"></div><b>Tiempo de obtención</b></div>
                                            <div class="contenido"> <?php echo trim($rows[$i]['tiempo_estimado']) == '' ? '-': $rows[$i]['tiempo_estimado'];?></div>	
                                        </div>	
                                        <div class="fila color_m">
                                            <div class="titulo"><div class="icono ico_precio"></div><b>Precio</b></div>
                                            <div class="contenido"><?php echo trim($rows[$i]['precio']) == '' ? '-':$rows[$i]['precio'];?></div>	
                                        </div>
                                        <div class="fila color_n">
                                            <div class="titulo"><div class="icono ico_metoso_pago"></div><b>Métodos de Pago</b></div>
                                            <div class="contenido"> <?php echo trim($rows[$i]['forma_pago']) == '' ? '-':$rows[$i]['forma_pago'];?></div>	
                                        </div>	
                                        <div class="fila color_o">
                                            <div class="titulo"><div class="icono ico_dia_atencion"></div><b>Días de atención</b></div>
                                            <div class="contenido"><?php echo trim($rows[$i]['atencion']) == '' ? '-':$rows[$i]['atencion'];?></div>	
                                        </div>	
                                        <div class="fila color_p">
                                            <div class="titulo"><div class="icono ico_correo"></div><b>Correo del trámite</b></div>
                                            <div class="contenido"><?php echo trim($rows[$i]['correo_servicio']) == '' ? '-':$rows[$i]['correo_servicio'];?></div>	
                                        </div>	
                                        <div class="fila color_q">
                                            <div class="titulo"><div class="icono ico_formulario"></div><b>Formularios necesarios</b></div>
                                            <div class="contenido"><?php echo trim($rows[$i]['formulario']) == '' ? '-':html_entity_decode($rows[$i]['formulario']);?></div>	
                                        </div>
                                    </div>
                                  </div>
                                </div>
                                <div style="clear:both"></div>
                            
                            
                            
                            
                        </div>
                    </li>
                <?php
                    }
                ?>
					
</ul>
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

</div>
<div style="clear:left"></div>

        <?php } ?>
        <?php }else{ ?>
        <div class="ccm-galeria-placeholder">
            <img src="<?php echo $view->getThemePath(); ?>/img/galeria-sin-fotos.jpg" width="100%" >
        </div>
<?php } ?>
