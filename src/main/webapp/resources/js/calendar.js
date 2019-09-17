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
			console.log("a");
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 6);
			$('.flipbook').turn("disable", true);
			checklistPage(object.id);
		},
		defaultDate: '2019-09-15',
		events: [{
			id: '555',
			title: 'Check List',
			start: '2019-09-01',
			color: 'red'
		},
		{
			title: 'Check List',
			start: '2019-09-01',
			color: 'blue',
		},
		{
			title: 'Check List',
			start: '2019-09-02',
			color: 'red'
		}
		
		]
	});
	calendar.render();
});

function checklistPage(){
	console.log("b");
	console.log(object.id);
}