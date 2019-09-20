<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	document.addEventListener('DOMContentLoaded', function () {
		var calendarEl = document.getElementById('UsageCalendar2');

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
					fusedList();
				} else if(eventObj.id =='disposal'){
					$('.flipbook').turn("disable", false);
					$('.flipbook').turn("page", 16);
					$('.flipbook').turn("disable", true);
					fdisposalList();
				}
			},
			defaultDate: '2019-09-03',
			events: [{
				title: 'JUNK List',
				id: 'use',
				start: '2019-09-02T09:30:00',
				end: '2019-09-04T18:30:00',
				color: 'green'
			}, {
				title: 'JUNK List',
				id: 'disposal',
				start: '2019-09-05T09:30:00',
				end: '2019-09-10T18:30:00',
				color: 'red'
			}]
		});

		calendar.render();
	});
	
	$("#UsageCalendar2 > div.fc-toolbar.fc-header-toolbar > div.fc-left > div > button.fc-dayGridMonth-button.fc-button.fc-button-primary.fc-button-active").trigger("click");
</script>

<div class="page_content_odd">
	<!-- odd page  main -->

	<div class="page_container_full">
		<div class="calendarContainer">
			<div id='UsageCalendar2'>

			</div>
		</div>

	</div>
</div>