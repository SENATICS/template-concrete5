
(function ( $ ) {
    $.fn.calendar = function(array, color) {
    	if(color == undefined) {
				$(this).data("color","normal");
		} else {
			$(this).data("color",color);
		}
			$.each(array, function(date,events) {
				var tempdayarray = [];
				$.each(events, function(ev,evdata) {
					var tempeventarray = [];
					tempeventarray["name"] = ev;
					tempeventarray["descripcion"] = ev.descripcion;
					tempeventarray["start"] = evdata.start;
					tempeventarray["end"] = evdata.end;
					tempeventarray["location"] = evdata.location;
					tempdayarray.push(tempeventarray);
				});
				calendarArray[date] = tempdayarray;
			});
        return this;
    }; 
}( jQuery ));


	function calendarScale() {
		$(".calendar").each(function() {
			if($(this).width() < 400 && !$(this).hasClass('small')) {
				$(this).addClass('small');
			} else if($(this).width() > 400 && $(this).hasClass('small')) {
				$(this).removeClass('small');
			}
		})
	}

	function offsetcalendar() {
		var par = $(this).parents('.calendar');
		var cm = parseInt(par.attr('offset'));
		if($(this).data('dir') == "left") {
			calendarSetMonth(par,cm-1);
		} else if($(this).data('dir') == "right") {
			calendarSetMonth(par,cm+1);
		}

	}

	function orderBy(deli,array) {
		var p = array.slice();
		var o = p.length;
		var y,t;
		var temparray = [];
		for(var u=0; u<o;u++) {
			for(var uu=0;uu<p.length;uu++) {
				if(uu==0) {
					t = uu;
					y = p[uu];
				}
				else if(parseInt(p[uu][deli].replace('.','')) < parseInt(y[deli].replace('.',''))) {
					y = p[uu];
					t = uu;
				}
			}
			temparray.push(y);
			p.splice(t,1);
		}
		return temparray;
	}

	function calendarSet() {
		$(".calendar").append('<div class="calendar-month-view"><div class="calendar-month-view-arrow" data-dir="left">&lsaquo;</div><p></p><div class="calendar-month-view-arrow" data-dir="right">&rsaquo;</div></div><div class="letrasDay"></div><div class="calendar-holder"><div class="calendar-grid"></div><div class="calendar-specific"><div class="specific-day"><div class="specific-day-info" i="day"></div><div class="specific-day-info" i="month"></div></div><div class="specific-day-scheme"></div></div></div>');
		$(".calendar").each(function() {
			if($(this).data("color") == undefined) {
				$(this).data("color","normal");
			}
			$(this).find('[data-role=day]').each(function() {
				var tempdayarray = [];
				$(this).find('[data-role=event]').each(function() {
					var tempeventarray = [];
					tempeventarray["name"] = $(this).data("name");
					tempeventarray["descripcion"] = $(this).data("descripcion");
					tempeventarray["start"] = $(this).data("start");
					tempeventarray["end"] = $(this).data("end");
					tempeventarray["location"] = $(this).data("location");
					tempdayarray.push(tempeventarray);
				});
				if(calendarArray[$(this).data('day')] !== undefined) {
					$.each(calendarArray[$(this).data('day')], function(k,v) {
						tempdayarray.push(v)
					});
				} 
				calendarArray[$(this).data('day')] = tempdayarray;
			});
			calendarSetMonth($(this));
		});
		$(".calendar [data-role=day]").remove();
	}
	function activateDay() {
		$(this).parents('.calendar').addClass('spec-day');
		var di = new Date(parseInt($(this).attr('time')));
		var strtime = $(this).attr('strtime');
		var d = new Object();
		d.day = di.getDate();
		d.month = di.getMonth();
		d.events = calendarArray[strtime];
		d.tocalendar = tocalendar;
		d.tocalendar();
	}
	var tocalendar = function() {
		$(".specific-day-info[i=day]").html(this.day);
		$(".specific-day-info[i=month]").html(monthArray[this.month][0]);
		if(this.events !== undefined) {
		var ev = orderBy('start',this.events);
		for(var o = 0; o<ev.length;o++) {
			$(".specific-day-scheme").append('<div class="specific-day-scheme-event"><p style="font-size:21px; color:#fff !important; font-weight:bold">'+ev[o]['name']+'</p><p style="color:#fff !important; font-size:14px">'+ev[o]['descripcion']+'</p><p data-role="dur"><b>Horario:</b> '+ev[o]['start']+' - '+ev[o]['end']+'</p><p data-role="loc"><b>Lugar:</b> '+ev[o]['location']+'</p></div>');
		}
		}
	}
	function activatecalendar() {
		$(this).parents('.calendar').removeClass('spec-day');
		$(".specific-day-scheme").html('');
	}
	function calendarSetMonth(ele,offset) {
		ele.find(".calendar-grid").html('');
		ele.find(".letrasDay").html('');
		var d = new Date();
		var c = new Date();
		var e = new Date();
		var p = d;
		if(offset !== undefined) {
			d = monthChange(p,offset);
			e = monthChange(p,offset);
			ele.attr('offset', offset);
		} else {
			ele.attr('offset', 0);
		}
		ele.find(".calendar-month-view p").text(monthArray[d.getMonth()][1]+' '+d.getFullYear());
			d.setDate(1);
			if(dayArray[d.getDay()] == 1) {
				d.setDate(d.getDate()-7);
			} else {
				d.setDate(d.getDate()-dayArray[d.getDay()]+1);
			}
			
			for(var i=0;i<7;i++) {
				var dias_Semana = $('<div>'+letrasArray[i]+'</div>');
				ele.find(".letrasDay").append(dias_Semana);
			}
			
			for(var i=0;i<42;i++) {
				d.setDate(d.getDate()+i);
				var cal_day = $('<div class="calendar-day"><div class="date-holder">'+d.getDate()+'</div></div>');
				if(d.getMonth() !== e.getMonth()) {
					cal_day.addClass('other-month');
				}
				if(d.getTime() == c.getTime()) {
					cal_day.addClass('this-day');
				}
				var strtime = d.getFullYear()+''+(d.getMonth()+1)+''+d.getDate();
				if(calendarArray[strtime] !== undefined) {
					cal_day.addClass('have-events');
				}
				var cal_day_eventholder = $('<div class="event-notif-holder"></div>');
				if(calendarArray[strtime] != undefined) {
					for(var u=0;u<3 && u<calendarArray[strtime].length;u++) {
						cal_day_eventholder.append('<div class="event-notif"></div>')
					}
				}
				cal_day.attr('strtime',strtime);
				cal_day.attr('time',d.getTime());
				cal_day.prepend(cal_day_eventholder);

				ele.find(".calendar-grid").append(cal_day);
				d.setDate(d.getDate()-i);
			}
	}
	
	function monthChange(d,o) {
		var dim = [31,28,31,30,31,30,31,31,30,31,30,31];
		var day = d.getDate();
		var month = o !== undefined ? d.getMonth()+o : d.getMonth();
		var year = d.getFullYear();
		var hours = d.getHours();
		var minutes = d.getMinutes();
		var seconds = d.getSeconds();
		while(month>11) {
			month= month-12;
			year++;
		}
		while(month<0) {
			month= month+12;
			year--;
		}
		if(dim[month] < day) {
			day = dim[month];
		}
		return new Date(year,month,day,hours,minutes,seconds);
	}