
    <script src="<?php echo BASE_URL?>/application/blocks/boton/jquery.minicolors.js" ></script>
    <link rel="stylesheet" href="<?php echo BASE_URL?>/application/blocks/boton/jquery.minicolors.css">



<?php  
defined('C5_EXECUTE') or die("Access Denied.");
$al = Loader::helper('concrete/asset_library');
$ih = Loader::helper('concrete/ui');
$args = array();
$addSelected = true;

$bf = null;
if ($controller->getFileID() > 0) {
    $bf = $controller->getFileObject();
}

print Loader::helper('concrete/ui')->tabs(array(
    array('form-add', t('Base'), $addSelected),
    array('form-options', t('Design'))
));
?>
<style>
.NO-AFECTA .col-xs-6, .NO-AFECTA .col-xs-11, .NO-AFECTA .col-xs-1{
    padding-left:0px !important;
    padding-right:0px !important;
}
.diseño label {
    margin-bottom:0px !important;   
}
.icono_seccion{
    text-align:right;
    font-size:25px;
}
</style>
    <div class="ccm-tab-content" id="ccm-tab-content-form-add">
        <div class="col-xs-6">
            <div class="form-group">
                <?php echo $form->label('texto', t('Texto'))?>
                <?php echo $form->text('texto', $texto, array('style'=>'width: 100%;','maxlength' => '255')); ?>
            </div>
            <div class="form-group NO-AFECTA">
                <?php echo $form->label('texto', t('Icono (Proximamente)'))?>
                <div class="form-group ccm-block-feature-select-icon">
                    <div class="col-xs-11">
                        <?php echo $form->select('icon', $icons, $icon, array('class' => 'form-control','aria-describedby' => 'basic-addon2'));?>
                    </div>
                    <div class="col-xs-1">
                        <div class="icono_seccion" id="basic-addon2"><i data-preview="icon" <?php if ($icon) { ?>class="fa fa-<?php echo $icon?>"<?php } ?>></i></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-6">
            <div class="form-group">
                <?php echo $form->label('imageLinkType', t('Enlace a'))?>
                <select name="linkType" id="imageLinkType" class="form-control" style="width: 100%;">
                    <option value="0" <?php echo (empty($externalLink) && empty($internalLinkCID) && empty($fID) ? 'selected="selected"' : '')?>><?php echo t('None')?></option>
                    <option value="1" <?php echo (empty($externalLink) && !empty($internalLinkCID) && empty($fID) ? 'selected="selected"' : '')?>><?php echo t('Another Page')?></option>
                    <option value="2" <?php echo (!empty($externalLink)  && empty($internalLinkCID) && empty($fID)? 'selected="selected"' : '')?>><?php echo t('External URL')?></option>
                    <option value="3" <?php echo (empty($externalLink)  && empty($internalLinkCID) && !empty($fID) ? 'selected="selected"' : '')?>><?php echo t('Seleccionar Archivo')?></option>

                </select>
            </div>

            <div id="imageLinkTypePage" style="display: none;" class="form-group">
                <?php echo $form->label('internalLinkCID', t('Choose Page:'))?>
                <?php echo Loader::helper('form/page_selector')->selectPage('internalLinkCID', $internalLinkCID); ?>
            </div>

            <div id="imageLinkTypeExternal" style="display: none;" class="form-group">
                <?php echo $form->label('externalLink', t('URL (Ej: http://www.senatics.gov.py)'))?>
                <?php echo $form->text('externalLink', $externalLink, array('style'=>'width: 100%;')); ?>
            </div>

            <div id="archivo" style="display: none;" class="form-group">
                <?php echo $form->label('fID', t('File'))?>
                <?php echo $al->file('ccm-b-file', 'fID', t('Choose File'), $bf);?>
            </div>
            <div class="form-group">
                <?php echo $form->label('target', t('target'))?>
                <select name="target" id="target" class="form-control" style="width: 100%;">
                    <option value="0" <?php echo ($target == 0  ? 'selected="selected"' : '')?>><?php echo t('Abrir en esta pagina (_self)')?></option>
                    <option value="1" <?php echo ($target == 1  ? 'selected="selected"' : '')?>><?php echo t('Abrir en nueva pestaña (_blank)')?></option>
                </select>
            </div>
        </div>
    </div>

    <div class="ccm-tab-content diseño" id="ccm-tab-content-form-options">
        <div class="col-xs-4 NO-AFECTA">
            <h3>El Texto / Icono</h3>
            <div class="col-xs-6">
                <div class="form-group style="width: 100%;"" style="padding-right:5px;">
                    <?php echo $form->label('tamanho_fuente', t('Tamaño (Letra/icono)'))?>
                    <select name="tamanho_fuente" id="tamanho_fuente" class="form-control" style="width: 100%;">
                        <option value="7" <?php echo ($tamanho_fuente == 7  ? 'selected="selected"' : '')?>><?php echo t('7px')?></option>
                        <option value="8" <?php echo ($tamanho_fuente == 8  ? 'selected="selected"' : '')?>><?php echo t('8px')?></option>
                        <option value="9" <?php echo ($tamanho_fuente == 9  ? 'selected="selected"' : '')?>><?php echo t('9px')?></option>
                        <option value="10" <?php echo ($tamanho_fuente == 10  ? 'selected="selected"' : '')?>><?php echo t('10px')?></option>
                        <option value="11" <?php echo ($tamanho_fuente == 11 ? 'selected="selected"' : '')?>><?php echo t('11px')?></option>
                        <option value="12" <?php echo ($tamanho_fuente == 12  ? 'selected="selected"' : '')?>><?php echo t('12px')?></option>
                        <option value="14" <?php echo ($tamanho_fuente == 14  ? 'selected="selected"' : '')?>><?php echo t('14px')?></option>
                        <option value="16" <?php echo ($tamanho_fuente == 16  ? 'selected="selected"' : '')?>><?php echo t('16px')?></option>
                        <option value="18" <?php echo ($tamanho_fuente == 18  ? 'selected="selected"' : '')?>><?php echo t('18px')?></option>
                        <option value="20" <?php echo ($tamanho_fuente == 20  ? 'selected="selected"' : '')?>><?php echo t('20px')?></option>
                        <option value="22" <?php echo ($tamanho_fuente == 22  ? 'selected="selected"' : '')?>><?php echo t('22px')?></option>
                        <option value="24" <?php echo ($tamanho_fuente == 24  ? 'selected="selected"' : '')?>><?php echo t('24px')?></option>
                        <option value="28" <?php echo ($tamanho_fuente == 28  ? 'selected="selected"' : '')?>><?php echo t('28px')?></option>
                        <option value="36" <?php echo ($tamanho_fuente == 36  ? 'selected="selected"' : '')?>><?php echo t('36px')?></option>
                    </select>
                </div>
            </div>
            <div class="col-xs-6">
                <div class="form-group style="width: 100%;"" style="padding-left:5px;">
                    <?php echo $form->label('alineacion_fuente', t('Alineación'))?>
                    <select name="alineacion_fuente" id="alineacion_fuente" class="form-control" style="width: 100%;">
                        <option value="0" <?php echo ($alineacion_fuente == 0  ? 'selected="selected"' : '')?>><?php echo t('Centro')?></option>
                        <option value="1" <?php echo ($alineacion_fuente == 1  ? 'selected="selected"' : '')?>><?php echo t('Izquierda')?></option>
                        <option value="2" <?php echo ($alineacion_fuente == 2  ? 'selected="selected"' : '')?>><?php echo t('Derecha')?></option>
                    </select>
                </div>
            </div>
            
            <div class="form-group form-inline">
                <?php echo $form->label('color_fuente', t('Color'))?>
                <input type="text" id="color_fuente" name="color_fuente" class="form-control demo" data-control="hue" value="<?php echo $color_fuente?>" style="width: 100%;">
                <span id="helpBlock" class="help-block" style="font-size:12px; color:#AAA">Recuerda hacer contraste con el color de fondo</span>
            </div>
            <hr>
            <div class="form-group style="width: 100%;"" style="padding-left:5px;">
                <?php echo $form->label('alineacion_icono', t('Ubicación del Icono'))?>
                <select name="alineacion_icono" id="alineacion_icono" class="form-control" style="width: 100%;">
                    <option value="0" <?php echo ($alineacion_icono == 0  ? 'selected="selected"' : '')?>><?php echo t('Izquierda')?></option>
                    <option value="1" <?php echo ($alineacion_icono == 1  ? 'selected="selected"' : '')?>><?php echo t('Derecha')?></option>
                    <option value="2" <?php echo ($alineacion_icono == 2  ? 'selected="selected"' : '')?>><?php echo t('Arriba')?></option>
                    <option value="3" <?php echo ($alineacion_icono == 3  ? 'selected="selected"' : '')?>><?php echo t('Abajo')?></option>
                </select>
                <span id="helpBlock" class="help-block" style="font-size:12px; color:#AAA">Esto con relación al texto</span>
            </div>
        </div>
        <div class="col-xs-4 NO-AFECTA">
            <h3>El Boton</h3>
            <div class="col-xs-6">
                <div class="form-group style="width: 100%;"" style="padding-right:5px;">
                    <?php echo $form->label('padding', t('Padding (interno)'))?>
                    <select name="padding" id="padding" class="form-control" style="width: 100%;">
                        <option value="3" <?php echo ($padding == 3  ? 'selected="selected"' : '')?>><?php echo t('3px')?></option>
                        <option value="5" <?php echo ($padding == 5  ? 'selected="selected"' : '')?>><?php echo t('5px')?></option>
                        <option value="7" <?php echo ($padding == 7  ? 'selected="selected"' : '')?>><?php echo t('7px')?></option>
                        <option value="8" <?php echo ($padding == 8  ? 'selected="selected"' : '')?>><?php echo t('8px')?></option>
                        <option value="10" <?php echo ($padding == 10  ? 'selected="selected"' : '')?>><?php echo t('10px')?></option>
                        <option value="12" <?php echo ($padding == 12  ? 'selected="selected"' : '')?>><?php echo t('12px')?></option>
                        <option value="14" <?php echo ($padding == 14  ? 'selected="selected"' : '')?>><?php echo t('14px')?></option>
                        <option value="16" <?php echo ($padding == 16  ? 'selected="selected"' : '')?>><?php echo t('16px')?></option>
                        <option value="18" <?php echo ($padding == 18  ? 'selected="selected"' : '')?>><?php echo t('18px')?></option>
                        <option value="20" <?php echo ($padding == 20  ? 'selected="selected"' : '')?>><?php echo t('20px')?></option>
                        <option value="22" <?php echo ($padding == 22  ? 'selected="selected"' : '')?>><?php echo t('22px')?></option>
                        <option value="24" <?php echo ($padding == 24  ? 'selected="selected"' : '')?>><?php echo t('24px')?></option>
                    </select>
                </div>
            </div>
            <div class="col-xs-6">
                <div class="form-group style="width: 100%;"" style="padding-left:5px;">
                    <?php echo $form->label('alineacion_boton', t('Alineación'))?>
                    <select name="alineacion_boton" id="alineacion_boton" class="form-control" style="width: 100%;">
                        <option value="0" <?php echo ($alineacion_boton == 0  ? 'selected="selected"' : '')?>><?php echo t('Centro')?></option>
                        <option value="1" <?php echo ($alineacion_boton == 1  ? 'selected="selected"' : '')?>><?php echo t('Izquierda')?></option>
                        <option value="2" <?php echo ($alineacion_boton == 2  ? 'selected="selected"' : '')?>><?php echo t('Derecha')?></option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <?php echo $form->label('color_fondo', t('Color del Fondo'))?>
                <input type="text" id="color_fondo" name="color_fondo" class="form-control demo_fondo" data-control="hue" value="<?php echo $color_fondo?>">
                <span id="helpBlock" class="help-block" style="font-size:12px; color:#AAA">Recuerda hacer contraste con el color del texto</span>
            </div>
            <div class="form-group form-inline">
                <?php echo $form->label('ancho', t('Ancho'))?>
                <div class="input-group">
                    <?php echo $form->text('ancho', $ancho, array('style' => 'width: 100%','maxlength' => '3','onkeypress' => 'return justNumbers(event);','placeholder' => 'Ej: 100')); ?>
                    <span class="input-group-btn">
                        <select name="ancho_formato" id="ancho_formato" class="form-control" style="width: 80px;">
                            <option value="px" <?php echo ($ancho_formato == "px"  ? 'selected="selected"' : '')?>><?php echo t('px')?></option>
                            <option value="%" <?php echo ($ancho_formato == "%"  ? 'selected="selected"' : '')?>><?php echo t('%')?></option>
                        </select>
                    </span>
                </div>
                <span id="helpBlock" class="help-block" style="font-size:12px; color:#AAA">Si usas <b>px</b> no exeder los 1000px, si usas <b>%</b> no exceder los 100%, Si dejas vacio el campo, entonces se auto ajustara el tamaño del boton</span>
            </div>

            
        </div>
        <div class="col-xs-4 NO-AFECTA">
            <h3>El Hover <small style="font-size:50%">(Al pasar el mouse encima)</small></h3>
            <div class="form-group form-inline">
                <?php echo $form->label('color_fuente_hover', t('Color del Texto'))?>
                <input type="text" id="color_fuente_hover" name="color_fuente_hover" class="form-control demo_hover" data-control="hue" value="<?php echo $color_fuente_hover?>" style="width: 100%;">
                <span id="helpBlock" class="help-block" style="font-size:12px; color:#AAA">Recuerda hacer contraste con el color de fondo</span>
            </div>
            <div class="form-group">
                <?php echo $form->label('color_fondo_hover', t('Color del Fondo'))?>
                <input type="text" id="color_fondo_hover" name="color_fondo_hover" class="form-control demo_fondo_hover" data-control="hue" value="<?php echo $color_fondo_hover?>">
                <span id="helpBlock" class="help-block" style="font-size:12px; color:#AAA">Recuerda hacer contraste con el color del texto</span>
            </div>
        </div>
    </div>

<script type="text/javascript">
refreshImageLinkTypeControls = function() {
	var linkType = $('#imageLinkType').val();
	$('#imageLinkTypePage').toggle(linkType == 1);
	$('#imageLinkTypeExternal').toggle(linkType == 2);
    $('#archivo').toggle(linkType == 3);

}
$(document).ready(function() {
    $('#imageLinkType').change(refreshImageLinkTypeControls);
    refreshImageLinkTypeControls();

//color picker
    $('.demo').each( function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
            control: $(this).attr('data-control') || 'hue',
            defaultValue: $(this).attr('data-defaultValue') || '',
            inline: $(this).attr('data-inline') === 'true',
            letterCase: $(this).attr('data-letterCase') || 'lowercase',
            opacity: $(this).attr('data-opacity'),
            position: $(this).attr('data-position') || 'bottom left',
            change: function(hex, opacity) {
                if( !hex ) return;
                if( opacity ) hex += ', ' + opacity;
                if( typeof console === 'object' ) {
                    console.log(hex);
                }
            },
            theme: 'bootstrap'
        });
    });

    $('.demo_fondo').each( function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
            control: $(this).attr('data-control') || 'hue',
            defaultValue: $(this).attr('data-defaultValue') || '',
            inline: $(this).attr('data-inline') === 'true',
            letterCase: $(this).attr('data-letterCase') || 'lowercase',
            opacity: $(this).attr('data-opacity'),
            position: $(this).attr('data-position') || 'bottom left',
            change: function(hex, opacity) {
                if( !hex ) return;
                if( opacity ) hex += ', ' + opacity;
                if( typeof console === 'object' ) {
                    console.log(hex);
                }
            },
            theme: 'bootstrap'
        });

    });
    
    //HOVER
    $('.demo_hover').each( function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
            control: $(this).attr('data-control') || 'hue',
            defaultValue: $(this).attr('data-defaultValue') || '',
            inline: $(this).attr('data-inline') === 'true',
            letterCase: $(this).attr('data-letterCase') || 'lowercase',
            opacity: $(this).attr('data-opacity'),
            position: $(this).attr('data-position') || 'bottom left',
            change: function(hex, opacity) {
                if( !hex ) return;
                if( opacity ) hex += ', ' + opacity;
                if( typeof console === 'object' ) {
                    console.log(hex);
                }
            },
            theme: 'bootstrap'
        });
    });

    $('.demo_fondo_hover').each( function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
            control: $(this).attr('data-control') || 'hue',
            defaultValue: $(this).attr('data-defaultValue') || '',
            inline: $(this).attr('data-inline') === 'true',
            letterCase: $(this).attr('data-letterCase') || 'lowercase',
            opacity: $(this).attr('data-opacity'),
            position: $(this).attr('data-position') || 'bottom left',
            change: function(hex, opacity) {
                if( !hex ) return;
                if( opacity ) hex += ', ' + opacity;
                if( typeof console === 'object' ) {
                    console.log(hex);
                }
            },
            theme: 'bootstrap'
        });

    });
});



function justNumbers(e)
    {
    var keynum = window.event ? window.event.keyCode : e.which;
    if (keynum == 8)
    return true;
     
    return /\d/.test(String.fromCharCode(keynum));
    }
    
    $(function() {
    $('div.ccm-block-feature-select-icon').on('change', 'select', function() {
        $('i[data-preview="icon"]').removeClass();
        if($(this).val()) {
            $('i[data-preview="icon"]').addClass('fa fa-' + $(this).val());
        }
    }).trigger('change');
});

</script>