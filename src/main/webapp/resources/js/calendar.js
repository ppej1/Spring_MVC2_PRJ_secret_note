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
$(document).ready(function () {

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
});



/*page 05*/
$(document).ready(function () {

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
});
