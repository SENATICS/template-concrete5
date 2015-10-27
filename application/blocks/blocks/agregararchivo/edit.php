<?php
    defined('C5_EXECUTE') or die("Access Denied.");
    $al = Loader::helper('concrete/asset_library');
    $bf = null;
    if ($controller->getFileID() > 0) {
        $bf = $controller->getFileObject();
    }
?>
<div class="form-group">
<?php echo $form->label('fID', t('File'))?>
<?php echo $al->file('ccm-b-file', 'fID', t('Choose File'), $bf);?>
</div>
<div class="form-group">
<?php echo $form->label('fileTitle', t('Título para el archivo'))?>
<?php echo $form->text('fileTitle', $controller->getTitle())?>
</div>
<div class="form-group">
<?php echo $form->label('fileDescription', t('Descripción para el archivo'))?>
<?php echo $form->text('fileDescription', $controller->getDescription())?>
</div>
<div class="form-group">
<?php echo $form->label('fileIcon', t('Icono'))?>
<?php echo $form->select('fileIcon', array(1 => 'Documento PDF', 2 => 'Documento Word (Documento de texto)', 
3 => 'Documento Excel (Planilla electrónica)', 4 => 'Documento PowerPoint (Presentación de diapositivas)', 5 => 'Video', 6 => 'Imagen',
7 => 'Audio', 8 => 'Archivo comprimido (zip)',  9 => 'Otro', 10 => 'Sin Icono'), $controller->getIcon())?>
</div>
<div class="form-group">
<?php echo $form->label('fileLinkText', t('Texto para el Boton (Ej:Descargar)'))?>
<?php echo $form->text('fileLinkText', $controller->getLinkText())?>
</div>
