var nowdate = '';

function setnowDate() {
	nowdate = startDate;
}

function checklistPage() {
	setnowDate(startDate);

	var sendData = {
		"rdate": startDate
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
	tag += '<td class="tm-product-name" colspan="3">제목</td>';
	tag += '<td>난이도</td>';
	tag += '<td rowspan="2">&nbsp;</td>';
	tag += '</tr>';
	tag += '<tr>';
	tag += '<td id="rdate" data-value="2019-09-01">등록일</td>';
	tag += '<td>등록자</td>';
	tag += '<td>완료자</td>';
	tag += '<td>완료자</td>';
	tag += '</tr>';
	tag += '</thead>';

	if (data == 0) {
		tag += '<tr>';
		tag += '<th colspan="5">체크리스트가 없습니다</th>';
		tag += '</tr>';

	} else {
		$.each(data, function (index, item) {
			tag += '<tbody>';
			tag += '<tr>';
			tag += '<th scope="row" rowspan="2">';
			tag += '<a href="#" class="tm-product-delete-link" data-value="' + item.ckSerialNumber + '" >';
			tag += '<i class="fas fa-check"></i></a>';
			tag += '</th>';
			tag += '<td class="tm-product-name" colspan="3">' + item.ckTitle + '</td>"';
			tag += '<td>' + item.importance + '</td>';
			tag += '<td rowspan="2">';
			tag += '<a href="#" class="tm-product-delete-link" data-value="1">';
			tag += '<i class="far fa-trash-alt tm-product-delete-icon"></i>';
			tag += '</a>';
			tag += '</td';
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
}

function createCheckList() {
	var url = "insertCheckList";
	var name = "popup test";
	var option = "width = 500, height = 500, top = 100, left = 200, location = no"

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