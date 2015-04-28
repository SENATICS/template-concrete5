<html>
	<head>
    	<title>Pagina no encontrada</title>
        <style type="text/css">
        	.fondo{
				background: url("/application/single_pages/bg_login.png") no-repeat fixed center top !important;
				background-size:cover;
			}
			.base{
				width:400px; 
				margin-top:150px; 
				border-radius:20px; 
				background:rgba(210,210,210,0.5); 
				padding:30px;
				-webkit-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.30);
				-moz-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.30);
				box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.30);	
								
				animation: parpadeo 2s;
				-webkit-animation: parpadeo 2s;
				animation-iteration-count:infinite;
				-webkit-animation-iteration-count:infinite;
				
			}
			
			@keyframes parpadeo{
				0% {background:rgba(240,240,240,.6);box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.30);}
				50% {background:rgba(210,210,210,0.5);box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.60);}
				100% {background:rgba(240,240,240,.6);box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.30);}
			}
			
			@-webkit-keyframes parpadeo{
				0% {background:rgba(210,210,210,0.5);-webkit-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.30);}
				50% {background:rgba(240,240,240,.6);-webkit-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.60);}
				100% {background:rgba(210,210,210,0.5);-webkit-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.30);}
			}
			
			.volver{
				padding:10px;
				margin:10px;
				background:rgba(104,161,209,.6);
				border:1px solid #FFF;
				border-radius:5px;
				color:#333;
				font-size:20px;
				text-shadow:1px 2px 3px #fff;
				-webkit-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.15);
				-moz-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.15);
				box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.15);	
				transition:all .3s ease;
			}
			.volver:hover{
				background:#89aece;
			}
			a{
				text-decoration:none;	
			}
			.error{
				color:#333;	
			}
        </style>
    </head>
    <body class="fondo">
    	<center>
        	<div class="base">
            	<img src="/application/single_pages/Construccion.png" width="256" style="margin-top:-100px; margin-bottom:-20px;"/>
				<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
                <h1 class="error" style="font-family:Arial, Helvetica, sans-serif"><?php echo t('Pagina no encontrada')?></h1>
                <a href="<?php echo DIR_REL?>/"> <div class="volver" style="font-family:Arial, Helvetica, sans-serif"><?php echo t('Volver a la Portada')?></div></a>
            </div>
        </center>
    </body>
</html>

