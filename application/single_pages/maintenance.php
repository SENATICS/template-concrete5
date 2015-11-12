<html>
	<head>
    	<title>Pagina no encontrada</title>
        <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
        <style type="text/css">
        	.fondo{
				background: url("/concrete5.7.4.2/application/single_pages/bg.jpg") !important;
				background-repeat:repeat;
			}
			.base{
				max-width:450px; 
				width:100%;
				margin-top:100px;
				text-align:center;
                font-family:Arial, Helvetica, sans-serif;
			}
			.volver{
				padding:10px;
				margin:10px;
				background:rgba(206,215,222,.8);
				border:1px solid #efefef;
				border-radius:5px;
				color:#333;
				box-sizing:border-box;
				font-size:14px;
				text-shadow:1px 2px 3px #fff;
				-webkit-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.15);
				-moz-box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.15);
				box-shadow: 0px 5px 10px 0px rgba(0,0,0,0.15);	
				transition:all .3s ease;
			}
			.volver:hover{
				background:rgba(206,215,222,1);
			}
			a{
				text-decoration:none;	
			}
			.error{
				color:#333;	
			}
            @media only screen and (min-width: 500px) {
                .logo-construccion{
                    width:200px;
                    margin:0 auto;
                    animation: parpadeo 2s;
                    animation-timing-function: ease-in-out;
                    -webkit-animation: parpadeo 2s;
                    animation-iteration-count:infinite;
                    -webkit-animation-iteration-count:infinite;
                }
                
                @keyframes parpadeo{
                    0% {margin-left:-10px;}
                    50% {margin-left:10px;}
                    100% {margin-left:-10px;}
                }
            }
            @media only screen and (max-width: 500px) {
                .base{margin-top:20px;}
                .logo-construccion{
                    width:200px;
                    margin:0 auto;
                    animation: parpadeo 2s;
                    animation-timing-function: ease-in-out;
                    -webkit-animation: parpadeo 2s;
                    animation-iteration-count:infinite;
                    -webkit-animation-iteration-count:infinite;
                }
            }
            .error-cuatrocientoscuatro{
                font-size:100px;
                color:#777;
            }   
        </style>
    </head>
    <body class="fondo">
    	<center>
        	<div class="base">
            	<img src="/concrete5.7.4.2/application/single_pages/Construccion.png" class="logo-construccion" /><br>
				<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
                <span class="error-cuatrocientoscuatro">404</span>
                <h1 class="error" style="font-family:Arial, Helvetica, sans-serif">Pagina no encontrada</h1>
                <span>La página que estás buscando o no existe o no está más aquí. </span>
                <a href="<?php echo DIR_REL?>/"> <div class="volver" style="font-family:Arial, Helvetica, sans-serif"><?php echo t('Volver a la página de Inicio')?></div></a>
            </div>
        </center>
    </body>
</html>

