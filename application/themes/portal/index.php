<!DOCTYPE html><html lang="es">
<head>
	<?php Loader::element('header_required'); ?>
	<!--
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="Portal único de informaciones y servicios orientados al ciudadano">
    <meta name="author" content="SENATICs">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> -->
<!--<title>.:: Portal Paraguay ::. Portal Único de Gobierno - Encontrá todas las informaciones y servicios que el Estado Paraguayo tiene para ofrecerte - Portal Paraguay</title>-->
	
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/base.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/estilo.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/960.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/1000.css" media="only screen and (min-width: 768px) and (max-width: 1000px)" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/767.css" media="only screen and (min-width: 480px) and (max-width: 767px)" />
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath(); ?>/css/dispositivos/479.css" media="only screen and (min-width: 200px) and (max-width: 479px)" />
    <link href='http://fonts.googleapis.com/css?family=Merriweather+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
	
</head>
<body>

<div class="<?php echo $c->getPageWrapperClass(); ?>">
<div class="body_detallado">
	<div class="controlador">
    <div class="controlador2">
		<div class="cabecera_general">
            <div class="Buscador">
                <form action="" method="post" class="bases_contenidos">
                    <input type="text" value="" class="campo"/>
                    <input type="submit" value="" class="boton">
                </form>
            </div>
        </div>
        <!-- Cabecera -->
        <header id="header">
            <div class="contenedor_portal">
            	
                <div class="columna">
                    
                    <div class="logo">
                        <a href="index.html"><img src="<?php echo $view->getThemePath(); ?>/img/company_logo.png" alt="Portal Paraguay" /></a>
                    </div>
                    <div class="logo2">
                        <img src="<?php echo $view->getThemePath(); ?>/img/gobierno.png" alt="Gobierno Nacional Paraguay" />
                    </div>
                    <!-- Navegacion -->
                    <nav id="nav">
                        <ul class="Menu_general">
                            <li class="seleccion"><a href="index.html">Portada</a></li>
                            <li><a href="#">Turismo</a></li>
                            <li><a href="#">Estadísticas</a></li>
                            <li><a href="#">Inversión</a></li>
                            <li><a href="#">Contacto Ciudadano</a></li>
                            <li><a href="#">Becas</a></li>
                            <li><a href="#">Datos Abiertos</a></li>
                            <li><a href="#">Sobre el Portal</a></li>
                        </ul>
                    </nav>
                    <!-- /Navegacion -->
                </div>
            </div>
        </header>
        <!-- /Cabecera -->
        
        <!-- Informacion -->
        <section id="central">
            <div class="contenedor_portal">
                <div class="Principal-central Sombra">
                	<div class="al_centro">
                        <div class="buscador_principal">
                            <div class="icono-buscador"></div>
                            <input name="" type="text" class="buscador_input">
                            <a href="#"><div class="boton_buscar">Buscar</div></a>
                        </div>
                    </div>
                    <div class="al_centro">
						<?php
							$a = new Area('Busca');
							$a->display($c); ?>
                    	<!--BUSCA ENTRE MÁS DE <b>800</b> SERVICIOS OFRECIDOS POR EL ESTADO-->
                    </div>
                    <div class="al_centro_infos_numeros">
                    	<div class="base_infos">
                        	<div class="Numeros_infos">12</div>
                            <div class="sub-titulo">Ministerios</div>
                        </div>
                        <div class="base_infos">
                        	<div class="Numeros_infos">19</div>
                            <div class="sub-titulo">Secretarias del Estado</div>
                        </div>
                        <div class="base_infos">
                        	<div class="Numeros_infos">20</div>
                            <div class="sub-titulo">Entidades desentralizadas</div>
                        </div>
                        <div class="base_infos">
                        	<div class="Numeros_infos">865</div>
                            <div class="sub-titulo">Servicios Publicos</div>
                        </div>
                    </div>
                    <div class="al_centro_mas_infos">
                    	<a href="#">
                        <div class="boton_mas_infos">
                            <div class="icono_mas_infos"><img src="<?php echo $view->getThemePath(); ?>/img/instituciones-2.png" width="30px" height="30px"/></div>
                           	<div class="titulo_mas_infos">INSTITUCIONES</div>
                        </div></a>
                        <a href="#">
                        <div class="boton_mas_infos">
                            <div class="icono_mas_infos"><img src="<?php echo $view->getThemePath(); ?>/img/tramites-2.png" width="30px" height="30px"/></div>
                           	<div class="titulo_mas_infos">TRÁMITES</div>
                        </div></a>
                        <a href="#">
                        <div class="boton_mas_infos">
                            <div class="icono_mas_infos"><img src="<?php echo $view->getThemePath(); ?>/img/ayuda-2.png" width="30px" height="30px"/></div>
                           	<div class="titulo_mas_infos">AYUDA</div>
                        </div></a>
                    </div>
                </div>
                <br />
                <!-- Servicios -->
                <div class="columna">
                    <h5 class="linea"><span>Tipos de servicios y trámites ofrecidos por el Estado Paraguayo</span></h5>
                    <div class="contenedor_portal">
                    
                    	<a href="#"><div class="columna-uno-tres">
                            <div class="boton_servicios">
                            <div class="icono_serv"><img src="<?php echo $view->getThemePath(); ?>/img/temas 3.png" width="50px" height="50px"/></div>
                            	<div class="titulo">Servicios por</div>
                                <div class="sub-titulo">Temas</div>
                            </div>
                      </div></a>                        <a href="#"><div class="columna-uno-tres">
                            <div class="boton_servicios">
                            	<div class="icono_serv"><img src="<?php echo $view->getThemePath(); ?>/img/ciudadano 3.png" width="50px" height="50px"/></div>
                            	<div class="titulo">Servicios por</div>
                                <div class="sub-titulo">Género</div>
                            </div>
                        </div></a>
                        <a href="#"><div class="columna-uno-tres">
                            <div class="boton_servicios">      <div class="icono_serv"><img src="<?php echo $view->getThemePath(); ?>/img/etapas de vida 3.png" width="50px" height="50px"/></div>
                            	<div class="titulo">Servicios por</div>
                                <div class="sub-titulo">Ciclo de vida</div>
                            </div>
                        </div></a>
                    <br />
                    </div>
                </div> 
            </div>
        </section>
        <!-- / Informacion -->
        
        <!-- Contenido -->
        <section id="Contenido">
            <div class="contenedor_portal">
            	<!--Laterar infos -->
                <div class="columna-uno-tres">
                	<div class="paneles">
                    	<h5 class="linea"><span>Estadistica de servicios catalogados</span></h5>
                        <a href="#"><div class="conocemas">
                            Últimos registrados
                        </div></a>
                        <a href="#"><div class="conocemas">
                            Servicios más consultados
                        </div></a>
                        <a href="#"><div class="conocemas">
                            Instituciones más consultadas
                        </div></a>
                    </div>
                    
                    <div class="paneles">
                    	<h5 class="linea"><span>Campañas del Estado</span></h5>
                        <img src="<?php echo $view->getThemePath(); ?>/img/banner/ConectateSeguro_Paraguay.jpg" width="100%" height="auto" class="bases_contenidos"/>
                        <hr>
                        <img src="<?php echo $view->getThemePath(); ?>/img/banner/portal.JPG" width="100%" height="auto" class="bases_contenidos"/>
                        <hr>
                        <div class="bases_contenidos">
                        	<h3 style="background-color:#EEE; padding:10px;">RECLAMÁ AQUI</h3>
                            <a href="#" class="boton_defe">Defensa al Consumidor</a>
                            <p style="margin-top:10px">Un servicio del MIC</p>
                        </div>
                    </div>
                    
                    <div class="paneles">
                    	<h5 class="linea"><span>Recursos Gratuitos</span></h5>
                        <div class="bases_contenidos">
                            <img src="<?php echo $view->getThemePath(); ?>/img/banner/Guia_web.jpg" width="100%" height="auto"/>
                            <a href="#" class="boton_defe">Guía Estándar para sitios Web</a>
                        </div>
                    </div>
                    
                    <div class="paneles">
                    	<h5 class="linea"><span>Buscanos en Facebook.</span></h5>
                    </div>
                </div>
                
                <!-- Contenido Principal -->
                <div class="Principal-contenido">
                
                    <!-- Terminos claves -->
                    <div class="columna-uno-tres">
                    	<h5 class="linea"><span>Servicios por términos claves</span></h5>
                        <div class="solo_base margen_no">
                        	<a href="#">acceso a la información (7)</a>
                            <a href="#">agentes maritimos (5)</a>
                            <a href="#">animal (10)</a>
                            <a href="#">antecedentes policiales (5)</a>
                            <a href="#">apicultura (3)</a>
                            <a href="#">aprobación (12)</a>
                            <a href="#">artesanos (7)</a>
                            <a href="#">asistencia técnica (6)</a>
                            <a href="#">autenticación (4)</a>
                            <a href="#">autorización (20)</a>
                            <a href="#">ayuda (3)</a>
                            <a href="#">beneficios (10)</a>
                            <a href="#">buques (3)</a>
                            <a href="#">capacitación (6)</a>
                            <a href="#">carne (4)</a>
                            <a href="#">casa (12)</a>
                            <a href="#">certificación (60)</a>
                            <a href="#">combustible líquido (4)</a>
                            <a href="#">combustibles (8)</a>
                            <a href="#">comercio (16)</a>
                            <a href="#">compra (4)</a>
                            <a href="#">comunicación (12)</a>
                            <a href="#">constancias (13)</a>
                            <a href="#">consulta (8)</a>
                            <a href="#">cooperativa (9)</a>
                            <a href="#">denuncia (10)</a>
                            <a href="#">documentación (25)</a>
                            <a href="#">drogas (3)</a>
                            <a href="#">educacion (7)</a>
                            <a href="#">empresa (17)</a>
                            <a href="#">empresa unipersonal (3)</a>
                            <a href="#">expediente (6)</a>
                            <a href="#">exportación (31)</a>
                            <a href="#">extintores (5)</a>
                            <a href="#">extranjeros (27)</a>
                            <a href="#">familia (3)</a>
                            <a href="#">forestal (9)</a>
                            <a href="#">funcionarios (5)</a>
                            <a href="#">gas licuado de petróleo (10)</a>
                            <a href="#">habilitación (31)</a>
                            <a href="#">hábitat (4)</a>
                            <a href="#">importación (44)</a>
                            <a href="#">industria (12)</a>
                            <a href="#">inmuebles (7)</a>
                            <a href="#">inscripcion (22)</a>
                            <a href="#">ips (3)</a>
                            <a href="#">jubilación (10)</a>
                            <a href="#">jubilados (8)</a>
                            <a href="#">judiciales (3)</a>
                            <a href="#">jurídica (4)</a>
                            <a href="#">justicia (5)</a>
                            <a href="#">licencia (14)</a>
                            <a href="#">maquila (6)</a>
                            <a href="#">matrimonio (4)</a>
                            <a href="#">medicamentos (3)</a>
                            <a href="#">medición (4)</a>
                            <a href="#">medio ambiente (3)</a>
                            <a href="#">nacionalidad (4)</a>
                            <a href="#">pasaporte (6)</a>
                            <a href="#">pensión (21)</a>
                            <a href="#">permisos (6)</a>
                            <a href="#">productos agrícolas (6)</a>
                            <a href="#">pueblos originarios (15)</a>
                            <a href="#">reclamos (6)</a>
                            <a href="#">registro (44)</a>
                            <a href="#">repatriación (7)</a>
                            <a href="#">salud (11)</a>
                            <a href="#">servicios (819)</a>
                            <a href="#">solicitud (11)</a>
                            <a href="#">terreno (3)</a>
                            <a href="#">trabajo y empleo (24)</a>
                            <a href="#">tramitación (8)</a>
                            <a href="#">transporte (11)</a>
                            <a href="#">trámites (29)</a>
                            <a href="#">turismo (4)</a>
                            <a href="#">vehículos (7)</a>
                            <a href="#">verificar (5)</a>
                            <a href="#">viajes (3)</a>
                            <a href="#">vivienda (6)</a>
                            <a href="#">víctimas (3)</a>
                        </div>
                        
                    </div>
                    <!-- /Terminos Claves -->
                    
                    <!-- Info en Linea -->
                	<div class="columna-uno-tres">
                    	<h5 class="linea"><span>Información en Linea</span></h5>
                        <div class="solo_base">
                        	<a href="#"><img src="<?php echo $view->getThemePath(); ?>/img/banner/accede-en-linea.jpg" style="width:100%" height="auto" class="bases_contenidos" /></a>
                        </div>
                    </div>
                    <!-- /Info en Linea -->
                    
                    <!-- Sondeo -->
                    <div class="columna-dos-tres">
                    	<h5 class="linea">
                        	<span>Sondeo</span>
                        </h5>
                        <h6 class="normal"><a href="#">Obtención de documentos en linea</a></h6>
                        <h4 class="normal"><a href="#">¿Cuál de estos documentos te gustaría tramitarlo a través de internet?</a></h4>
                        <table width="100%" border="0" class="tabla">
                          <tr>
                            <th scope="col">%</th>
                            <th scope="col">Votos</th>
                            <th scope="col">Opc.</th>
                            <th scope="col">Titulo</th>
                          </tr>
                          <tr>
                            <td>60%</td>
                            <td>&nbsp;</td>
                            <td>a.</td>
                            <td>Certificado de defunción</td>
                          </tr>
                          <tr>
                            <td>9%</td>
                            <td>&nbsp;</td>
                            <td>b.</td>
                            <td>Certificado de Matrimonio</td>
                          </tr>
                          <tr>
                            <td>7%</td>
                            <td>&nbsp;</td>
                            <td>c.</td>
                            <td>Certificado de Nacimiento</td>
                          </tr>
                          <tr>
                            <td>8%</td>
                            <td>&nbsp;</td>
                            <td>d.</td>
                            <td>Certificado de Cédula</td>
                          </tr>
                          <tr>
                            <td>4%</td>
                            <td>&nbsp;</td>
                            <td>e.</td>
                            <td>Certificado de Estudios</td>
                          </tr>
                          <tr>
                            <td>8%</td>
                            <td>&nbsp;</td>
                            <td>f.</td>
                            <td>Certificado de Policiales</td>
                          </tr>
                          <tr>
                            <td>2%</td>
                            <td>&nbsp;</td>
                            <td>g.</td>
                            <td>Certificado de Otros (Completa el formulario de abajo)</td>
                          </tr>
                        </table>
                    </div>
                    <!-- /Sondeo -->
                    
                    <!-- Otros Tramites -->
                    <div class="columna-dos-tres">
                    	<h5 class="linea">
                        	<span>Otros Trámites</span>
                        </h5>
                        <div class="ancho" style="color:#333">
                            <p>Si especificaste "Otros", completa el siguiente formulario indicando el trámite de tu interés.</p>
                            <hr>
                            <div class="formulario">
                                Nombre del tramite
                                <input name="nombre" type="text" style="width:100%" class="campo_text">
                                Institución Involucrada en ofrecerla
                                <input name="nombre" type="text" style="width:100%" class="campo_text">
                                Tu Nombre y apellido (opcional)
                                <input name="nombre" type="text" style="width:100%" class="campo_text">
                                Tu correo electónico (opcional)
                                <input name="nombre" type="text" style="width:100%" class="campo_text">
                                <input name="enviar" type="submit">
                                <div class="info">
                            	Si el trámite o documento que te gustaría gestionar en linea, no se encuentra en las opciones anteriores, completa el formulario de abajo o escríbenos un correo electrónico a <a href="#">consultas@paraguay.gov.py.</a>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Otros Tramites -->
                    
                    <!-- conoce mas -->
                	<div class="columna-dos-tres">
                    	<div class="solo_base">
                        	<h5 class="linea"><span>Conoce más sobre</span></h5>
                            <div class="solo_base margen_no">
                                <a href="#"><div class="conocemas">
                                    Infocentros Comunitarios
                                </div></a>
                                <a href="#"><div class="conocemas">
                                    Paraguay Investment Opportunities - Invierta en Paraguay
                                </div></a>
                                <a href="#"><div class="conocemas">
                                    Visita Paraguay - Portal Turístico
                                </div></a>
                                <a href="#"><div class="conocemas">
                                    Paraguay en Fotos
                                </div></a>
                            </div>
                        </div>
                        
                        <div class="solo_base margen_no">
                        	<h5 class="linea"><span>Lo mejor</span></h5>
                            <div class="solo_base margen_no">
                                <h6 class="normal">Trabajamos para brindarle lo mejor en información del estado</h6>
                                <p>¿La información disponible en el portal es útil para usted?</p>
                                <p>¿Se siente cómodo con el formato de presentación y facilidad de uso del portal?</p>
                                <p>¿Necesita información con mayor detalle?</p>
                                <p>¿Tiene alguna recomendación?</p>
                                <p>Tome contacto con nosotros para realizar sus consultas, sugerencias y reclamos. Con mucho gusto lo atenderemos a través de los siguientes medios:</p>
                                <ul>
                                    <li>Llámenos a los teléfonos: 201-014 / 201-813</li>
                                    <li>Genere una consulta electrónica utilizando el formulario de Contacto Ciudadano</li>
                                    <li>Escríbanos un correo electrónico a consultas@paraguay.gov.py, o</li>
                                    <li>Síganos y comuníquese a través de las redes sociales.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /lo mejor -->
                </div>
                <!-- /Contenido Principal -->
                
                <!-- /Laterarl Infros -->
                <div style="float:right"><p>Versión del portal: v.2.2 - Última actualización: 27 de agosto de 2014</p></div>
                <div class="linea"></div>
            </div>    
        </section>
        <!-- / Contenidos -->
        
        <!-- Pie de pagina -->
        <footer id="footer" style="background:#eeeeee">
            <div class="contenedor_portal">
            	<div class="columna-uno-tres">
                    <h5 class="linea"><span>Acerca de Portal Paraguay</span></h5>
                    <a href="#">¿Qué es Portal Paraguay?</a><br />
                    <a href="#">Instituciones incorporadas</a><br />
                    <a href="#">Políticas de privacidad</a>
                </div>
                <div class="columna-uno-tres">
                    <h5 class="linea"><span>Ayuda</span></h5>
                    <a href="#">Preguntas Frecuentes</a><br />
                    <a href="#">Consultas y Dudas</a>
                </div>
                <div class="columna-uno-tres">
                    <h5 class="linea"><span>Estructura del Portal</span></h5>
                    <a href="#">Mapa del Sitio</a><br />
                    <a href="#">Infocentros</a><br />
                    <a href="#">Paraguay en Fotos</a>
                </div>
            </div>
        </footer>
        
        <footer id="footer" style="background:#465f6e;">
            <div class="contenedor_portal">
            	<div class="logo"><img src="<?php echo $view->getThemePath(); ?>/img/Logo-de-la-SENATICS-en-alfacolor.png" width="250" height="49"></div>
              	<div class="detalles">
                	Portal Único de Gobierno<br />
                    República del Paraguay<br />
                    Portal construido y mantenido por la SENATICs<br />
                    2014 Secretaría Nacional de Tecnologías de la Información y Comunicación<br />
                	<img src="<?php echo $view->getThemePath(); ?>/img/80x15.png" width="80" height="15"> 
                </div>
            </div>
        </footer>
        <!-- / Pie de pagima -->
    </div>
	</div>
</div>
<!-- / Fin web -->

<!-- SCRIPTS -->
<
<script type="text/javascript" src="<?php echo $view->getThemePath(); ?>/js/jquery.js"></script> 

</div>
<?php Loader::element('footer_required'); ?>
</body>
</html>