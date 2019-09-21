/*page03*/
var jsonEvents = [];
function json(data){
	
	$.each(data, function (index, item) {
		events.push({title:item.ckTitle, id : item.ckSerialNumber, start : item.completes});
		console.log(item);

	});
	jsonEvents = JSON.stringify(events);
	
}
document.addEventListener('DOMContentLoaded', function () {
	events = [];
	
	$.ajax({
		type: 'POST',
		url: 'loadAllCheckList',
		dataType: 'json',
		success: json
	});
	alert(jsonEvents);
	var calendarEl = document.getElementById('checkCalendar1');

	var calendar = new FullCalendar.Calendar(calendarEl,{
	
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
		plugins: ['dayGrid'],
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
		events: events
		
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

/*page04*/

document.addEventListener('DOMContentLoaded', function() { 

	var calendarEl = document.getElementById('checkCalendar2');

	var calendar = new FullCalendar.Calendar(calendarEl, {
		 navLinks: true,
		plugins: ['dayGrid'],
		header : {
			left : 'dayGridMonth,dayGridWeek,dayGridDay',
			center : 'title'
		},
		eventLimit: true,
		defaultView : 'dayGridMonth',
		events :[ {
			"title" : 'Check',
			id : 'abcd',
			start : "2019-09-02T10:30:00",
			color : 'blue'
		}, {
			"title" : 'Check',
			id : 'abcd',
			start : "2019-09-01T12:30:00",
			color : 'yellow'
		},
		
		{
			"title" : 'Check',
			data : 'abcd',
			start : '2019-09-01T12:30:00',
			color : 'blue'
		}
		
		] ,

		eventClick : function(data) {
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 6);
			$('.flipbook').turn("disable", true);
		}
	});

	calendar.render();
});


/*page08*/

document.addEventListener('DOMContentLoaded', function () {
	var calendarEl = document.getElementById('StockCalendar1');

	var calendar = new FullCalendar.Calendar(calendarEl, {
		plugins: ['dayGrid'],
		header: {
			left: 'dayGridMonth,dayGridWeek,dayGridDay',
			center: 'title'
		},
		eventLimit: true,
		eventClick: function (info) {
			var eventObj = info.event;

			if (eventObj.url) {
				alert('Clicked ' + eventObj.title + '.\n' + 'Will open ' +
					eventObj.url + ' in a new tab');

				//window.open(eventObj.url);

				info.jsEvent
			.preventDefault(); // prevents browser from following link in current tab.
			} else {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 10);
				$('.flipbook').turn("disable", true);
			}
		},
		defaultDate: '2019-09-03',
		events: [{
			title: 'Stock List',
			data: 'abcd',
			start: '2019-09-03T09:30:00',
			end: '2019-09-07T18:30:00',
			color: 'purple'
		}]
	});

	calendar.render();
});

/*page09*/
document.addEventListener('DOMContentLoaded', function () {
	var calendarEl = document.getElementById('StockCalendar2');

	var calendar = new FullCalendar.Calendar(calendarEl, {
		plugins: ['dayGrid'],
		header: {
			left: 'dayGridMonth,dayGridWeek,dayGridDay',
			center: 'title'
		},
		eventLimit: true,
		eventClick: function (info) {
			var eventObj = info.event;

			if (eventObj.url) {
				alert('Clicked ' + eventObj.title + '.\n' + 'Will open ' +
					eventObj.url + ' in a new tab');

				//window.open(eventObj.url);

				info.jsEvent
			.preventDefault(); // prevents browser from following link in current tab.
			} else {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 10);
				$('.flipbook').turn("disable", true);
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


/*page12*/
document.addEventListener('DOMContentLoaded', function () {
	var calendarEl = document.getElementById('UsageCalendar1');

	var calendar = new FullCalendar.Calendar(calendarEl, {
		plugins: ['dayGrid'],
		header: {
			left: 'dayGridMonth,dayGridWeek,dayGridDay',
			center: 'title'
		},
		eventLimit: true,
		defaultView : 'dayGridMonth',
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
		eventLimit: true,
		defaultDate: '2019-09-03',
		events: [{
			title: 'USE List1',
			id: 'use',
			start: '2019-09-03T09:30:00',
			end: '2019-09-03T09:30:00',
			color: 'green'
		}, {
			title: 'USE List2',
			id: 'disposal',
			start: '2019-09-18T09:30:00',
			end: '2019-09-23T18:30:00',
			color: 'red'
		}]
	});

	calendar.render();
});





/*page13*/

document.addEventListener('DOMContentLoaded', function () {
	
	
	
	var calendarEl = document.getElementById('UsageCalendar2');

	var calendar = new FullCalendar.Calendar(calendarEl, {
		plugins: ['dayGrid'],
		header: {
			left: 'dayGridMonth,dayGridWeek,dayGridDay',
			center: 'title'
		},
		eventLimit: true,
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
			color: 'green'
		}, {
			title: 'JUNK List',
			id: 'disposal',
			start: '2019-09-05T09:30:00',
			color: 'red'
		}, {
			title: 'JUNK List',
			id: 'disposal',
			start: '2019-09-05T09:30:00',
			color: 'red'
		}, {
			title: 'JUNK List',
			id: 'disposal',
			start: '2019-09-05T09:30:00',
			color: 'red'
		}, {
			title: 'JUNK List',
			id: 'disposal',
			start: '2019-09-05T09:30:00',
			color: 'red'
		}
		
		
		]
	});

	calendar.render();
});
