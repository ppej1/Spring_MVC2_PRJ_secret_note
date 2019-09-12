<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('checkCalendar2');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'dayGrid'],
			header : {
				left : 'dayGridMonth,dayGridWeek,dayGridDay',
				center : 'title'
			},
			defaultView : 'dayGridMonth',
			defaultDate : '2019-10-20',
			events : [ {
				title : 'Check',
				data : 'abcd',
				start : '2019-09-02T10:30:00',
				end : '2019-09-12T12:30:00',
				color : 'blue'
			},{
				title : 'Check',
				data : 'abcd',
				start : '2019-09-01T12:30:00',
				end : '2019-09-05T15:30:00',
				color : 'yellow'
			}
			
			],

			eventClick : function(data) {
				//$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 6);
				//$('.flipbook').turn("disable", true);
			}
		});

		calendar.render();
	});
</script>


<div class="page_content_odd">

	<div class="page_container_full">
		<div class="calendarContainer">
			<div id='checkCalendar2'></div>	
		</div>
	</div>
</div>
