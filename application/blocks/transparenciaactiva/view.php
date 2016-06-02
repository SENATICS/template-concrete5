<style>
#base_seccion_item{
	padding:10px;
    box-sizing:border-box;
	border: 2px solid #eee;
	margin-bottom:20px;
	opacity:0.85;
	transition:ease-in;
	transition-duration: 0.4s;
	transition: opacity 1s, box-shadow .5s, transform .5s, background .5s;
	-webkit-transition: opacity .5s, -webkit-box-shadow .5s, -webkit-transform .5s, background .5s, color .5s;
	background-image: url(data:image/png;base64,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);	
	-webkit-box-shadow: 0px 10px 5px -5px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 10px 5px -5px rgba(0,0,0,0.24);
box-shadow: 0px 10px 5px -5px rgba(0,0,0,0.24);
}
#base_seccion_item:hover{
	opacity:1;	
}
#base_seccion_item h2{
	font-size:20px;
	color:#333;	
    margin:0px !important;
}
#base_seccion_item hr{
	color: #ddd !important;
	background-color: #eee !important;
	height: 1px !important;
	border:none !important;	
	border-bottom:1px solid #eee !important;
}
#base_seccion_item .detalles_del_item{
	display:inline-block;
	background:rgba(234,234,234,.7);
	border-radius:5px 5px 0 0;
	padding:4px;;
	border:1px solid #dedede;
	border-bottom:3px solid #dedede;
	color:#444;
	font-size:10px;
	margin-bottom:4px;
}
@media only screen and (min-width: 500px) {
	#base_seccion_item .botom_link_item{
		display:inline-block;
		background:#eaeaea;
		margin-bottom:5px;
		border-radius:5px;
		padding:5px 10px;;
		border:1px solid #ccc;
		border-bottom:4px solid #aaa;
		margin-right:10px;
		color:#000;
		text-align:center;
		font-size:14px;
		transition:all .3s ease;
	}
}
@media only screen and (max-width: 499px) {
	#base_seccion_item .botom_link_item{
		display:block;
		background:#eaeaea;
		margin-bottom:5px;
		margin-right:5px;
		border-radius:5px;
		padding:5px 10px;;
		border:1px solid #ccc;
		border-bottom:4px solid #aaa;
		margin-right:10px;
		color:#000;
		text-align:center;
		font-size:14px;
		transition:all .3s ease;
	}
}
#base_seccion_item .botom_link_item:hover{
	border-bottom:4px solid #555;
	color:#8C0505;	
}

#base_seccion_item img{
	max-width:40px;	
	max-height:40px;
	margin-bottom:-7px;
}
    
    
    .ccm-pick-archivo {
        padding: 10px;
        height:auto;
        cursor: pointer;
        background: #dedede;
        border: 1px solid #cdcdcd;
        text-align: center;
        vertical-align: center;
    }
    .ccm-pick-archivo img{
        width:100%   
    }
    .btn i{
        vertical-align:middle;   
    }
    .botoneras{
        top: 9px;
        position: absolute;
        right: 10px;   
    }
    .descripcion_text{
        height:300px;   
    }
	.sin_padding_col .col-xs-9, .sin_padding_col .col-xs-3{
        padding-left:0px;
        padding-right:0px;
    }
    .ccm-ui textarea.form-control{
        height:108px;   
    }
    .redactor-editor{
        max-height:180px !important;   
    }
</style>
<?php
defined('C5_EXECUTE') or die("Access Denied.");
 $meses = array('Ninguno','Enero', 'Febrero', 'Marzo', 'Abril',
            'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre',
            'Octubre', 'Noviembre', 'Diciembre');
?>
<div id="base_seccion_item">
    <h2><?php echo $titulo ?></h2>
    <p><?php echo $resumen ?></p>
    <?php if($autor) { ?><div class="detalles_del_item">Autor: <b><?php echo $autor ?></b></div><?php } ?>
    <?php if($meses[$mes] != 'Ninguno') { ?><div class="detalles_del_item">Correspondiente al mes de: <b><?php echo $meses[$mes] ?></b></div><?php } ?>
    
    <hr />
    <?php
        foreach($items as $item) {
            $f = File::getByID($item['fID']);
            if(is_object($f)) {
            ?>
            <div style="float:left"></div>
            <a href="<?php echo $f->getURL();?>" target="_blank">
                <div class="botom_link_item">
                    <?php echo $f->getDetailThumbnailImage() ?><br />
                    <?php echo $item['texto_link'] ?>
                </div>
            </a>
            <?php
            }
        }
    ?>
</div>
