<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	document.addEventListener('DOMContentLoaded', function () {
		var calendarEl = document.getElementById('StockCalendar2');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins: ['dayGrid'],
			header: {
				left: 'dayGridMonth,dayGridWeek,dayGridDay',
				center: 'title'
			},
			eventClick: function (info) {
				var eventObj = info.event;

				if (eventObj.url) {
					alert('Clicked ' + eventObj.title + '.\n' + 'Will open ' +
						eventObj.url + ' in a new tab');

					//window.open(eventObj.url);

					info.jsEvent
				.preventDefault(); // prevents browser from following link in current tab.
				} else {
					//$('.flipbook').turn("disable", false);
					$('.flipbook').turn("page", 10);
					//$('.flipbook').turn("disable", true);
				}
			},
			defaultDate: '2019-09-18',
			events: [{
				title: 'Stock List',
				data: 'abcd',
				start: '2019-09-18T09:30:00',
				end: '2019-09-23T18:30:00',
				color: 'gray'
			}]
		});

		calendar.render();
	});
</script>

<div class="page_content_odd">
	<!-- odd page  main -->

	<div class="page_container_full">
		<div class="calendarContainer">
			<div id='StockCalendar2'></div>
		</div>
	</div>
</div>