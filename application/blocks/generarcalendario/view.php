<?php
defined('C5_EXECUTE') or die("Access Denied.");


if (Page::getCurrentPage()->isEditMode()) { ?>

	<div class="ccm-edit-mode-disabled-item">
		<div style="padding:8px 0px;"><?php echo t('Calendario en edición'); ?></div>
	</div>
	
<?php } else{ ?>

	<div class="calendar" data-color="normal">
			<?php foreach($items as $item) { ?>
            <div data-role="day" data-day="<?php 
				$fechaAnho = substr($item['fecha'], 0, 4);
				$fechaMes = substr($item['fecha'], 4, 2);
				$fechaDia = substr($item['fecha'], 6, 2);
				$fechaMes = strval(intval($fechaMes));
				$fechaDia = strval(intval($fechaDia));
				$fechaFormat = $fechaAnho . $fechaMes . $fechaDia;
				echo $fechaFormat; 
            ?>">
                <div data-role="event" data-name="<?php echo $item['titulo'] ?>" data-descripcion="<?php echo $item['descripcion'] ?>" data-start="<?php echo $item['horaInicio']; ?>" data-end="<?php echo $item['horaFin']; ?>" data-location="<?php echo $item['lugar']; ?>"></div>
			</div>
			<?php } ?>
	</div>
	<script>
	var yy;
	var calendarArray =[];
	var monthOffset = [6,7,8,9,10,11,0,1,2,3,4,5];
	var monthArray = [["ENE","Enero"],["FEB","Febrero"],["MAR","Marzo"],["ABR","Abril"],["MAY","Mayo"],["JUN","Junio"],["JUL","Julio"],["AGO","Agosto"],["SEP","Septiembre"],["OCT","Octubre"],["NOV","Noviembre"],["DIC","Diciembre"]];
	var letrasArray = ["Lu","Ma","Mi","Ju","Vi","Sa","Do"];
	var dayArray = ["7","1","2","3","4","5","6"];
	$(document).ready(function() {
		$(document).on('click','.calendar-day.have-events',activateDay);
		$(document).on('click','.specific-day',activatecalendar);
		$(document).on('click','.calendar-month-view-arrow',offsetcalendar);
		$(window).resize(calendarScale);
		calendarSet();
		calendarScale();
		});
	</script>
	
<?php } ?>
