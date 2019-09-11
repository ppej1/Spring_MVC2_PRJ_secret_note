<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		
		var calendarEl = document.getElementById('checkCalendar1');
		
		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'dayGrid' ],
			defaultView: 'dayGridMonth',
			header : {
				left : 'dayGridMonth,dayGridWeek,dayGridDay',
				center : 'title'
			},
			eventClick : function(info) {
					//$('.flipbook').turn("disable", false);
					$('.flipbook').turn("page", 6);
					//$('.flipbook').turn("disable", true);
			},
			defaultDate : '2019-09-15',
			events : [ {
				title : 'Check List',
				data : 'abcd',
				start : '2019-09-01T12:30:00',
				end : '2019-09-05T15:30:00',
				color : 'red'
			}]
		});
		
		calendar.render();
	});
</script>

<div class="page_content_even">
	<div class="page_title_container">
		<div class="page_title_container_div">
			<h1>CheckListCalendar1</h1>
		</div>
	</div>
	<div class="page_container">
		<div id='checkCalendar1'></div>
	</div>
</div>
