var nowdate = '';

function setnowDate() {
	nowdate = startDate;
}

function checklistPage() {
	setnowDate(startDate);

	var sendData = {
		"completes": startDate
	}
	$.ajax({
		type: 'POST',
		url: 'loadCheckList',
		data: sendData,
		success: chekListOutput
	});



}

function chekListOutput(data) {

	var tag = "";
	tag += '<thead>';
	tag += '<tr>';
	tag += '<th scope="row" rowspan="2">&nbsp;</th>';
	tag += '<td class="tm-product-name" colspan="3">題目</td>';
	tag += '<td>難易度</td>';
	tag += '<td rowspan="2">&nbsp;</td>';
	tag += '</tr>';
	tag += '<tr>';
	tag += '<td id="completes" data-value="' + nowdate + '">登録日</td>';
	tag += '<td>登録者</td>';
	tag += '<td>完了日</td>';
	tag += '<td>完了者</td>';
	tag += '</tr>';
	tag += '</thead>';

	if (data == 0) {
		tag += '<tr>';
		tag += '<th colspan="5">チェックリストがありません。</th>';
		tag += '</tr>';

	} else {
		$.each(data, function (index, item) {
			tag += '<tbody>';
			tag += '<tr>';
			tag += '<th scope="row" rowspan="2">';
			tag += '<a href="#" class="tm-product-delete-link successCheck" data-value="' + item.ckSerialNumber + '" >';
			tag += '<i class="fas fa-check"></i></a>';
			tag += '</th>';
			tag += '<td class="tm-product-name" colspan="3">' + '<a href ="#" class ="tm-product-serial" data-value="' + item.ckSerialNumber + '" >' + item.ckTitle + '</a></td>"';
			
			if(item.importance == 3){
				tag += '<td>上</td>';
			}else if(item.importance == 2){
				tag += '<td>中</td>'
			}else{
				tag += '<td>下</td>'
			}
			
			tag += '<td rowspan="2">';
			tag += '<a href="#" class="tm-product-delete-link deleteCheck" data-value="' + item.ckSerialNumber + '">';
			tag += '<i class="far fa-trash-alt tm-product-delete-icon"></i>';
			tag += '</a>';
			tag += '</td>';
			tag += '</tr>';
			tag += '<tr>';
			tag += '<td>' + item.rdate + '</td>';
			tag += '<td>' + item.registid + '</td>';
			tag += '<td>' + item.fdate + '</td>';
			tag += '<td>' + item.finisher + '</td>';
			tag += '</tr>';
			tag += '</tbody>';
		});
	}

	$("#checklistTable").html(tag);


	$(".successCheck").on('click', function () {
		ckSerialNumber = $(this).attr("data-value");
		successCheck(ckSerialNumber);
	});
	$(".deleteCheck").on('click', function () {
		ckSerialNumber = $(this).attr("data-value");
		deleteCheck(ckSerialNumber);
	});

	memoListPage(nowdate);

}

function createCheckList() {
	var url = "insertCheckList";
	var name = "popup test";
	var option = "width = 367, height = 416, top = 100, left = 200, location = no"

	var openDialog = function (uri, name, options, closeCallback) {
		var win = window.open(uri, name, options);

		var interval = window.setInterval(function () {
			try {
				if (win == null || win.closed) {
					window.clearInterval(interval);
					closeCallback(win);
				}
			} catch (e) {}
		}, 1000);
		return win;
	};

	var insertcheckList = openDialog(url, name, option, function (win) {
		checklistPage();
		//팝업창이 닫히게 될 때 실행 된 내용
	});
}

function successCheck() {
	var sendData = {
		"ckSerialNumber": ckSerialNumber
	}
	$.ajax({
		type: 'POST',
		url: 'successCheckList',
		data: sendData,
		success: checklistPage

	})

}

function deleteCheck() {
	var sendData = {
		"ckSerialNumber": ckSerialNumber
	}
	$.ajax({
		type: 'POST',
		url: 'deleteCheckList',
		data: sendData,
		success: checklistPage

	})
}