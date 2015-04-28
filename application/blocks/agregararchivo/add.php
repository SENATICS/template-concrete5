<?php 
defined('C5_EXECUTE') or die("Access Denied.");
$al = Loader::helper('concrete/asset_library');
?>
<div class="form-group">
<?php echo $form->label('fID', t('File'))?>
<?php echo $al->file('ccm-b-file', 'fID', t('Choose File'));?>
</div>
<div class="form-group">
<?php echo $form->label('fileTitle', t('Título'))?>
<?php echo $form->text('fileTitle')?>
</div>
<div class="form-group">
<?php echo $form->label('fileDescription', t('Descripción'))?>
<?php echo $form->text('fileDescription')?>
</div>
<div class="form-group">
<?php echo $form->label('fileIcon', t('Icono'))?>
<?php echo $form->select('fileIcon', array(1 => 'Documento PDF', 2 => 'Documento Word (Documento de texto)', 
3 => 'Documento Excel (Planilla electrónica)', 4 => 'Documento PowerPoint (Presentación de diapositivas)', 5 => 'Video', 6 => 'Imagen',
7 => 'Audio', 8 => 'Archivo comprimido (zip)',  9 => 'Otro', 10 => 'Sin Icono'))?>
</div>
<div class="form-group">
<?php echo $form->label('fileLinkText', t('Link'))?>
<?php echo $form->text('fileLinkText')?>
</div>
