function main() {
	$('.flipbook').turn("disable", false);
	$('.flipbook').turn("page", 2);
	$('.flipbook').turn("disable", true);
	calendarPage08();
	calendarPage09();
}

function reciept() {
	var scSerialNumber = $("#selectSub").val();
	var userid = $("#userid").val();
	var rAmount = $("#rAmount").val();
	var rComment = $("#rComment").val();
	var accountserial = $("#accList").val();
	var sendData = {
		"scSerialNumber" : scSerialNumber,
		"userid" : userid,
		"rAmount" : rAmount,
		"rComment" : rComment,
		"accountserial" : accountserial
	};
	$.ajax({
		url : 'recieptReg',
		type : 'post',
		data : sendData,
		success : function(res){
			
		}
	
	});
}

function stock(){
	
var scSerialNumber  = $("#selectSub").val();
var userid  = $("#userid").val();
var sAmount  = $("#rAmount").val();	
var sendData = {
		"scSerialNumber": scSerialNumber,
		"userid": userid,
		"sAmount": sAmount,

	};

	$.ajax({
		url : 'stockReg',
		type : 'post',
		data : sendData,
		success : function(res) {
			alert("stock등록완료")
		}
	});
}

function accListLoad() {
	$.ajax({
		url : 'accListLoad',
		type : 'post',
		success : outputAcc
	});
}

function outputAcc(res) {

	var tag = '';
	$.each(res, function(index, item) {
		tag += '<option value="' + item.accountserial + '">' + item.accountName
				+ '</option>';
	});

	$("#accList").html(tag);
}

function subListLoad() {
	$.ajax({
		url : 'subListLoad',
		type : 'post',
		success : outputSub
	});
}

function outputSub(res) {

	var tag = '';
	$.each(res, function(index, item) {
		tag += '<option value="' + item.scSerialNumber + '" data-value="'
				+ item.edate + '">' + item.sname + '</option>';
	});

	$("#selectSub").html(tag);	
	$("#selectSub").on('change', function(){
		var data = $("#selectSub").val()
		chaingePicture(data);
	});

}
function chaingePicture(data){
	var data = data;
	var sendata = {
			"scSerialNumber" : data
	}
	$.ajax({
		url:'chaingeSubClassPicture',
		type:'post',
		data:sendata,
		success:chaingesubClassPicture
	});
}
function chaingesubClassPicture(data){
		
	$(".bg-image").attr('style', 'background-image: url("resources/img/meterial/'+data.simg+'");')

}

/* */
function open_frozen_storage() {
	alert("냉동을 클릭했음");
	storage = 1;
	inputSelectStock(storage);

}

function open_cold_storage() {
	alert("냉장을 클릭했음");
	storage = 2;
	inputSelectStock(storage);
}

function open_storage() {
	alert("상온을 클릭했음");
	storage = 3;
	inputSelectStock(storage);
}

function inputSelectStock(storage) {
	var storage = storage;
	sendData = {
		"location" : storage
	}
	$.ajax({
		type : 'post',
		url : 'selectStockAsLocation',
		data : sendData,
		async : false,
		success : outputSelectStock
	});

}

function outputSelectStock(data) {
	tag = "";
	tag += '<thead>';
	tag += '<tr>';
	tag += '	<th>serial</th>';
	tag += '	<th>材料</th>';
	tag += '	<th>大分類</th>';
	tag += '	<th>在庫</th>';
	tag += '	<th>登録日</th>';
	tag += '	<th>賞味期限</th>';
	tag += '</tr>';
	tag += '</thead>';

	tag += '<tbody class="main_tbody">';

	$
			.each(
					data,
					function(index, item) {

						tag += '<tbody class="labels">';
						tag += '<tr>';
						tag += '<td colspan="6">';
						tag += '	<label for="' + item.scSerialNumber + '">'
								+ item.sname + '</label>';
						tag += '<input type="checkbox" name="'
								+ item.scSerialNumber + '" id="'
								+ item.scSerialNumber
								+ '" data-toggle="toggle">';
						tag += '</td>';
						tag += '</tr>';
						tag += '</tbody>';
						tag += '<tbody class="hide" id = "'
								+ item.scSerialNumber
								+ '"style="display: none;">';

						sendData = {
							"scSerialNumber" : item.scSerialNumber
						}
						$
								.ajax({
									type : 'post',
									url : 'selectStockDetail',
									data : sendData,
									async : false,
									success : function(data2) {
										$
												.each(
														data2,
														function(index, item) {
															tag += '<tr>';
															tag += '<td>'
																	+ item.sserialNumber
																	+ '</td>';
															tag += '<td ><a href="#" class="detail_for_stock" data-value = '
																	+ item.sserialNumber
																	+ '>'
																	+ item.sname
																	+ '</a></td>';
															tag += '<td>'
																	+ item.mclass
																	+ '</td>';
															tag += '<td>'
																	+ item.samount
																	+ '/'
																	+ item.ramount
																	+ ' '
																	+ item.unit
																	+ '</td>';
															tag += '<td>'
																	+ item.sdate
																	+ '</td>';
															tag += '<td>'
																	+ item.deDate
																	+ '</td>';
															tag += '</tr>';
														});

									}
								});

						tag += '</tbody>';
					});
	tag += '</tbody>';
	$('.info_list').html(tag);

	$('[data-toggle="toggle"]').change(function() {
		$(this).parents().next('.hide').toggle();
	});
	$(".detail_for_stock").on('click', function() {
		serial = $(this).attr("data-value");
		alert(serial);
	});

}
