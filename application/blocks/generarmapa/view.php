<?php
defined('C5_EXECUTE') or die("Access Denied.");


if (Page::getCurrentPage()->isEditMode()) { ?>

	<div class="ccm-edit-mode-disabled-item">
		<div style="padding:8px 0px;"><?php echo t('Mapa en edición'); ?></div>
	</div>
	
<?php } else { 
	?>
<h1><?php echo $titulo?></h1>
<div id="capa-mapa<?php echo $bID?>" style="width:100%; height:500px"></div>			

<script type="text/javascript">

				function contenido(nombre, cuerpo){

					return '<div id="globo_mapa">'+									   
								       '<h4 id="firstHeading" class="firstHeading">' + nombre + '</h4>'+
								       '<div id="globo_descripcion">'+
									     cuerpo + 
								       '</div>'+
								  '</div>';

				}

				function inicializaGoogleMaps<?php echo $bID?>() {
					try {
						// Coordenadas del centro de nuestro recuadro principal
						var x =-23.86553;
						var y = -57.720231;
						var mapOptions = {
							zoom:<?php echo $zoom?>, center: new google.maps.LatLng(x, y),
							mapTypeId: google.maps.MapTypeId.ROADMAP /*, mapTypeControl: false*/
						};
						var map = new google.maps.Map(document.getElementById("capa-mapa<?php echo $bID?>"), mapOptions);
						setGoogleMarkers(map);
					}
					catch(e) {
						console.log("Error de mapa: " + e.message);
					}
				}

				var markers = Array();
				var infowindowActivo = false;
				function setGoogleMarkers(map) {
				    // Definimos los iconos a utilizar con sus medidas
				    var icon1 = new google.maps.MarkerImage("/application/blocks/generarmapa/images/map-green.png", new google.maps.Size(20, 30) );
				    var icon2 = new google.maps.MarkerImage("/application/blocks/generarmapa/images/map-orange.png", new google.maps.Size(20, 30) );
				    var icon3 = new google.maps.MarkerImage("/application/blocks/generarmapa/images/map-red.png", new google.maps.Size(20, 30) );
				    var i = 0;
                    <?php
                    foreach($items as $item) {
                        ?>
                        var myLatLng = new google.maps.LatLng(<?php echo $item['x']?>, <?php echo $item['y']?>);
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
										default: //otro caso, icono3 (rojo)
											echo 'icon3';
							} ?>, 
                                    title: '<?php echo $item['nombre']?>'
                        });

                        markers[i].infoWindow=new google.maps.InfoWindow({  content: contenido('<?php echo $item['nombre']; ?>', '<?php echo $item['cuerpo']; ?>')});

                        google.maps.event.addListener(markers[i], 'click', function(){  
                            if(infowindowActivo) infowindowActivo.close();
                                infowindowActivo = this.infoWindow;
                                infowindowActivo.open(map, this);
                            });
						i++;
                    <?php } ?>
	           }
               jQuery(function() {
				var t;
				var startWhenVisible = function (){
				if ($("#capa-mapa<?php echo $bID?>").is(":visible")){
					window.clearInterval(t);
					inicializaGoogleMaps<?php echo $bID?>();
					return true;
				}
				return false;
				};
				if (!startWhenVisible()){
					t = window.setInterval(function(){startWhenVisible();},100);
				}
			});
	</script>
<?php } ?>
