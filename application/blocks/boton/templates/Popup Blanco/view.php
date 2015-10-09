<style>
	
	.boton_ventana ol, .boton_ventana ul {
		list-style: none;
	}
	.boton_ventana blockquote, .boton_ventana q {
		quotes: none;
	}
	.boton_ventana blockquote:before, .boton_ventana blockquote:after,
	.boton_ventana q:before, .boton_ventana q:after {
		content: '';
		content: none;
	}
	.boton_ventana table {
		border-collapse: collapse;
		border-spacing: 0;
	}
	
	.boton_ventana .cf:before,
	.boton_ventana .cf:after {
		content:"";
		display:table;
	}
	.boton_ventana .cf:after {
		clear:both;
	}
	
	.boton_ventana {
		background-color: #f6f6f6;
		background-image: -webkit-gradient(linear, left top, left bottom, from(rgb(246, 246, 246)), to(rgb(225, 225, 225)));
		background-image: -webkit-linear-gradient(top, rgb(246, 246, 246), rgb(225, 225, 225));
		background-image: -moz-linear-gradient(top, rgb(246, 246, 246), rgb(225, 225, 225));
		background-image: -o-linear-gradient(top, rgb(246, 246, 246), rgb(225, 225, 225));
		background-image: -ms-linear-gradient(top, rgb(246, 246, 246), rgb(225, 225, 225));
		background-image: linear-gradient(top, rgb(246, 246, 246), rgb(225, 225, 225));
		filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,StartColorStr='#f6f6f6', EndColorStr='#e1e1e1');
		border: 1px solid #ccc;
		color:#555;
		display:inline-block;
		padding:10px 15px;
		text-decoration:none;
		text-shadow:0 2px rgba(255,255,255,.9);
		border-radius:20px;
		-moz-border-radius:20px;
		-webkit-border-radius:20px;
		box-shadow:0 1px rgba(0,0,0,.35);
		-moz-box-shadow:0 1px rgba(0,0,0,.35);
		-webkit-box-shadow:0 1px rgba(0,0,0,.35);
	}
	.boton_ventana:active {
		background-color: #f6f6f6;
		background-image: -webkit-gradient(linear, left bottom, left top, from(rgb(246, 246, 246)), to(rgb(225, 225, 225)));
		background-image: -webkit-linear-gradient(bottom, rgb(246, 246, 246), rgb(225, 225, 225));
		background-image: -moz-linear-gradient(bottom, rgb(246, 246, 246), rgb(225, 225, 225));
		background-image: -o-linear-gradient(bottom, rgb(246, 246, 246), rgb(225, 225, 225));
		background-image: -ms-linear-gradient(bottom, rgb(246, 246, 246), rgb(225, 225, 225));
		background-image: linear-gradient(bottom, rgb(246, 246, 246), rgb(225, 225, 225));
		filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,StartColorStr='#f6f6f6', EndColorStr='#e1e1e1');
	}
		
		
	@media only screen and (min-width: 769px) {	
		#ventana {
			left:50%;
			margin:-250px 0 0 -40%;
			opacity: 0;
			top:45%;
			position:fixed;
			z-index:888;
			visibility: hidden;
			width:80%;
			box-shadow:0 3px 7px rgba(0,0,0,.25);
			box-sizing:border-box;
		}
		#ventana:target {
			opacity: 1;
			top:45%;
			visibility: visible;
		}
	}
	@media only screen and (max-width: 768px) {
		#ventana {
			width:100%;
			height:100%;
			position:fixed;
			opacity: 0;
			z-index:888;
			visibility: hidden;
			margin:0px;
			left:0;
			top:20px;
			box-sizing:border-box;
		}
		#ventana:target {
			opacity: 1;
			visibility: visible;
		}
	}
	#ventana .header,#ventana .footer {
		border-bottom: 1px solid #e7e7e7;
		border-radius: 10px 10px 0 0;
	}
		#ventana .footer {
			border:none;
			border-top: 1px solid #e7e7e7;
			border-radius: 0 0 10px 10px;
		}
	#ventana h2 {
		margin:0;
	}
	#ventana .boton_ventana {
		float:right;
		margin-top:-20px;
	}
	#ventana .ventana,#ventana .header, #ventana .footer {
		padding:15px;
	}
	.ventana-contenido {
		background: #f7f7f7;
		position: relative;
		z-index: 20;
		border-radius:10px;
	}
	#ventana .ventana {
		background: #fff;
		overflow:auto;
	}
	#ventana .overlay {
		background: rgba(255,255,255,.5);
		height: 100%;
		left: 0;
		position: fixed;
		top: 0;
		width: 100%;
		z-index: 10;
	}
    </style>
<?php defined('C5_EXECUTE') or die("Access Denied.");

$c = Page::getCurrentPage();


if ($content || $linkURL) {
	
	print'
	<style>
	@media only screen and (min-width: 769px) {	
		#ventana'.$bID.' {
			left:50%;
			margin:-250px 0 0 -40%;
			opacity: 0;
			top:45%;
			position:fixed;
			z-index:888;
			visibility: hidden;
			width:80%;
			box-shadow:0 3px 7px rgba(0,0,0,.25);
			box-sizing:border-box;
		}
		#ventana'.$bID.':target {
			opacity: 1;
			top:45%;
			visibility: visible;
		}
	}
	@media only screen and (max-width: 768px) {
		#ventana'.$bID.' {
			width:100%;
			height:100%;
			position:absolute;
			padding:20px !important;
			box-sizing:border-box;
			opacity: 0;
			box
			z-index:888;
			visibility: hidden;
			margin:0px;
			left:0;
			top:20px;
			box-sizing:border-box;
		}
		#ventana'.$bID.':target {
			opacity: 1;
			visibility: visible;
		}
	}
	#ventana'.$bID.' .header,#ventana'.$bID.' .footer {
		border-bottom: 1px solid #e7e7e7;
		border-radius: 10px 10px 0 0;
	}
		#ventana'.$bID.' .footer {
			border:none;
			border-top: 1px solid #e7e7e7;
			border-radius: 0 0 10px 10px;
		}
	#ventana'.$bID.' h2 {
		margin:0;
	}
	#ventana'.$bID.' .boton_ventana {
		float:right;
		margin-top:-20px;
	}
	#ventana'.$bID.' .ventana,#ventana'.$bID.' .header, #ventana'.$bID.' .footer {
		padding:15px;
	}
	.ventana-contenido {
		background: #f7f7f7;
		position: relative;
		z-index: 20;
		border-radius:10px;
	}
	#ventana'.$bID.' .ventana {
		background: #fff;
		overflow:auto;
	}
	
	#ventana'.$bID.' .overlay {
		background: rgba(255,255,255,.5);
		height: 100%;
		left: 0;
		position: fixed;
		top: 0;
		width: 100%;
		z-index: 10;
	}
	</style>
	';
	
	
/*	print 'Height: '. $maxHeight;
    print 'Titulo: '. $title;
	print 'Link: '. $linkURL;
	print '<div id="HTMLBlock'.$bID.'>" class="HTMLBlock">'.$content;'.</div>';*/

	if ($maxHeight > 500): print '<style>#ventana'.$bID.' {	position:absolute; top:20px}</style>'; endif;
	
	print 
	'
		<p><a href="#ventana'.$bID.'" class="boton_ventana go">Abrir</a></p>

		<div id="ventana'.$bID.'">
			<div class="ventana-contenido">
				<div class="header">
					<a href="#" class="boton_ventana">Cerrar</a>
					<h2>'.$title.'</h2>
				</div>
				<div class="ventana">';
					if ($linkURL): print '<iframe id="'.$bID.'" src="'.$linkURL.'" width="80%" height="';
						if ($maxHeight == 0): print '450px;'; endif;
						if ($maxHeight > 0): print $maxHeight.'px'; endif;
					print'"></iframe>'; endif;
						print '<div id="HTMLBlock'.$bID.'>" class="HTMLBlock" style="';
						if ($maxHeight == 0): print 'height:450px;'; endif;
						if ($maxHeight > 0): print 'height:'.$maxHeight.'px'; endif;
						print'">';
						print $content;
						print'.</div>';
				print '</div>
			</div>
			<div class="overlay"></div>
		</div>
	';


} else if ($c->isEditMode()) { ?>

    <div class="ccm-edit-mode-disabled-item"><?php echo t('Empty Block.')?></div>

<?php } ?>