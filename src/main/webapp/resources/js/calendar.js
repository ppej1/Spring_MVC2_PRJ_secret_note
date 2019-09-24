var today = new Date();
var yyyy = today.getFullYear();
var mm = today.getMonth() + 1;
var dd = today.getDate();
function dateToYYYYMMDD(date) {
	function pad(num) {
		num = num + '';
		return num.length < 2 ? '0' + num : num;
	}
	return date.getFullYear() + '-' + pad(date.getMonth() + 1) + '-' + pad(date.getDate());
}
/*page 04*/
function resetPage(){
	tag = "";
	$('#checkCalendar1').html(tag);
	$('#checkCalendar2').html(tag);
	$('#StockCalendar1').html(tag);
	$('#StockCalendar2').html(tag);
	$('#UsageCalendar1').html(tag);
	$('#UsageCalendar2').html(tag);
}
function calendarPage04(){
	

	$('#checkCalendar1').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: yyyy + '-' + mm + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 6);
			$('.flipbook').turn("disable", true);
			checklistPage(startDate);
		},
		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 6);
			$('.flipbook').turn("disable", true);
			checklistPage(calEvent.id, startDate);
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'POST',
				url: 'loadAllCheckList',
				dataType: 'json',
				success: function (data) {
					var events = [];
					$.each(data, function (index, item) {
						events.push({
							title: item.ckTitle,
							id: item.ckSerialNumber,
							start: item.completes
						});
					});
					console.log(events);
					callback(events);
				}
			});
		}
	});
}


/*page 05*/
function calendarPage05() {

	$('#checkCalendar2').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: yyyy + '-' + (mm+1) + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 6);
			$('.flipbook').turn("disable", true);
			checklistPage(startDate);
		},
		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 6);
			$('.flipbook').turn("disable", true);
			checklistPage(calEvent.id, startDate);
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'POST',
				url: 'loadAllCheckList',
				dataType: 'json',
				success: function (data) {
					var events = [];
					$.each(data, function (index, item) {
						events.push({
							title: item.ckTitle,
							id: item.ckSerialNumber,
							start: item.completes
						});
					});
					console.log(events);
					callback(events);
				}
			});
		}
	});
}





/*page08*/
function calendarPage08(){
	

	$('#StockCalendar1').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: yyyy + '-' + mm + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 10);
			$('.flipbook').turn("disable", true);
		},
		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 10);
			$('.flipbook').turn("disable", true);
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'POST',
				url: 'loadAllCheckList',
				dataType: 'json',
				success: function (data) {
					var events = [];
					$.each(data, function (index, item) {
						events.push({
							title: item.ckTitle,
							id: item.ckSerialNumber,
							start: item.completes
						});
					});
					console.log(events);
					callback(events);
				}
			});
		}
	});
}



/*page09*/
function calendarPage09(){
	

	$('#StockCalendar2').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: yyyy + '-' + mm + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 10);
			$('.flipbook').turn("disable", true);
		},
		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 10);
			$('.flipbook').turn("disable", true);
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'POST',
				url: 'loadAllCheckList',
				dataType: 'json',
				success: function (data) {
					var events = [];
					$.each(data, function (index, item) {
						events.push({
							title: item.ckTitle,
							id: item.ckSerialNumber,
							start: item.completes
						});
					});
					console.log(events);
					callback(events);
				}
			});
		}
	});
}



/*page12*/
function calendarPage12(){
	

	$('#UsageCalendar1').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: yyyy + '-' + mm + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 14);
			$('.flipbook').turn("disable", true);
		},
		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 14);
			$('.flipbook').turn("disable", true);
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'POST',
				url: 'loadAllCheckList',
				dataType: 'json',
				success: function (data) {
					var events = [];
					$.each(data, function (index, item) {
						events.push({
							title: item.ckTitle,
							id: item.ckSerialNumber,
							start: item.completes
						});
					});
					console.log(events);
					callback(events);
				}
			});
		}
	});
}
/*page13*/
function calendarPage13(){
	

	$('#UsageCalendar2').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: yyyy + '-' + mm + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 14);
			$('.flipbook').turn("disable", true);
		},
		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 14);
			$('.flipbook').turn("disable", true);
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'POST',
				url: 'loadAllCheckList',
				dataType: 'json',
				success: function (data) {
					var events = [];
					$.each(data, function (index, item) {
						events.push({
							title: item.ckTitle,
							id: item.ckSerialNumber,
							start: item.completes
						});
					});
					console.log(events);
					callback(events);
				}
			});
		}
	});
}
