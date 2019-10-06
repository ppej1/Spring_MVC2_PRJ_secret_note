

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

<!-- anychart -->
  	<script src="resources/js/anychart/js/regression.min.js"></script>
  	<script src="resources/js/anychart/js/anychart-base.min.js"></script>
  	<script src="resources/js/anychart/js/anychart-exports.min.js"></script>
  	<script src="resources/js/anychart/js/anychart-ui.min.js"></script>
  	<script src="resources/js/anychart/css/anychart-font.css"></script>
  	<script src="resources/js/anychart/css/anychart-ui.min.css"></script>

  	<script>	

  		$(function () {
  	  		var year = $("#yearChart").val();
  	  		var yearChart = {"ydate" : year};
  	  		
/*   	  		$("#yearChart").change(function(){
	  			alert("변경");
	  			$("#AnalysisChart").empty();  			
  	  	  		year = $("#yearChart").val();
  	  	  		yearChart = {"ydate" : year};

  	  				$.ajax({
  	  	  				type: 'GET',
  	  	  				url: 'lossList',
  	  	  				data: yearChart,
  	  	  				success: output8
  	  	  			})
  	  			}) */
  	  		
  	  		$.ajax({
  	  	  		type: 'GET',
  	  	  		url: 'lossList',
  	  	  		data: yearChart,
  	  	  		success: output5
  	  	  	})
  	  		
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
  			
  			$.ajax({
  	  			type: 'GET',
  	  			url: 'lossList',
  	  			data: yearChart,
  	  			success: output8
  	  		})
  	  		
  	  		$.ajax({
  				type: 'GET',
  				url: 'usedList3',
  				data: yearChart,
  				success: output9
  			})
  		})

  		
  		function output5(resp) {
  			
  			var arr = new Array(12).fill(0);
  			
  			resp.forEach((item) => arr[parseInt(item.mdate) - 1] += item.damount * item.price)

  			//experimental data

  			var rawData = [];

  			rawData = arr.map((v, i) => {
  				return [i + 1, v]
  			})

  			//alert(JSON.stringify(rawData))

  			anychart.onDocumentReady(function () {


  				var data_1 = rawData;
  				var data_2 = setTheoryData(rawData);


  				chart = anychart.scatter();

  				chart.title("EACH MONTH TOTAL LOSS STATUS GRAPH / YEAR");

  				chart.legend(true);

  				// creating the first series (marker) and setting the experimental data
  				var series1 = chart.marker(data_1);
  				series1.name("Loss Data");

  				// creating the second series (line) and setting the theoretical data
  				var series2 = chart.line(data_2);
  				series2.name("Loss Linear Regression");
  				series2.markers(true);

  				chart.container("AnalysisChart");
  				chart.draw();
  			});

  			//getting the regression object
  			//the type of regression depends on the experimental data
  			var result = regression('linear', rawData);


  			//get coefficients from the calculated formula
  			var coeff = result.equation;



  			//input X and calculate Y using the formula found
  			//this works with all types of regression
  			function formula(coeff, x) {
  				var result = null;
  				for (var i = 0, j = coeff.length - 1; i < coeff.length; i++, j--) {
  					result += coeff[i] * Math.pow(x, j);
  				}
  				return result;
  			}

  			//setting theoretical data array of [X][Y] using experimental X coordinates
  			//this works with all types of regression
  			function setTheoryData(rawData) {
  				var theoryData = [];
  				for (var i = 0; i < rawData.length; i++) {
  					theoryData[i] = [rawData[i][0], formula(coeff, rawData[i][0])];
  				}
  				return theoryData;
  			}
  		}
  		
  		function output6(resp) {
  			var result = [];

  			result = resp.map(item => [item.sname, parseInt(item.damount)])

  			anychart.onDocumentReady(function () {
  				// create pie chart with passed data
  				var chart = anychart.pie(result);

  				// set chart title text settings
  				chart.title('Loss (Disposal * Price)')
  					// set points grouping settings
  					.group(function (value) {
  						return (value >= 1000);
  					});

  				// set container id for the chart
  				chart.container('AnalysisChart2');
  				// initiate chart drawing
  				chart.draw();
  			});
  		}

  		function output7(resp) {
  			var result = [];

  			result = resp.map(item => [item.sname, parseInt(item.uamount)])

  			anychart.onDocumentReady(function () {
  				// create pie chart with passed data
  				var chart = anychart.pie(result);

  				// set chart title text settings
  				chart.title('Usage (Uses * Price)')
  					// set points grouping settings
  					.group(function (value) {
  						return (value >= 1000);
  					});

  				// set container id for the chart
  				chart.container('AnalysisChart3');
  				// initiate chart drawing
  				chart.draw();
  			});
  		}
  		
  		function output8(resp){
  			anychart.onDocumentReady(function () {
  				
  	  			var arr = new Array(12).fill(0);
  	  			
  	  			resp.forEach((item) => arr[parseInt(item.mdate) - 1] += item.damount * item.price)

  	  			//experimental data

  	  			var rawData = [];

  	  			rawData = arr.map((v, i) => {
  	  				return [i + 1, v]
  	  			})
  				
  				// create line chart
  				var chart = anychart.line();

  				chart.yScale().minimum(0);

  				// create line series
  				var series = chart.line(rawData);

  				series.normal().stroke('#999999', 5, null, 'round', 'round');
  				series.normal().risingStroke('#66BB6A', 5, null, 'round', 'round');
  				series.normal().fallingStroke('#FF7043', 5, null, 'round', 'round');

  				// set container id for the chart
  				chart.container('AnalysisChart4');

  				// initiate chart drawing
  				chart.draw();
  			});
  		}
  		
  		function output9(resp){
  			anychart.onDocumentReady(function () {
  				
 	  			var arr = new Array(12).fill(0);
  	  			
  	  			resp.forEach((item) => arr[parseInt(item.mdate) - 1] += item.uamount * item.price)

  	  			//experimental data

  	  			var rawData = [];

  	  			rawData = arr.map((v, i) => {
  	  				return [i + 1, v]
  	  			})
  				
  				// create line chart
  				var chart = anychart.line();

  				chart.yScale().minimum(0);

  				// create line series
  				var series = chart.line(rawData);

  				series.normal().stroke('#999999', 5, null, 'round', 'round');
  				series.normal().risingStroke('#66BB6A', 5, null, 'round', 'round');
  				series.normal().fallingStroke('#FF7043', 5, null, 'round', 'round');

  				// set container id for the chart
  				chart.container('AnalysisChart5');

  				// initiate chart drawing
  				chart.draw();
  			});
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