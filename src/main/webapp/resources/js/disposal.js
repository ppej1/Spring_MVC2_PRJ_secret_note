function fdisposalList() {
	$.ajax({
		type :'GET'
		, url : 'disposalList'
		, success : output3
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

cdisposalList();



var sName2 = [];
var dAmount = [];

function cdisposalList() {
	$.ajax({
		type :'GET'
		, url : 'disposalList'
		, success : output4
	})
}

function output4(resp) {
	
	$.each(resp, function(index, item){
		sName2.push(item.sname)
		dAmount.push(item.damount)
	})
	
	for(var i = 0; i < dAmount.length; i++){
		pieChart2.push((dAmount[i]/sum(dAmount))*100)
	}
}

var label2 = sName2;
var usedData = dAmount;
var preUsedData = [18,47,75,34]; //예상폐기량

var ctx = document.getElementById('disposalChart');
var myChart = new Chart(ctx, {
  type: 'horizontalBar',
  data: {
    labels: label2,
    datasets: [
      {
        label: "폐기량",
        backgroundColor: "#3e95cd",
        data: usedData
      }, {
        label: "예상폐기량",
        backgroundColor: "#c45850",
        data: preUsedData
      }
    ]
  },
  options: {
    title: {
      display: true,
      text: 'Disposal Graph'
    }
  }
});

//For a pie chart

var pieChart2 = [];

var ctx2 = document.getElementById('disposalChart2');
var myPieChart2 = new Chart(ctx2, {
    type: 'pie',
    data: {
        labels: label2,
        datasets: [
          {
            backgroundColor: "#ff6384",
            data: pieChart2
          }
        ]
      }
});

