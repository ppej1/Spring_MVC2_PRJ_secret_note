document.addEventListener('DOMContentLoaded', function () {
	var calendarEl = document.getElementById('checkCalendar1');

	var calendar = new FullCalendar.Calendar(calendarEl, {
		 navLinks: true,
		 navLinkDayClick: function(date, jsEvent) {
				startDate = dateToYYYYMMDD(date)
				alert(startDate)
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 6);
				$('.flipbook').turn("disable", true);
				checklistPage(object.id, startDate);
		  },
		eventLimit: true,
		plugins: ['dayGrid','interaction'],
		defaultView: 'dayGridMonth',
		header: {
			left: 'dayGridMonth,dayGridWeek,dayGridDay',
			center: 'title'
		},
		 
		eventClick: function (info) {
			object = info.event;
			date = new Date(object.start);
			startDate = dateToYYYYMMDD(date)
			
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 6);
			$('.flipbook').turn("disable", true);
			checklistPage(object.id, startDate);
		},
		
		defaultDate: '2019-09-15',
		events: [{
			id: '555',
			title: 'Check List',
			start: '2019-09-01',
			color: 'red'
		},
		{
			id: '444',
			title: 'Check List',
			start: '2019-09-01',
			color: 'blue',
		},
		{
			id: 33,
			title: 'Check List',
			start: '2019-09-02',
			color: 'red'
		}
		
		]
	});
	calendar.render();
});

function dateToYYYYMMDD(date){
    function pad(num) {
        num = num + '';
        return num.length < 2 ? '0' + num : num;
    }
    return date.getFullYear() + '-' + pad(date.getMonth()+1) + '-' + pad(date.getDate());
}





