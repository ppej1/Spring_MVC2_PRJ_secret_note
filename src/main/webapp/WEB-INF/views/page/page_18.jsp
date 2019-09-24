<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function(){
	$.ajax({
		type :'GET'
		, url : 'graphList'
		, success : output5
	})
})

var graphData = [];


function output5 (resp){
	$.each(resp, function(index, item){
		graphData.push(item.sname)
		graphData.push(item.uamount)
	})
}

var speedCanvas = document.getElementById("AnalysisChart");

var speedData = {
  labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
  datasets: [{
    label: "Car Speed (mph)",
    data: [79, 59, 75, 20, 24, 55, 40, 2, 16, 80, 50, 61],
  }]
};

var chartOptions = {
  legend: {
    display: true,
    position: 'top',
    labels: {
      boxWidth: 80,
      fontColor: 'black'
    }
  }
};

var lineChart = new Chart(speedCanvas, {
  type: 'line',
  data: speedData,
  options: chartOptions
});
</script>
    
<div class="page_content_even">
	<div class="page_container_full">
		<h1 class="tm-block-title">ANALYSIS CHART1</h1>
		<canvas id="AnalysisChart" width="80%" height="60%"></canvas>
	</div>
</div>