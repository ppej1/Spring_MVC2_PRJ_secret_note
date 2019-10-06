var nowdate = '';

function setnowDate() {
	nowdate = startDate;
}

function fdisposalList(startDate) {
	setnowDate(startDate);

	var sendData = {
			"dDate": startDate
		}
	
	$.ajax({
		type :'POST'
		, url : 'disposalListOneDay'
		,data: sendData
		, success : output3
	});
	
	$.ajax({
		type :'POST'
		, url : 'disposalAmountPieChart'
		,data: sendData
		, success : disposalAmountPieChart
	})
	
	$.ajax({
		type :'POST'
		, url : 'whoDestroyPieChart'
		,data: sendData
		, success : whoDestroyPieChart
	})
	
	$.ajax({
		type :'POST'
		, url : 'materialChart2'
		,data: sendData
		, success : materialChart2
	})

	
}

function output3(resp) {
		var tag = '<thead>'
			tag += '<tr>'
			tag += '<th scope="col">NO.</th>'
			tag += '<th scope="col">분류</th>'
			tag += '<th scope="col">위치</th>'
			tag += '<th scope="col">재료명</th>'
			tag += '<th scope="col">담당자</th>'
			tag += '<th scope="col">직급</th>'
			tag += '<th scope="col">폐기량</th>'
			tag += '<th scope="col">폐기날짜</th>'
			tag += '</tr>'
			tag += '</thead>'
			
	 	$.each(resp, function(index, item){
	 		tag += '<tbody>'
		    tag += '<tr>'
			tag += '<th scope="row"><b>'+item.dserialNumber+'</b></th>'
			tag += '<td>'+item.mclass+'</td>'
			if (item.location== 1) {
				tag += '<td><b>冷凍</b></td>'		
			}else if(item.location== 2){
				tag += '<td><b>冷蔵</b></td>'		
			}else{
				tag += '<td><b>常温</b></td>'		
			}		
			tag += '<td><b>'+item.sname+'</b></td>'
			tag += '<td><b>'+item.userName+'</b></td>'
			tag += '<td>'+item.rank+'</td>'
			tag += '<td>'+item.damount+'</td>'
			tag += '<td>'+item.ddate+'</td>'
			tag += '</tr>'
			tag += '</tbody>'
		})
		$("#newDisposalList").html(tag);
	}


// pg 17  그래프

function disposalAmountPieChart(resp){
	var result = [];

		result = resp.map(item => [item.mclass,parseInt(item.damount)])
	
		anychart.onDocumentReady(function () {
			
			// create pie chart with passed data
		    var chart = anychart.pie(result);
		    
		    chart.palette(anychart.palettes.glamour);
		    chart.fill("aquastyle");
		    // set chart title text settings
		    chart.title('분류별 폐기량')
		            //set chart radius
		            .radius('43%')
		            // create empty area in pie chart
		            .innerRadius('30%');

		    // set container id for the chart
		    chart.container('pieChart2');
		    // initiate chart drawing
		    chart.draw();
		});
	};

function whoDestroyPieChart(resp){
	var result = [];
	
	result = resp.map(item => [item.userid,parseInt(item.damount)])
	
	anychart.onDocumentReady(function () {
	
	    // create a chart and set the data
	    var chart = anychart.pie(result);
	    
	    chart.palette(anychart.palettes.provence);
	    // configure the visual settings of the chart
	    chart.fill("aquastyle");
	
	    // set the chart title
	    chart.title("담당자별 폐기량");
	
	    // set the container id
	    chart.container("whoDestroyPieChart");
	
	    // initiate drawing the chart
	    chart.draw();
	});
}

function materialChart2(resp){
	
	var result = [];

	result = resp.map(item => [item.sname,parseInt(item.damount)])
	
	anychart.onDocumentReady(function () {
	    // create column chart
	    var chart = anychart.column();

	    var dataSet = anychart.data.set(result);

	    // set chart title
	    chart.title('재료별 폐기량');
	    
	    // map data for the first series, take x from the zero column and value from the first column of data set
	    var seriesData_one = dataSet.mapAs({'x': 0, 'value': 1});

	    // map data for the second series, take x from the zero column and value from the second column of data set
	    var seriesData_two = dataSet.mapAs({'x': 0, 'value': 2});

	    // create first series with mapped data
	    var seriesFirst = chart.column(seriesData_one);
	    seriesFirst.name('폐기량');

	    var shapes = seriesFirst.rendering().shapes();

	    seriesFirst.color('#E76A7A');
	    // set rendering settings
	    seriesFirst.rendering()
	            // set point function to drawing
	            .point(drawer)
	            // set update point function to drawing, change the point shape when the state changes
	            .updatePoint(drawer)
	            // set shapes
	            .shapes(shapes);
	    // set titles for Y-axis
	    //chart.yAxis().title('Revenue in Dollars');
	    // set minimum for y-scale
	    chart.yScale().minimum(0);
	    // set tooltip prefix
	    //chart.tooltip().valuePrefix('$');
	    // turn on legend
	    chart.legend(false);
	    // set container id for the chart
	    chart.container('materialChart2');
	    // initiate chart drawing
	    chart.draw();
	});

	function drawer() {
	    // if missing (not correct data), then skipping this point drawing
	    if (this.missing) {
	        return;
	    }

	    // get shapes group
	    var shapes = this.shapes || this.getShapesGroup(this.pointState);
	    // calculate the left value of the x-axis
	    var leftX = this.x - this.pointWidth / 2;
	    // calculate the right value of the x-axis
	    var rightX = leftX + this.pointWidth;
	    // calculate the half of point width
	    var rx = this.pointWidth / 2;

	    shapes.path
	            // resets all 'line' operations
	            .clear()
	            // draw column with rounded edges
	            .moveTo(leftX, this.zero)
	            .lineTo(leftX, this.value + rx)
	            .circularArc(leftX + rx, this.value + rx, rx, rx, 180, 180)
	            .lineTo(rightX, this.zero)
	            // close by connecting the last point with the first straight line
	            .close();
	}
}

