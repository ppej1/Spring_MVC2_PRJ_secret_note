<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href='resources/js/fullcalendar/core/main.css' rel='stylesheet' />
<link href='resources/js/fullcalendar/daygrid/main.css' rel='stylesheet' />
<script src='resources/js/fullcalendar/core/main.js'></script>
<script src='resources/js/fullcalendar/daygrid/main.js'></script>

<script>
	document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');

	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    plugins: [ 'dayGrid' ],
	    eventClick: function(info) {
	      var eventObj = info.event;

	      if (eventObj.url) {
	        alert(
	          'Clicked ' + eventObj.title + '.\n' +
	          'Will open ' + eventObj.url + ' in a new tab'
	        );

	        window.open(eventObj.url);

	        info.jsEvent.preventDefault(); // prevents browser from following link in current tab.
	      } else {
	        alert('Clicked ' + eventObj.title);
	      }
	    },
	    defaultDate: '2019-09-15',
	    events: [
	      {
	        title: 'simple event',
	        start: '2019-09-02'
	      },
	      {
	        title: 'event with URL',
	        url: 'https://www.google.com/',
	        start: '2019-09-03'
	      }
	    ]
	  });

	  calendar.render();
	});
</script>

<div class="page_content_even">
 <!-- odd page  main -->
	<div id='calendar'></div>
</div>