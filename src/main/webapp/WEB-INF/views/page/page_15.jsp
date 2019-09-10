<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/Chart/dist/Chart.min.js"></script>
<script src="resources/js/Chart/dist/Chart.min.css"></script>

<script>var ctx = document.getElementById("usebarChart");
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Red", "Blue", "Yellow", "Green"],
        datasets: [{
            label: 'bar',
            data: [88, 67, 71, 90, 78, 60],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)'
            ],
            borderWidth: 1
        }]
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
<script>
var ctx = document.getElementById("uselineChart");
var myLineChart = new Chart(ctx, {
    type: 'line',
    data: {
    	labels: ["돼지고기", "소고기", "양파", "마늘", "당면", "떡", "라면사리"],
        datasets: [{
            label: 'line',
            data: [15, 90, 20, 40, 5, 88, 60],
            backgroundColor: [
            	'rgba(75, 192, 192, 0.2)'
            ],
            borderColor: [
            	'rgba(54, 162, 235, 0.2)'
            ],
            borderWidth: 3
        }]
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
 		<canvas id="usebarChart" width="100%" height="40%"></canvas>
 	</div>
 	<div>
 		<canvas id="uselineChart" width="100%" height="40%"></canvas>
 	</div>
</div>

