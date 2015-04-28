<?php
defined('C5_EXECUTE') or die("Access Denied.");


if (Page::getCurrentPage()->isEditMode()) { ?>

	<div class="ccm-edit-mode-disabled-item">
		<div style="padding:8px 0px;"><?php echo t('Bloque de Ley de Transparencia en edición'); ?></div>
	</div>
	
<?php } else{ ?>
	<style type="text/css">
		#menu ul, #menu li { margin: 0px;
		padding: 0px; outline: 0;
		}
		#menu {  text-align: left;}
		#menu ul { list-style-type: none;  background-color:#FFF; border-radius:5px; padding-top:5px; padding-bottom:5px; }
		#menu ul li.nivel1 { float: left; cursor:pointer;
		}
		#menu ul li a {display: block;
		text-decoration: none;
		color: #333;
		background-color: #fff;
		position: relative;
		}
		#menu ul li:hover {position: relative;
		}
		#menu ul li ul li a:hover {background-color: #d71e1e;
		color: #fff;
		position: relative;
		}
		#menu ul li a.nivel1 {display: block!important;display: none;
		position: relative;border-radius:5px;
		}
		#menu ul li ul {display: none; border-radius:5px;border:1px solid #ddd; 
			box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.7);
			-moz-box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.7);
			-webkit-box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.7);
			margin-top:-10px;
		}
		#menu ul li a:hover ul, #menu ul li:hover ul {display: block;
		position: absolute;left: 0px;
		}
		#menu ul li ul li a {width: 195px;
		padding: 6px 0px 8px 0px;
		border-top-color: #000;
		padding-left:5px;
		padding-left:15px;
			padding-right:10px;
		}
		#menu ul li ul li a:hover {border-top-color: #000;
		position: relative;
		}
		table.falsa {border-collapse:collapse;
		border:0px;
		float: left;
		position: relative;
		}
	</style>

	<body>
	<section id="menu">
		<ul>
			<li class="nivel1"><img src="/application/blocks/leytransparencia/Transparencia.png" width="100%" style="border-radius:3px;"/>
				<ul style="z-index:999;">
					<?php
						foreach($items as $item) {
							$f = File::getByID($item['fID']);
							if(is_object($f)) { ?>
								<li>
								<a href="<?php echo $f->getURL();?>" target="_blank"><?php echo $item['nombre']; ?></a></li>
						<?php 
							}
						}
					?>
				</ul>
			</li>
		</ul>
	</section>
<?php } ?>
