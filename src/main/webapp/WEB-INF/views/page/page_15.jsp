<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/Chart/dist/Chart.min.js"></script>
<script src="resources/js/Chart/dist/Chart.bundle.min.js"></script>
<script src="resources/js/Chart/dist/Chart.min.css"></script>
<script>
var ctx = document.getElementById('usedChart');
var myChart = new Chart(ctx, {
    type: 'horizontalBar',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 1, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }],
        options: {
            scales: {
            	xAxes: [{
                    display: true,
                    ticks: {
                        suggestedMin: 0,    // minimum will be 0, unless there is a lower value.
                        // OR //
                        beginAtZero: true   // minimum value will be 0.
                    }
                }]
            }
        }
    }
});
</script>
<div class="page_content_odd">
	<div class="page_container_full">
		<h1 class="tm-block-title">USED CHART</h1>
		<canvas id="usedChart" width="80%" height="60%"></canvas>
	</div>
</div>