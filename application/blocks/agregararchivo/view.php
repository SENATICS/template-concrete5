<?php  defined('C5_EXECUTE') or die("Access Denied.");
	$f = $controller->getFileObject();
	$fp = new Permissions($f);
	if ($fp->canViewFile()) { 
		$c = Page::getCurrentPage();
		if($c instanceof Page) {
			$cID = $c->getCollectionID();
		}
?>

<div class="contenedor_descargar">
	<div class="base_contenido_descargar">
			<?php $icono = $controller->getIcon();
			switch($icono) {
				case 1:
					?>
					<div class="icono_documento"><img src="/concrete/images/icons/filetypes/pdf.png" width="70"></div>
				<?php
					break;
				case 2:
				?>
					<div class="icono_documento"><img src="/concrete/images/icons/filetypes/docx.png" width="70"></div>
				<?php
					break;
				case 3:
				?>
					<div class="icono_documento"><img src="/concrete/images/icons/filetypes/xlsx.png" width="70"></div>
				<?php
					break;
				case 4:
				?>
					<div class="icono_documento"><img src="/concrete/images/icons/filetypes/pptx.png" width="70"></div>
				<?php
					break;
				case 5:
				?>
					<div class="icono_documento"><img src="/concrete/images/icons/filetypes/wma.png" width="70"></div>
				<?php
					break;
				case 6:
				?>
					<div class="icono_documento"><img src="/concrete/images/icons/filetypes/tiff.png" width="70"></div>
				<?php
					break;
				case 7:
				?>
					<div class="icono_documento"><img src="/concrete/images/icons/filetypes/au.png" width="70"></div>
				<?php
					break;
				case 8:
				?>
					<div class="icono_documento"><img src="/concrete/images/icons/filetypes/zip.png" width="70"></div>
				<?php
					break;
				case 9:
				?>
                	<div class="icono_documento"><img src="/concrete/images/icons/filetypes/default.png" width="70"></div>
				<?php
					break;
				case 10:
				?>
					<style>
                    	.nombre_archivo{margin-left:10px !important;}
                    </style>
				<?php
				}
				?>
            <div class="nombre_archivo">
            	<h2><?php echo $controller->getTitle() ?></h2>
            	<p><?php echo $controller->getDescription() ?></p>
            </div>
            <a href="<?php echo View::url('/download_file', $controller->getFileID(),$cID) ?>" target="_blank"><div class="descargar"><?php echo stripslashes($controller->getLinkText()) ?></div></a>
    </div>
</div>   
 
<?php
}
?>
