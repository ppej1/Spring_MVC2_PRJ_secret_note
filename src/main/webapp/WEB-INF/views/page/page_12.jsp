<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	document.addEventListener('DOMContentLoaded', function () {
		var calendarEl = document.getElementById('UsageCalendar1');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins: ['dayGrid'],
			header: {
				left: 'dayGridMonth,dayGridWeek,dayGridDay',
				center: 'title'
			},
			eventClick: function (info) {
				var eventObj = info.event;
					
				if (eventObj.id =='use') {
					$('.flipbook').turn("disable", false);
					$('.flipbook').turn("page", 14);
					$('.flipbook').turn("disable", true);
					console.log(eventObj.start);
				} else if(eventObj.id =='disposal'){
					$('.flipbook').turn("disable", false);
					$('.flipbook').turn("page", 16);
					$('.flipbook').turn("disable", true);
				}
			},
			defaultDate: '2019-09-03',
			events: [{
				title: 'USE List1',
				id: 'use',
				start: '2019-09-03T09:30:00',
				end: '2019-09-03T09:30:00',
				color: 'purple'
			}, {
				title: 'USE List2',
				id: 'disposal',
				start: '2019-09-18T09:30:00',
				end: '2019-09-23T18:30:00',
				color: 'gray'
			}]
		});

		calendar.render();
	});
</script>

<div class="page_content_even">
	<!-- odd page  main -->

	<div class="page_container_full">
		<div class="calendarContainer">
			<div id='UsageCalendar1'></div>
		</div>
	</div>
</div>