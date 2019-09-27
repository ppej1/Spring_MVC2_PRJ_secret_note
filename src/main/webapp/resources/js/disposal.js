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
	
	var sendData = {
			"dDate": startDate
		}
	$.ajax({
		type :'POST'
		, url : 'disposalAmountPieChart1'
		,data: sendData
		, success : disposalAmountPieChart1
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
			tag += '<td><b>'+item.location+'</b></td>'		
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

function disposalAmountPieChart1(resp){
		var result = [];

			result = resp.map(item => [item.sname,parseInt(item.damount)])

			
			anychart.onDocumentReady(function () {
			    // create pie chart with passed data
			    var chart = anychart.pie(result);

			    // set chart title text settings
			    chart.title('종류별 폐기량')
			            //set chart radius
			            .radius('43%')
			            // create empty area in pie chart
			            .innerRadius('30%');

			    // set container id for the chart
			    chart.container('pieChart');
			    // initiate chart drawing
			    chart.draw();
			});
			
			
			
};



