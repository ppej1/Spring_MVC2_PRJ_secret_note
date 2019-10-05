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

function calendarPage04() {


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
			$('.flipbook').turn("page", 4);
			$('.flipbook').turn("disable", true);
			checklistPage(startDate);
		},
		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 4);
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
		defaultDate: yyyy + '-' + (mm + 1) + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 4);
			$('.flipbook').turn("disable", true);
			checklistPage(startDate);
		},
		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			$('.flipbook').turn("disable", false);
			$('.flipbook').turn("page", 4);
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
function calendarPage08() {


	$('#StockCalendar1').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month'
		},
		defaultDate: yyyy + '-' + (mm-1) + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			loadReceipt(startDate);
			
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events:  function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'POST',
				url: 'loadAllreceipt',
				dataType: 'json',
				success: function (data) {
					var events = [];
					$.each(data, function (index, item) {
						events.push({
							title: item.sname,
							id: item.ramount,
							start: item.rdate
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
function calendarPage09() {


	$('#StockCalendar2').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month'
		},
		defaultDate: yyyy + '-' + mm + '-' + dd,
		navLinks: true,
		navLinkDayClick: function (date, jsEvent) {
			selectdate = new Date(date);
			startDate = dateToYYYYMMDD(selectdate);
			loadReceipt(startDate);
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'POST',
				url: 'loadAllreceipt',
				dataType: 'json',
				success: function (data) {
					var events = [];
					$.each(data, function (index, item) {
						events.push({
							title: item.sname,
							id: item.ramount,
							start: item.rdate
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
function calendarPage12() {


	$('#UsageCalendar1').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: yyyy + '-' + (mm-1) + '-' + dd,

		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			if (calEvent.id == 'use') {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 4);
				$('.flipbook').turn("disable", true);
				fusedList(startDate);
			} else if (calEvent.id == 'disposal') {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 6);
				$('.flipbook').turn("disable", true);
				fdisposalList(startDate);
			}



		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'GET',
				url: 'usedList',
				success: function (data) {
					$.each(data, function (index, item) {
						events.push({
							title: item.sname,
							id: 'use',
							start: item.udate,
							color : 'yellow'
						});
					});
					$.ajax({
						type :'GET'
						, url : 'disposalList'
						, success : function(data2){
							$.each(data2, function (index, item) {
								events.push({
									title: item.sname,
									id: 'disposal',
									start: item.ddate,
									color : 'green'
								});
							});
							
							console.log(events);
							callback(events);
						}
					});
					
					
					
					

				}
			});


		}
	})
}
/*page13*/
function calendarPage13() {


	$('#UsageCalendar2').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		defaultDate: yyyy + '-' + mm + '-' + dd,

		eventClick: function (calEvent, jsEvent, view) {
			date = new Date(calEvent.start);
			startDate = dateToYYYYMMDD(date);
			if (calEvent.id == 'use') {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 4);
				$('.flipbook').turn("disable", true);
				fusedList(startDate);
			} else if (calEvent.id == 'disposal') {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 6);
				$('.flipbook').turn("disable", true);
				fdisposalList(startDate);
			}



		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: function (start, end, timezone, callback) {
			var events = [];
			$.ajax({
				type: 'GET',
				url: 'usedList',
				success: function (data) {
					$.each(data, function (index, item) {
						events.push({
							title: item.sname,
							id: 'use',
							start: item.udate,
							color : 'yellow'
						});
					});
					$.ajax({
						type :'GET'
						, url : 'disposalList'
						, success : function(data2){
							$.each(data2, function (index, item) {
								events.push({
									title: item.sname,
									id: 'disposal',
									start: item.ddate,
									color : 'green'
								});
							});
							
							console.log(events);
							callback(events);
						}
					});
					
					
					
					

				}
			});


		}
	})
}