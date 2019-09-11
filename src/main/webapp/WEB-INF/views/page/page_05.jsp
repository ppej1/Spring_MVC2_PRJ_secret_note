<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 						<div class="page_content_odd">
 							<!-- odd page  main -->
		<div class="page_title_container">
		<div class="page_title_container_div">
			<h1>CheckListCalendar</h1>
		</div>
	</div>
	<div class="page_container">
			<div id='checkCalendar2'></div>
	</div>
</div>

<script>
	document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('checkCalendar2');

	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    plugins: [ 'dayGrid' ],
	    eventClick: function(info) {
	      var eventObj = info.event;

	      if (eventObj.url) {
	        alert(
	          'Clicked ' + eventObj.title + '.\n' +
	          'Will open ' + eventObj.url + ' in a new tab'
	        );

	        //window.open(eventObj.url);

	        info.jsEvent.preventDefault(); // prevents browser from following link in current tab.
	      } else {
	        alert('Clicked ' + eventObj.title);
	      }
	    },
	    defaultDate: '2019-09-15',
	    events: [
	      {
	        title: 'simple event',
	        data: 'abcd',
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