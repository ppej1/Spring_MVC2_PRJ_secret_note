
  $(document).ready(function() {

    $('#checkCalendar1').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay,listWeek'
      },
      defaultDate: '2018-03-12',
      navLinks: true, // can click day/week names to navigate views
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
