$(function() {
	var selectDate = $("#date_index").attr('data-value');
	inputSelectReceipt(selectDate);
})
function inputSelectReceipt(selectDate) {
	sendData = {
			"rDate" : selectDate
	}
	$.ajax({
		type : 'post',
		url : 'loadReceiptList',
		data : sendData,
		async : false,
		success : receiptListOutput
	});
}

function receiptListOutput(data) {

	tag = "";
	tag += '<thead>';
	tag += '<tr>';
	tag += '<td class="tm-product-name">S/N</td>';
	tag += '<td>材料</td>';
	tag += '<td>数量</td>';
	tag += '<td>単位</td>';
	tag += '<td>担当者</td>';
	tag += '<td>削除</td>';
	tag += '<td>入庫日</td>';
	tag += '<td>備考</td>';
	tag += '</tr>';
	tag += '</thead>';

	if (data == 0) {
		tag += '<tr>';
		tag += '<th colspan="8">登録リストがありません。</th>';
		tag += '</tr>';

	} else {
		$.each(data, function(index, item) {
			tag += '<tbody>';
			tag += '<tr>';
			tag += '<td>' + item.rserialNumber + '</td>';
			tag += '<td>' + item.sname + '</td>';
			tag += '<td>' + item.ramount + '</td>';
			tag += '<td>' + item.unit + '</td>';
			tag += '<td>' + item.userid + '</td>';
			tag += '<td>' + item.rdate + '</td>';
			tag += '<td>' + item.rcomment + '</td>';
			tag += '<td>';
			tag += '<a href="#" class="tm-product-delete-link deleteReceipt" data-value="'
				+ item.rSerialNumber + '">';
			tag += '<i class="far fa-trash-alt tm-product-delete-icon"></i>';
			tag += '</a>';
			tag += '</td>';
			tag += '</tr>';
			tag += '</tbody>';
			});
	}
	$("#receiptlistTable").html(tag);
	$(".deleteReceipt").on('click', function() {
		rserialNumber = $(this).attr("data-value");
		deleteReceipt(rserialNumber);
	});
}

function deleteReceipt(rserialNumber) {
	var sendData = {
		"rSerialNumber" : rserialNumber
	}
	alert(rserialNumber)
	$.ajax({
		type : 'POST',
		url : 'deleteReceiptList',
		data : sendData,
		success : function(res) {
			alert("削除完了")
		}
	})
}