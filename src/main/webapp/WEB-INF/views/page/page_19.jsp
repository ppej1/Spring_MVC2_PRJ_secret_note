<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/Chart/dist/Chart.min.js"></script>
<script src="resources/js/Chart/dist/Chart.min.css"></script>

<script>var ctx = document.getElementById("junkChart");
var mixedChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        datasets: [{
	            label: 'Bar Dataset',
	            data: [90, 80, 32, 75, 12],
		        backgroundColor: [
		        	'rgba(65, 172, 235, 0.2)',
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)'
	            ],
	            borderColor: [
	            	'rgba(255, 66, 122, 1)',
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)'
	            ]
	        }, {
	            label: 'Line Dataset',
	            data: [30, 5, 10, 60, 20],
	            borderColor: [       
	                'rgba(255,99,132,1)'
	            ],
	         // Changes this dataset to become a line
	            type: 'line'
	        }],
	        labels: ['January', 'February', 'March', 'April', 'May']
	    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>

<div class="page_content_odd">
 	<!-- odd page  main -->	 	
 	<div>
 		<canvas id="junkChart" width="100" height="80%"></canvas>
 	</div>
</div>

