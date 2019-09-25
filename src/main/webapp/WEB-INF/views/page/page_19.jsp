<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	#AnalysisChart2{
		overflow:hidden;
		float: left;
        height:45%;
	}
	#AnalysisChart3{
		overflow:hidden;
		float: right;
        height:45%;
	}
	#AnalysisChart4{
		overflow:hidden;
		float: left;
        height:45%;
	}
	#AnalysisChart5{
		overflow:hidden;
		float: right;
        height:45%;
	}
</style>

<script>
$(function(){
	$.ajax({
		type :'GET'
		, url : 'lossList2'
		, success : output6
	})
	
	$.ajax({
		type :'GET'
		, url : 'usedList2'
		, success : output7
	})
	
	$.ajax({
		type :'GET'
		, url : 'lossList'
		, success : output8
	})
	
	$.ajax({
		type :'GET'
		, url : 'lossList'
		, success : output9
	})
})

function output6(resp){
	var result = [];
	
	result = resp.map( item => [item.sname, parseInt(item.damount)])
			
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

function output7(resp){
	var result = [];
	
	result = resp.map( item => [item.sname, parseInt(item.uamount)])
	
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

function output8(){
	anychart.onDocumentReady(function () {
	    // create pie chart with passed data
	    var chart = anychart.pie([
	        ['Apples', 6371664],
	        ['Pears', 789622],
	        ['Bananas', 7216301],
	        ['Grapes', 1486621],
	        ['Oranges', 1200000]
	    ]);
	
	    // set chart title text settings
	    chart.title('Fruits imported in 2015 (in kg)');
	    // set chart labels position to outside
	    chart.labels().position('outside');
	    // set legend title settings
	    chart.legend().title()
	        .enabled(true)
	        .text('Retail channels')
	        .padding([0, 0, 10, 0]);
	
	    // set legend position and items layout
	    chart.legend()
	        .position('center-bottom')
	        .itemsLayout('horizontal')
	        .align('center');
	
	    // set container id for the chart
	    chart.container('AnalysisChart4');
	    // initiate chart drawing
	    chart.draw();
	});
}

function output9(){
	anychart.onDocumentReady(function () {
	    // create pie chart with passed data
	    var chart = anychart.pie([
	        ['Apples', 6371664],
	        ['Pears', 789622],
	        ['Bananas', 7216301],
	        ['Grapes', 1486621],
	        ['Oranges', 1200000]
	    ]);
	
	    // set chart title text settings
	    chart.title('Fruits imported in 2015 (in kg)');
	    // set chart labels position to outside
	    chart.labels().position('outside');
	    // set legend title settings
	    chart.legend().title()
	        .enabled(true)
	        .text('Retail channels')
	        .padding([0, 0, 10, 0]);
	
	    // set legend position and items layout
	    chart.legend()
	        .position('center-bottom')
	        .itemsLayout('horizontal')
	        .align('center');
	
	    // set container id for the chart
	    chart.container('AnalysisChart5');
	    // initiate chart drawing
	    chart.draw();
	});
}
</script>    

<div class="page_content_odd">
    <div class="page_container_full">
  		<h1 class="tm-block-title">ANALYSIS CHART2</h1>
  		<div id="AnalysisChart2"></div>
  		<div id="AnalysisChart3"></div>
  		<div id="AnalysisChart4"></div>
  		<div id="AnalysisChart5"></div>
    </div>
</div>