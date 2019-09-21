<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('checkCalendar1');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'dayGrid' ],
			header : {
				left : 'dayGridMonth,dayGridWeek,dayGridDay',
				center : 'title'
			},
			defaultView : 'dayGridMonth',
			events : [ {
				title : 'Check',
				data : 'abcd',
				start : '2019-09-02T10:30:00',
				end : '2019-09-12T12:30:00',
				color : 'blue'
			}, {
				title : 'Check',
				data : 'abcd',
				start : '2019-09-01T12:30:00',
				end : '2019-09-05T15:30:00',
				color : 'yellow'
			}],

			eventClick : function(data) {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 6);
				$('.flipbook').turn("disable", true);
			}
		});

		calendar.render();
	});
	$("#checkCalendar1 > div.fc-toolbar.fc-header-toolbar > div.fc-left > div > button.fc-dayGridMonth-button.fc-button.fc-button-primary.fc-button-active").trigger("click");
</script>

<div class="page_content_even">

	<div class="page_container_full">
		<div class="calendarContainer">
			<div id='checkCalendar1'></div>
		</div>
	</div>
</div>