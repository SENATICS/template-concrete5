<?php defined('C5_EXECUTE') or die("Access Denied.");
$c = Page::getCurrentPage();

//Alineación del Texto dentro del Boton
if($alineacion_fuente == 0) {
    $alineacion_fuente = 'center';
}else{
    if($alineacion_fuente == 1) {
        $alineacion_fuente = 'left';
    }else{
        if($alineacion_fuente == 2) {
            $alineacion_fuente = 'right';
        }
    } 
}


//Alineación del Boton
if($alineacion_boton == 0) {
    $alineacion_boton = 'center';
}else{
    if($alineacion_boton == 1) {
        $alineacion_boton = 'left';
    }else{
        if($alineacion_boton == 2) {
            $alineacion_boton = 'right';
        }
    } 
}

//Alineación del Iconoo
if($alineacion_icono == 0) {
    $alineacion_icono = 'left';
}else{
    if($alineacion_icono == 1) {
        $alineacion_icono = 'right';
    }else{
        if($alineacion_icono == 2) {
            $alineacion_icono = 'top';
        }else{
            if($alineacion_icono == 3) {
                $alineacion_icono = 'bottom';
            }   
        }
    } 
}

//Target
if($target == 0) {
    $target = '_self';
}else{
    if($target == 1) {
        $target = '_blank';
    } 
}

//Width
if($ancho == "") {
    $ancho = 'auto';
    $ancho_formato = "";
}
print'
<style>
    .enlace'.$bID.' {
        width:'.$ancho.''.$ancho_formato.'; 
        padding:'.$padding.'px; 
        box-sizing:border-box; 
        text-align:'.$alineacion_fuente.'; 
        display:inline-block; 
        font-size:'.$tamanho_fuente.'px; 
        background:'.$color_fondo.'; 
        color:'.$color_fuente.' !important;
        transition:all .4s; 
    }
    .enlace'.$bID.':hover {
        background:'.$color_fondo_hover.'; 
        color:'.$color_fuente_hover.' !important; 
        transition:all .4s; 
    }
</style>';


if ($linkURL != "none") {
        print '<div style="text-align:'.$alineacion_boton.'">';
        if ($fID != 0) {
            print '<a href="'.View::url('/download_file', $controller->getFileID(),$cID).'" target="'.$target.'" class="enlace'.$bID.'" style="cursor:pointer !important;">'; 
        }else{
            print '<a href="'.$linkURL.'" target="'.$target.'" class="enlace'.$bID.'" style="cursor:pointer !important;">';  
        }
        if ($alineacion_icono == "top") { print '<i class="fa fa-'.$icon.'"></i> <br>'; }
        if ($alineacion_icono == "left") { print '<i class="fa fa-'.$icon.'"></i> '; }
            print $texto;
        if ($alineacion_icono == "right") { print ' <i class="fa fa-'.$icon.'"></i>'; }
        if ($alineacion_icono == "bottom") { print '<br><i class="fa fa-'.$icon.'"></i>'; }
        print '</a>';
        print '</div>';
} else {
        print '<div style="text-align:'.$alineacion_boton.'">';
        print '<a style="width:'.$ancho.''.$ancho_formato.'; padding:'.$padding.'px; box-sizing:border-box; text-align:'.$alineacion_fuente.'; display:inline-block; font-size:'.$tamanho_fuente.'px; background:'.$color_fondo.'; color:'.$color_fuente.' !important; transition:all .4s; cursor:default !important; opacity:.6;">';
        if ($alineacion_icono == "top") { print '<i class="fa fa-'.$icon.'"></i> <br>'; }
        if ($alineacion_icono == "left") { print '<i class="fa fa-'.$icon.'"></i> '; }
            print $texto;
        if ($alineacion_icono == "right") { print ' <i class="fa fa-'.$icon.'"></i> '; }
        if ($alineacion_icono == "bottom") { print '<br><i class="fa fa-'.$icon.'"></i>'; }
        print '</a>';
        print '</div>';
} ?>
