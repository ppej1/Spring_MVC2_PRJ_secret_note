<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script> 
var ctx = document.getElementById('scatterChart');
var scatterChart = new Chart(ctx, {
    type: 'scatter',
    data: {
        datasets: [{
            label: 'Scatter Dataset',
            pointBackgroundColor : [
            	'rgba(255, 99, 132, 0.2)'
                ],
            pointBorderColor : [
            	'rgba(255, 99, 132, 1)'
                ],
            pointBorderWidth : 1
            ,
            data: [{
                x: 1,
                y: 1
            }, {
                x: 1,
                y: 2
            }, {
                x: 2,
                y: 3
            }, {
                x: 4,
                y: 5
            }, {
                x: 5,
                y: 5
            }, {
                x: 10,
                y: 10
            }, {
                x: 10,
                y: 20
            }, {
                x: 20,
                y: 30
            }, {
                x: 40,
                y: 50
            }, {
                x: 50,
                y: 50
            }]
        }]
    },
    options: {
        scales: {
            xAxes: [{
                type: 'linear',
                position: 'bottom'
            }]
        }
    }
});
</script>
    
<div class="page_content_even">
	<div class="page_container_full">
		<h1 class="tm-block-title">ANALYSIS CHART1</h1>
		<canvas id="scatterChart" width="80%" height="60%"></canvas>
	</div>
</div>