

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>店長のシークレットノート</title>
<style>
body {
	
}

.no-js {
	display: none;
}

.info_list {
	width: 100%;
}

.labels tr td {
	background-color: #4fe153;
	font-weight: bold;
	color: #fff;
}

.label tr td label {
	display: block;
}

[data-toggle="toggle"] {
	display: none;
}

#AnalysisChart {
	overflow: hidden;
	height: 90%;
}

#AnalysisChart2 {
	overflow: hidden;
	float: left;
	height: 45%;
}

#AnalysisChart3 {
	overflow: hidden;
	float: right;
	height: 45%;
}

#AnalysisChart4 {
	overflow: hidden;
	float: left;
	height: 45%;
}

#AnalysisChart5 {
	overflow: hidden;
	float: right;
	height: 45%;
}
#AnalysisChart6 {
	overflow: hidden;
	float: left;
	height: 45%;
}
</style>
<!-- bootStrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- even ICON -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
	rel="stylesheet" />

<!-- main index page -->
<link rel="stylesheet" href="resources/template/css/animate.css">
<link rel="stylesheet"
	href="resources/template/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/template/css/magnific-popup.css">
<link rel="stylesheet"
	href="resources/template/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="resources/template/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/template/fonts/flaticons/font/flaticon.css">
<!-- Theme Style -->
<link rel="stylesheet" href="resources/template/css/style.css">
<link rel="stylesheet"
	href="resources/template/css/templatemo-style.css">
<link rel="shortcut icon" href="resources/img/chess.ico">

<!-- custum templet Style -->
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/pages_button.css">
<link rel="stylesheet" href="resources/css/backgroundImg.css">


</head>

<body class="no-js">

	<div class="flipbook-viewport">
		<div class="flipbook-container">
			<div class="flipbook">
				<!--1 page - title page-->
				<div -ms-overflow-style: none; id="title_page"></div>
				<!--20 page 분석 페이지 1-->
				<div id="page_18">
					<jsp:include page="page/button_even.jsp" flush="false" />
					<jsp:include page="page/page_18.jsp" flush="false" />
				</div>
				<!--21 page 분석 페이지 2-->
				<div id="page_19">
					<jsp:include page="page/page_19.jsp" flush="false" />
					<jsp:include page="page/button_odd.jsp" flush="false" />
				</div>
				<!--last  page-->
				<div id="last_page">
					<jsp:include page="page/page_last.jsp" flush="false" />

				</div>


			</div>
		</div>
	</div>
	<script src="resources/template/js/jquery-3.4.1.min.js"></script>
	
	<!-- turn.js 관련  -->
	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script type="text/javascript" src="resources/js/turnJs.js"></script>


	<!-- userInfo 관련 -->	
	<script src="resources/js/employee.js"></script>

  	<!-- main -->
  	<script src="resources/template/js/popper.min.js"></script>
  	<script src="resources/template/js/bootstrap.min.js"></script>
  	<script src="resources/template/js/owl.carousel.min.js"></script>
  	<script src="resources/template/js/jquery.waypoints.min.js"></script>
  	<script src="resources/template/js/jquery.magnific-popup.min.js"></script>
  	<script src="resources/template/js/magnific-popup-options.js"></script>
  	<script src="resources/template/js/main.js"></script>

  	<!-- service -->
  	<script type="text/javascript" src="resources/js/page/ChartSystem.js"></script>
  	<script type="text/javascript" src="resources/js/uses.js"></script>
  	<script type="text/javascript" src="resources/js/disposal.js"></script>

<!-- google chart -->
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  	<script>	
  		$("#yearChart").change(function(){
	  		year = $("#yearChart").val();
	  		selectType = $("#selectType").val();
	  		yearChart = {"ydate" : year
						,"condition" : "Disposal"
						};
  	  		$.ajax({
  	  	  		type: 'post',
  	  	  		url: 'lossListD',
  	  	  		data: yearChart,
  	  	  		success: function(resp){
  	    			yearChart = {"ydate" : year
  							,"condition" : "Uses"
  							};
  					$.ajax({
  		  				type: 'post',
  		  				url: 'lossListY',
  		  				data: yearChart,
  		  				success: function(resp2){
  		  					
  		  				output5(resp,resp2)
  		  				}
  		  			});
  	  	  		}
  	  	  	})
	  			
			});

			var year = $("#yearChart").val();
  		$(function () {
  			subListLoad();
  			
  			
  			
  	  		var selectType = $("#selectType").val();

  	  		var yearChart = {
  	  				"ydate" : year
  	  				,"condition" : "Disposal"
  	  						};
  	  		chart1(yearChart);
  	  		chart2();
  	  		chart3(yearChart);
  	  		
  		})

		function subListLoad() {
			$.ajax({
				url: 'subListLoad',
				type: 'post',
				success: outputSub
			});
		}
		
		function outputSub(res) {
		
			var tag = '';
			$.each(res, function (index, item) {
				tag += '<option value="' + item.scSerialNumber + '" data-value="' +
					item.edate + '">' + item.sname + '</option>';
			});  		
			$("#selectType").html(tag);
		}
  		
		function chart1(yearChart){
  	  		$.ajax({
  	  	  		type: 'post',
  	  	  		url: 'lossListD',
  	  	  		data: yearChart,
  	  	  		success: function(resp){
  	    			yearChart = {"ydate" : year
  							,"condition" : "Uses"
  							};
  					$.ajax({
  		  				type: 'post',
  		  				url: 'lossListY',
  		  				data: yearChart,
  		  				success: function(resp2){
  		  					
  		  				output5(resp,resp2)
  		  				}
  		  			});
  	  	  		}
  	  	  	})
  		}
		function chart2(){
	  		$.ajax({
  				type: 'GET',
  				url: 'lossList2',
  				success: output6
  			})

  			$.ajax({
  				type: 'GET',
  				url: 'usedList2',
  				success: output7
  			})
  		}
		function chart3(yearChart){
  			$.ajax({
  	  			type: 'GET',
  	  			url: 'lossList3',
  	  			data: yearChart,
  	  			success: output8
  	  		})
  	  		
  	  		$.ajax({
  				type: 'GET',
  				url: 'usedList3',
  				data: yearChart,
  				success: output9
  			})
  			$.ajax({
  				type: 'GET',
  				url: 'usedList3',
  				data: yearChart,
  				success: output10
  			})
  		}
		
		
  		function output5(resp,resp2) {
  			google.charts.load('current', {packages: ['corechart', 'line']});
  			google.charts.setOnLoadCallback(drawLineColors);
				
  			var arr = [ [0, 0, 0],[1, 0, 0], [2, 0, 0], [3, 0, 0],  [4,0, 0], [5,0, 0],
			        [6, 0, 0], [7,0, 0],  [8,0, 0], [9,0, 0], [10,0, 0], [11,0, 0]    ]

  			$.each(resp, function (index, item) {

  	  				arr[parseInt(item.mdate) - 1][1] += item.damount * item.price;
				    
  			})
  			$.each(resp2, function (index, item) {
 	  				arr[parseInt(item.mdate) - 1][2] += item.uamount * item.price;
  			})
				
  			
  			
  			
  			function drawLineColors() {
  			      var data = new google.visualization.DataTable();
  			      data.addColumn('number', 'X');
  			      data.addColumn('number', 'Disposal');
  			      data.addColumn('number', 'Uses');

  			      data.addRows(arr);

  			      var options = {
  			        hAxis: {
  			          title: 'YEAR'
  			        },
  			        vAxis: {
  			          title: 'MONEY'
  			        },
  			        colors: ['#fc0362', '#03cafc']
  			      };

  			      var chart = new google.visualization.LineChart(document.getElementById('AnalysisChart'));
  			      chart.draw(data, options);
  			    }
  		}
	
  		
  		
  		
  		
  		function output6(resp) {
  			var result = [];

  			result = resp.map(item => [item.sname, parseInt(item.damount)]);
  			
  			var inputData = ['Task', 'Hours per Day'];
  			
  			var newArr = [inputData, ...result];
  			
	  	      google.charts.load('current', {'packages':['corechart']});
	  	      google.charts.setOnLoadCallback(drawChart);
	
	  	      function drawChart() {
	
	  	        var data = google.visualization.arrayToDataTable(newArr);
	
	  	        var options = {
	  	          title: 'Loss (Disposal * Price)',
	  	          is3D: true,
	  	          chartArea: {width:'90%'},
	  	        };
	
	  	        var chart = new google.visualization.PieChart(document.getElementById('AnalysisChart2'));
	
	  	        chart.draw(data, options);
	  	      }
  		}

  		function output7(resp) {
  			var result = [];

  			result = resp.map(item => [item.sname, parseInt(item.uamount)]);

  			var inputData = ['Task', 'Hours per Day'];
  			
  			var newArr = [inputData, ...result];
  			
	  	      google.charts.load('current', {'packages':['corechart']});
	  	      google.charts.setOnLoadCallback(drawChart);
	
	  	      function drawChart() {
	
	  	        var data = google.visualization.arrayToDataTable(newArr);
	
	  	        var options = {
	  	          title: 'Usage (Use * Price)',
	  	          is3D: true,
	  	          chartArea: {width:'90%'},
	  	        };
	
	  	        var chart = new google.visualization.PieChart(document.getElementById('AnalysisChart3'));
	
	  	        chart.draw(data, options);
	  	      }
  		}
  		
  		function output8(resp){	
  			
  	  			var arr = new Array(12).fill(0);  			
  	  			
  	  			resp.forEach((item) => arr[parseInt(item.mdate) - 1] += item.damount * item.price);
  	  			
  	  			var rawData = [];

  	  			rawData = arr.map((v, i) => {
  	  				return [i + 1, v]
  	  			})
  	  			
  	  			var inputData = ['Loss', 'Month'];
  			
  				var newArr = [inputData, ...rawData];

			google.charts.setOnLoadCallback(drawChart);
			function drawChart() {
			  var data = google.visualization.arrayToDataTable(newArr);
			
			  var options = {
			    title: 'Loss each Month',
			    hAxis: {title: 'Month', minValue: 1, maxValue: 12},
			    vAxis: {title: 'Loss', minValue: 0},
			    chartArea: {width:'90%'},
			    legend: 'none',
			    trendlines: { 0: {} }    // Draw a trendline for data series 0.
			  };
			
			  var chart = new google.visualization.ScatterChart(document.getElementById('AnalysisChart4'));
			  chart.draw(data, options);
			}
  		}
  		
  		function output9(resp){

 	  		var arr = new Array(12).fill(0);
  	  		
  	  		resp.forEach((item) => arr[parseInt(item.mdate) - 1] += item.uamount * item.price);

  	  		var rawData = [];

  	  		rawData = arr.map((v, i) => {
  	  			return [i + 1, v]
  	  		})
  	  		
  	  		var inputData = ['Usage', 'Month'];
  			
  			var newArr = [inputData, ...rawData];
  	  		
			google.charts.setOnLoadCallback(drawChart);
			function drawChart() {
			  var data = google.visualization.arrayToDataTable(newArr);
			
			  var options = {
			    title: 'Usage each Month',
			    hAxis: {title: 'Month', minValue: 1, maxValue: 12},
			    vAxis: {title: 'Usage', minValue: 0},
			    legend: 'none',
			    chartArea: {width:'90%'},
			    trendlines: { 0: {} }    // Draw a trendline for data series 0.
			  };
			
			  var chart = new google.visualization.ScatterChart(document.getElementById('AnalysisChart5'));
			  chart.draw(data, options);
			}
  		} 		
  	</script>




	<script>
  		function main() {
  			$('.flipbook').turn("disable", false);
  			$('.flipbook').turn("page", 2);
  			$('.flipbook').turn("disable", true);
  		}
  	</script>






</body>

</html>