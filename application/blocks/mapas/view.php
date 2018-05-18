<?php defined('C5_EXECUTE') or die("Access Denied.");

$c = Page::getCurrentPage();
if ($c->isEditMode()) { ?>
	<div class="ccm-edit-mode-disabled-item" style="width: <?php echo $width; ?>; height: <?php echo $height; ?>">
		<div style="padding: 80px 0px 0px 0px"><?php echo t('Mapas Senatics en modo edición.')?></div>
	</div>
<?php  } else { ?>
	<?php  if( strlen($title)>0){ ?><h3><?php echo $titulo_mapa?></h3><?php  } ?>
	<div id="googleMapCanvas<?php echo $unique_identifier?>" class="googleMapCanvas" style="width: <?php echo $width; ?>; height: <?php echo $height; ?>"></div>
    <!DOCTYPE>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />

<?php  } ?>

<style>
#globo_mapa h5{
    border-bottom: 1px solid #f7f7f7;   
    margin-top:3px !important;
}
</style>

<?php
/*
    Nota - esto va aquí en, porque es la única manera de preservar bloque de almacenamiento en caché para este bloque. No podemos
     Septiembre estos valores a través del controlador
*/
?>

<script type="text/javascript">

    function contenido(nombre, cuerpo){

        return '<div id="globo_mapa">'+                                    
                           '<h5 id="firstHeading" class="firstHeading">' + nombre + '</h5>'+
                           '<div id="globo_descripcion">'+
                             cuerpo + 
                           '</div>'+
                      '</div>';

    }  
    
    function googleMapInit<?php echo $unique_identifier?>() {
        try{
            //var latlng = new google.maps.LatLng(<?php echo $latitude?>, <?php echo $longitude?>);
            var x =<?php echo $items[0]['latitud'] ?>;
            var y = <?php echo $items[0]['longitud'] ?>;
            var mapOptions = {
                zoom: <?php echo $zoom?>,
                center: new google.maps.LatLng(x, y),
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                streetViewControl: false,
                scrollwheel: <?php echo !!$scrollwheel ? "true" : "false"?>,
                mapTypeControl: false
            };
            var map = new google.maps.Map(document.getElementById('googleMapCanvas<?php echo $unique_identifier?>'), mapOptions);

            setGoogleMarkers(map);
            


        

        }catch(e){
            $("#googleMapCanvas<?php echo $unique_identifier?>").replaceWith("<p>Unable to display map: "+e.message+"</p>")}
    }

    var markers = Array();
    var infowindowActivo = false;
    
    function setGoogleMarkers(map) {
                // Definimos los iconos a utilizar con sus medidas
                var icon1 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-1.png", new google.maps.Size(30, 43) );
                var icon2 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-2.png", new google.maps.Size(30, 43) );
                var icon3 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-3.png", new google.maps.Size(30, 43) );
                var icon4 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-4.png", new google.maps.Size(30, 43) );
                var icon5 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-5.png", new google.maps.Size(30, 43) );
                var icon6 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-6.png", new google.maps.Size(30, 43) );
                var icon7 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-7.png", new google.maps.Size(30, 43) );
                var icon8 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-8.png", new google.maps.Size(30, 43) );
                var icon9 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-9.png", new google.maps.Size(30, 43) );
                var icon10 = new google.maps.MarkerImage("<?php echo BASE_URL?>/application/blocks/mapas/images/location-10.png", new google.maps.Size(30, 43) );
                                
                var i = 0;
                <?php
                foreach($items as $item) {
                    ?>
                    var myLatLng = new google.maps.LatLng(<?php echo $item['latitud']?>, <?php echo $item['longitud']?>);
                    if(i==0) {
                        map.setCenter(myLatLng);
                    }
                    markers[i]=new google.maps.Marker({
                                position: myLatLng,
                                map: map,
                                icon: <?php switch($item['icono']) {
                                    case 0: //icono1
                                        echo 'icon1';
                                        break;
                                    case 1: //icono2
                                        echo 'icon2';
                                        break;
                                    case 2: //icono2
                                        echo 'icon3';
                                        break;
                                    case 3: //icono2
                                        echo 'icon4';
                                        break;
                                    case 4: //icono2
                                        echo 'icon5';
                                        break;
                                    case 5: //icono2
                                        echo 'icon6';
                                        break;
                                    case 6: //icono2
                                        echo 'icon7';
                                        break;
                                    case 7: //icono2
                                        echo 'icon8';
                                        break;
                                    case 8: //icono2
                                        echo 'icon9';
                                        break;
                                    case 9: //icono2
                                        echo 'icon10';
                                        break;
                                    default: //otro caso, icono3 (rojo)
                                        echo 'icon3';
                        } ?>, 
                                title: '<?php echo $item['titulo'];?>',
                                animation: google.maps.Animation.DROP
                    });

                    markers[i].infoWindow=new google.maps.InfoWindow({  content: contenido('<?php echo html_entity_decode($item['titulo']); ?>', '<?php echo html_entity_decode($item['descripcion']); ?>')});

                    google.maps.event.addListener(markers[i], 'click', function(){  
                        if(infowindowActivo) infowindowActivo.close();
                            infowindowActivo = this.infoWindow;
                            infowindowActivo.open(map, this);
                        });
                    i++;
                <?php } ?>

                var markerCluster = new MarkerClusterer(map, markers);
           }
    $(function() {
        var t;
        var startWhenVisible = function (){
            if ($("#googleMapCanvas<?php echo $unique_identifier?>").is(":visible")){
                window.clearInterval(t);
                googleMapInit<?php echo $unique_identifier?>();
                return true;
            }
            return false;
        };
        if (!startWhenVisible()){
            t = window.setInterval(function(){startWhenVisible();},100);
        }
    });


</script>
