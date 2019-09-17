<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<div class="page_content_even">

	<div class="page_container_full">
		<div class="calendarContainer">
			<div id='checkCalendar1'></div>
		</div>
	</div>
</div>

<script>
	document.addEventListener('DOMContentLoaded', function () {
			var calendarEl = document.getElementById('checkCalendar1');

			var calendar = new FullCalendar.Calendar(calendarEl, {
				eventLimit: true,
				plugins: ['dayGrid'],
				defaultView: 'dayGridMonth',
				header: {
					left: 'dayGridMonth,dayGridWeek,dayGridDay',
					center: 'title'
				},
				eventClick: function (info) {
					object = info.event;
					alert(object.start);
					//$('.flipbook').turn("disable", false);
					//$('.flipbook').turn("page", 6);
					//$('.flipbook').turn("disable", true);
				},
				defaultDate: '2019-09-15',
				events: [{
					title: 'Check List',
					data: 'abcd',
					start: '2019-09-01',
					color: 'red'
				}]
			});
				calendar.render();
		});

</script>