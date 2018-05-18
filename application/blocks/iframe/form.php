<?php  
defined('C5_EXECUTE') or die("Access Denied.");
$al = Loader::helper('concrete/asset_library');

$args = array();
$constrain = $maxHeight > 0;
if ($maxHeight == 0) {
    $maxHeight = '';
}

?>
<style type="text/css">
    #ccm-block-html-value {
        width: 100%;
        border: 1px solid #eee;
        height: 200px;
    }
</style>

<fieldset>
    <legend><?php echo t('Popup')?></legend>
    <?php 
        print 'Para abrir el popup utiliza el bloque de "boton" y enlaza a con la URL Externa a: "#ventana'.$bID.'"';
    ?>
    
<div class="form-group">
    <?php echo $form->label('title', t('Title'))?>
    <?php echo $form->text('title', $title, array('style'=>'width: 60%;')); ?>
</div>

<div class="form-group">
	<?php echo $form->label('imageLinkType', t('Contenido del Popup'))?>
	<select name="linkType" id="imageLinkType" class="form-control" style="width: 60%;">
		<option value="0" <?php echo (empty($externalLink) && empty($internalLinkCID) && empty($content) ? 'selected="selected"' : '')?>><?php echo t('None')?></option>
		<option value="1" <?php echo (empty($externalLink) && !empty($internalLinkCID) && empty($content) ? 'selected="selected"' : '')?>><?php echo t('Another Page')?></option>
		<option value="2" <?php echo (!empty($externalLink) && empty($content) && empty($internalLinkCID) ? 'selected="selected"' : '')?>><?php echo t('External URL')?></option>
        <option value="3" <?php echo (empty($externalLink) && !empty($content) && empty($internalLinkCID) ? 'selected="selected"' : '')?>><?php echo t('Mi HTML')?></option>
	</select>
</div>

<div id="myTypePage" style="display: none;" class="form-group">
    <?php echo $form->label('content', t('Mi HTML'))?>
    <div id="ccm-block-html-value"><?php echo h($content)?></div>
<textarea style="display: none" id="ccm-block-html-value-textarea" name="content"></textarea>
</div>

<div id="imageLinkTypePage" style="display: none;" class="form-group">
	<?php echo $form->label('internalLinkCID', t('Choose Page:'))?>
	<?php echo Loader::helper('form/page_selector')->selectPage('internalLinkCID', $internalLinkCID); ?>
</div>

<div id="imageLinkTypeExternal" style="display: none;" class="form-group">
	<?php echo $form->label('externalLink', t('URL'))?>
	<?php echo $form->text('externalLink', $externalLink, array('style'=>'width: 60%;')); ?>
</div>

</fieldset>
	<hr />
<fieldset>

    <div class="form-group">
        <div class="checkbox" data-checkbox-wrapper="constrain-image">
            <label><?php echo $form->checkbox('constrainPopup', 1, $constrain)?>
            <?php echo t('Tamaño del Popup Personalizado')?></label>
        </div>
    </div>

    <div data-fields="constrain-image" style="display: none">
        <div class="form-group">
            <?php echo $form->label('maxHeight', t('Height'))?>
            <?php echo $form->text('maxHeight', $maxHeight, array('style' => 'width: 60px')); ?>
            <p style="font-size:10px">Recomendación: no exeder los 500px; </p>
        </div>
    </div>

</fieldset>


<script type="text/javascript">
refreshImageLinkTypeControls = function() {
	var linkType = $('#imageLinkType').val();
	$('#imageLinkTypePage').toggle(linkType == 1);
	$('#imageLinkTypeExternal').toggle(linkType == 2);
	$('#myTypePage').toggle(linkType == 3);
}

$(document).ready(function() {
	$('#imageLinkType').change(refreshImageLinkTypeControls);

    $('div[data-checkbox-wrapper=constrain-image] input').on('change', function() {
        if ($(this).is(':checked')) {
            $('div[data-fields=constrain-image]').show();
        } else {
            $('div[data-fields=constrain-image]').hide();
        }
    }).trigger('change');
	refreshImageLinkTypeControls();
});
</script>

<script type="text/javascript">
    $(function() {
        var editor = ace.edit("ccm-block-html-value");
        editor.setTheme("ace/theme/eclipse");
        editor.getSession().setMode("ace/mode/html");
        editor.getSession().on('change', function() {
            $('#ccm-block-html-value-textarea').val(editor.getValue());
        });
    });
</script>