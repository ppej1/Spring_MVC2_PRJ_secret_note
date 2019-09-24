<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function(){
	$.ajax({
		type :'GET'
		, url : 'lossList'
		, success : output5
	})
})

var arr = new Array(12).fill(0);

function output5(resp){
	resp.forEach((item) => arr[parseInt(item.mdate)-1] += item.damount*item.price) 
	alert(JSON.stringify(arr))
	
	//experimental data
	
	var rawData = [];
	
	rawData = arr.map((v, i) => {return [i+1, v]})
	
	alert(JSON.stringify(rawData))
	
	anychart.onDocumentReady(function () {
			
		
		  var data_1 = rawData;
		  var data_2 = setTheoryData(rawData);


function output5 (resp){
	$.each(resp, function(index, item){
		graphData.push(item.sname)
		graphData.push(item.uamount)
	})
}

		  chart = anychart.scatter();

		  chart.title("The calculated formula: " + result.string + "\nThe coefficient of determination (R2): " + result.r2.toPrecision(2));

		  chart.legend(true);

		  // creating the first series (marker) and setting the experimental data
		  var series1 = chart.marker(data_1);
		  series1.name("Experimental data");

		  // creating the second series (line) and setting the theoretical data
		  var series2 = chart.line(data_2);
		  series2.name("Theoretically calculated data");
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
</script>

<div class="page_content_even">
    <div class="page_container_full">
  		<h1 class="tm-block-title">ANALYSIS CHART1</h1>
  		<div id="AnalysisChart"></div>
    </div>
</div>

<style>
	#AnalysisChart{
		overflow:hidden;
        height:90%;
	}
</style>
<script src="resources/js/anychart/js/regression.min.js"></script>
<script src="resources/js/anychart/js/anychart-base.min.js"></script>
<script src="resources/js/anychart/js/anychart-exports.min.js"></script>
<script src="resources/js/anychart/js/anychart-ui.min.js"></script>
<script src="resources/js/anychart/css/anychart-font.css"></script>
<script src="resources/js/anychart/css/anychart-ui.min.css"></script>