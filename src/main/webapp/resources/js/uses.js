function fusedList(startDate) {
	
	var sendData = {
			"uDate": startDate
		}
		$.ajax({
			type: 'POST',
			url: 'usedListOneDay',
			data: sendData,
			success: output1
		});
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
	
	for(var i = 0; i < uAmount.length; i++){
		pieChart.push((uAmount[i]/sum(uAmount))*100)
	}
}

var label = sName;
var usedData = uAmount;
var preUsedData = [18,47,75,34]; //예상사용량 


var ctx = document.getElementById('usedChart');
var myChart = new Chart(ctx, {
  type: 'horizontalBar',
  data: {
    labels: label,
    datasets: [
      {
        label: "사용량",
        backgroundColor: "#3e95cd",
        data: usedData
      }, {
        label: "예상사용량",
        backgroundColor: "#c45850",
        data: preUsedData
      }
    ]
  },
  options: {
    title: {
      display: true,
      text: 'Used Graph'
    }
  }
});

//For a pie chart
function sum(array) {
	  var result = 0;
	  for (var i = 0; i < array.length; i++){
			result += parseInt(array[i]);
	  }
	  return result;
}

var pieChart = [];

var ctx = document.getElementById('usedChart2');
var myPieChart = new Chart(ctx, {
    type: 'pie',
    data: {
        labels: label,
        datasets: [
          {
            backgroundColor: "#ff6384",
            data: pieChart
          }
        ]
      }
});

