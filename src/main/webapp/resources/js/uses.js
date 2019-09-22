function fusedList() {
	$.ajax({
		type :'GET'
		, url : 'usedList'
		, success : output1
	})
}

function output1(resp) {
		var tag = '<thead>'
			tag += '<tr>'
			tag += '<th scope="col">NO.</th>'
			tag += '<th scope="col">분류</th>'
			tag += '<th scope="col">위치</th>'
			tag += '<th scope="col">재료명</th>'
			tag += '<th scope="col">담당자</th>'
			tag += '<th scope="col">직급</th>'
			tag += '<th scope="col">사용량</th>'
			tag += '<th scope="col">사용날짜</th>'
			tag += '</tr>'
			tag += '</thead>'
			
	 	$.each(resp, function(index, item){
	 		tag += '<tbody>'
		    tag += '<tr>'
			tag += '<th scope="row"><b>'+item.userialNumber+'</b></th>'
			tag += '<td>'+item.mclass+'</td>'
			tag += '<td><b>'+item.location+'</b></td>'		
			tag += '<td><b>'+item.sname+'</b></td>'
			tag += '<td><b>'+item.userName+'</b></td>'
			tag += '<td>'+item.rank+'</td>'
			tag += '<td>'+item.uamount+'</td>'
			tag += '<td>'+item.udate+'</td>'
			tag += '</tr>'
			tag += '</tbody>'
		})
		$("#newUsedList").html(tag);
	}

cusedList();



var sName = [];
var uAmount = [];

function cusedList() {
	$.ajax({
		type :'GET'
		, url : 'usedList'
		, success : output2
	})
}

function output2(resp) {
	
	$.each(resp, function(index, item){
		sName.push(item.sname)
		uAmount.push(item.uamount)
	})
}

/* function addData(chart, sName, uAmount) {
	chart.data.labels.push(sName);
	chart.data.datasets.forEach((dataset) => {
	      dataset.data.push(uAmount);
    });
	chart.update();
} */

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

