function main() {
	$('.flipbook').turn("disable", false);
	$('.flipbook').turn("page", 2);
	$('.flipbook').turn("disable", true);
	createDetailForm()
	calendarPage08();
	calendarPage09();

}

function createDetailForm() {
	accListLoad();
	subListLoad();
	tag = '';
	img = "resources/template/img/dishes_1.jpg"
	tag += '<div class="info_detail">';
	tag += '<div class="col-md-16 mb-4 detail_info">';
	tag += '<div class="blog d-block d-lg-flex">';
	tag += '<div class="bg-image" style="background-image: url(' + img + ');">';
	tag += '</div>';
	tag += '<div class="page_container">';
	tag += '<form id="accountForm" action="insertAccount" method="POST" enctype="multipart/form-data">';
	tag += '<div class="container container_mt-5">';
	tag += '<div class="row tm-content-row">';
	tag += '<div class="tm-block-col tm-col-account-settings">';
	tag += '<div class="tm-bg-primary-dark tm-block tm-block-settings">';
	tag += '<h2 class="tm-block-title">入庫</h2>';
	tag += '<div class="tm-signup-form row">';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="selectSub">材料名</label>';
	tag += '<select id="selectSub" size="1" name="selectSub" class="form-control validate select_mcserialNumber">';
	tag += '</select>';
	tag += '<span id="mcserialNumber1"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="userid">担当者</label>';
	tag += '<input id="userid" name="userid" type="text" class="form-control validate" value="" readonly="readonly" />';
	tag += '<span id="userid"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="rAmount">個数</label>';
	tag += '<input id="rAmount" name="rAmount" type="number" class="form-control validate" value ="0"/>';
	tag += '<span id="rAmount"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="accList">取引先</label>';
	tag += '<select id="accList" name="accList" class="form-control validate" value="">';
	tag += '</select>';
	tag += '<span id="accList"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="rComment">備考欄</label>';
	tag += '<input id="rComment" name="rComment" type="text" class="form-control validate"" value=""/>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</form>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '<div class="info_button_container">';
	tag += '<button type="button" id="regist1" name="regist1" class="btn btn-primary btn-sm detail_btn">입고 등록</button>';
	tag += '<button type="button" id="cancel1" name="cancel1" class="btn btn-primary btn-sm detail_btn">취소</button>';
	tag += '</div>';

	$("#root").html(tag);
	detailoperation()

}


function reciept() {
	var scSerialNumber = $("#selectSub").val();
	var userid = $("#userid").val();
	var rAmount = $("#rAmount").val();
	var rComment = $("#rComment").val();
	var accountserial = $("#accList").val();
	var sendData = {
		"scSerialNumber": scSerialNumber,
		"userid": userid,
		"rAmount": rAmount,
		"rComment": rComment,
		"accountserial": accountserial
	};
	$.ajax({
		url: 'recieptReg',
		type: 'post',
		data: sendData,
		success: function (res) {

		}

	});
}

function stock() {

	var scSerialNumber = $("#selectSub").val();
	var userid = $("#userid").val();
	var sAmount = $("#rAmount").val();
	var sendData = {
		"scSerialNumber": scSerialNumber,
		"userid": userid,
		"sAmount": sAmount,

	};

	$.ajax({
		url: 'stockReg',
		type: 'post',
		data: sendData,
		success: function (res) {
		}
	});
}

function accListLoad() {
	$.ajax({
		url: 'accListLoad',
		type: 'post',
		success: outputAcc
	});
}

function outputAcc(res) {

	var tag = '';
	$.each(res, function (index, item) {
		tag += '<option value="' + item.accountserial + '">' + item.accountName +
			'</option>';
	});

	$("#accList").html(tag);
}

function subListLoad() {
	$.ajax({
		url: 'subListLoad',
		type: 'post',
		success: outputSub
	});
}

function outputSub(res) {

	var tag = '';
	$.each(res, function (index, item) {
		tag += '<option value="' + item.scSerialNumber + '" data-value="' +
			item.edate + '">' + item.sname + '</option>';
	});

	$("#selectSub").html(tag);
	$("#selectSub").on('change', function () {
		var data = $("#selectSub").val()
		chaingePicture(data);
	});

}

function chaingePicture(data) {
	var data = data;
	var sendata = {
		"scSerialNumber": data
	}
	$.ajax({
		url: 'chaingeSubClassPicture',
		type: 'post',
		data: sendata,
		success: chaingesubClassPicture
	});
}

function chaingesubClassPicture(data) {

	$(".bg-image").attr('style', 'background-image: url("resources/img/meterial/' + data.simg + '");')

}

/* */
function open_frozen_storage() {
	storage = 1;
	inputSelectStock(storage);

}

function open_cold_storage() {
	storage = 2;
	inputSelectStock(storage);
}

function open_storage() {
	storage = 3;
	inputSelectStock(storage);
}

function inputSelectStock(storage) {
	var storage = storage;
	sendData = {
		"location": storage
	}
	$.ajax({
		type: 'post',
		url: 'selectStockAsLocation',
		data: sendData,
		async: false,
		success: outputSelectStock
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
			function (index, item) {

				tag += '<tbody class="labels">';
				tag += '<tr>';
				tag += '<td colspan="6">';
				tag += '	<label for="' + item.scSerialNumber + '">' +
					item.sname + '</label>';
				tag += '<input type="checkbox" name="' +
					item.scSerialNumber + '" id="' +
					item.scSerialNumber +
					'" data-toggle="toggle">';
				tag += '</td>';
				tag += '</tr>';
				tag += '</tbody>';
				tag += '<tbody class="hide" id = "' +
					item.scSerialNumber +
					'"style="display: none;">';

				sendData = {
					"scSerialNumber": item.scSerialNumber
				}
				$
					.ajax({
						type: 'post',
						url: 'selectStockDetail',
						data: sendData,
						async: false,
						success: function (data2) {
							$
								.each(
									data2,
									function (index, item) {
										tag += '<tr>';
										tag += '<td>' +
											item.sserialNumber +
											'</td>';
										tag += '<td ><a href="#" class="detail_for_stock"  data-value = ' +
											item.sserialNumber +
											'>' +
											item.sname +
											'</a></td>';
										tag += '<td>' +
											item.mclass +
											'</td>';
										tag += '<td>' +
											item.samount +
											'/' +
											item.ramount +
											' ' +
											item.unit +
											'</td>';
										tag += '<td>' +
											item.sdate +
											'</td>';
										tag += '<td>' +
											item.deDate +
											'</td>';
										tag += '</tr>';
									});

						}
					});

				tag += '</tbody>';
			});
	tag += '</tbody>';
	$('.info_list').html(tag);

	$('[data-toggle="toggle"]').change(function () {
		$(this).parents().next('.hide').toggle();
	});
	$(".detail_for_stock").on('click', function () {
		serial = $(this).attr("data-value");
		DetailForminput(serial);
	});

}
function DetailForminput(serial){
	var serial = serial;
	sendData = {
			"sSerialNumber" : serial
	}
	$.ajax({
		type: 'post',
		url: 'selectOnebyserial',
		data: sendData,
		success:DetailForm
	})
}

function DetailForm(data) {

	tag = '';
	img = "resources/img/meterial/"+data.simg
	tag += '<div class="info_detail">';
	tag += '<div class="col-md-16 mb-4 detail_info">';
	tag += '<div class="blog d-block d-lg-flex">';
	tag += '<div class="bg-image" style="background-image: url(' + img + ');">';
	tag += '</div>';
	tag += '<div class="page_container">';

	tag += '<form id="accountForm" action="insertAccount" method="POST" enctype="multipart/form-data">';
	tag += '<div class="container container_mt-5">';
	tag += '<div class="row tm-content-row">';
	tag += '<div class="tm-block-col tm-col-account-settings">';
	tag += '<div class="tm-bg-primary-dark tm-block tm-block-settings">';
	tag += '<h2 class="tm-block-title">'+data.sname+'</h2>';
	tag += '<div class="tm-signup-form row">';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="selectSub">材料名</label>';
	tag += '<input id="selectSub" name="selectSub" type="text" class="form-control validate" value="'+data.mclass+'" readonly="readonly" />';
	tag += '<span id="selectSub"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="userid">担当者</label>';
	tag += '<input id="userid" name="userid" type="text" class="form-control validate" value="'+data.userid+'" readonly="readonly" />';
	tag += '<span id="userid"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="amount">個数</label>'
	tag += '<input id="amount" name="amount" type="text" class="form-control validate" value="'+data.samount+"/"+data.ramount+" "+data.unit+'" readonly="readonly" />';
	tag += '<span id="amount"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="accountName">取引先</label>';
	tag += '<input id="accountName" name="accountName" type="text" class="form-control validate" value="'+data.accountName +'" readonly="readonly" />';
	tag += '<span id="accountName"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="sdate">登録日</label>'
	tag += '<input id="sdate" name="sdate" type="text" class="form-control validate" value="'+data.sdate +'" readonly="readonly" />';
	tag += '<span id="sdate"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="rdate">賞味期限</label>';
	tag += '<input id="rdate" name="rdate" type="text" class="form-control validate" value="'+data.rdate +'" readonly="readonly" />';
	tag += '<span id="rdate"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="deDate">유통기한</label>'
	tag += '<input id="deDate" name="deDate" type="text" class="form-control validate" value="'+data.deDate +'" readonly="readonly" />';
	tag += '<span id="deDate"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="price">가격</label>';
	tag += '<input id="price" name="price" type="text" class="form-control validate" value="'+data.price +'" readonly="readonly" />';
	tag += '<span id="price"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="location">저장위치</label>'
		if (data.location == 2 ) {
			tag += '<input id="location" name="location" type="text" class="form-control validate" value="냉동" readonly="readonly" />';
		}else if(data.location == 1){
			tag += '<input id="location" name="location" type="text" class="form-control validate" value="냉장" readonly="readonly" />';
		}else{
			tag += '<input id="location" name="location" type="text" class="form-control validate" value="상온" readonly="readonly" />';
		}

	tag += '<span id="rAmount"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="foodCode">식품코드</label>';
	tag += '<input id="foodCode" name="foodCode" type="text" class="form-control validate" value="'+data.foodCode +'" readonly="readonly" />';
	tag += '<span id="foodCode"></span>';
	tag += '</div>';	
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="energyNumber">열량</label>'
	tag += '<input id="energyNumber" name="energyNumber" type="text" class="form-control validate" value="'+data.energyNumber +'" readonly="readonly" />';
	tag += '<span id="energyNumber"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="protein">단백질</label>';
	tag += '<input id="protein" name="protein" type="text" class="form-control validate" value="'+data.protein +'" readonly="readonly" />';
	tag += '<span id="protein"></span>';
	tag += '</div>';	
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="carbon">탄수화물</label>'
	tag += '<input id="carbon" name="carbon" type="text" class="form-control validate" value="'+data.carbon +'" readonly="readonly" />';
	tag += '<span id="carbon"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="sugar">당류</label>';
	tag += '<input id="sugar" name="sugar" type="text" class="form-control validate" value="'+data.sugar +'" readonly="readonly" />';
	tag += '<span id="sugar"></span>';
	tag += '</div>';		
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="natrium">나트륨</label>'
	tag += '<input id="natrium" name="natrium" type="text" class="form-control validate" value="'+data.natrium +'" readonly="readonly" />';
	tag += '<span id="natrium"></span>';
	tag += '</div>';
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="chole">콜레스테롤</label>';
	tag += '<input id="chole" name="chole" type="text" class="form-control validate" value="'+data.chole +'" readonly="readonly" />';
	tag += '<span id="chole"></span>';
	tag += '</div>';		
	
	
	tag += '<div class="form-group col-lg-6">';
	tag += '<label for="rComment">備考欄</label>';
	if (data.rcomment != null) {
		tag += '<input id="rComment" name="rComment" type="text" class="form-control validate"  value="'+data.rcomment+'" readonly="readonly"  />';
	}else{
		tag += '<input id="rComment" name="rComment" type="text" class="form-control validate"  value="" readonly="readonly"  />';

	}
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</form>';	
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '</div>';
	tag += '<div class="info_button_container">';
	tag += '<button type="button" id="uses" name="uses" class="btn btn-primary btn-sm detail_btn">사용하기</button>';
	tag += '<button type="button" id="proposal" name="proposal" class="btn btn-primary btn-sm detail_btn">폐기하기</button>';
	tag += '<button type="button" id="registration" name="registration" class="btn btn-primary btn-sm detail_btn">등록하기</button>';
	tag += '</div>';
	var serial = data.sserialNumber;
	var samount = data.samount;
	$("#root").html(tag);
	
	selectBtn(serial,samount);

	
	
	
}

function selectBtn(serial,samount){
	var serial = serial;
	var samount = samount;
	alert(serial +","+ samount)
	$("#registration").on("click", function(){
		createDetailForm();
	});
	$("#uses").on("click", function(){
		alert("사용 - serial : " + serial);
		var useamount = prompt("사용할 갯수를 입력해 주세요 최대 " + samount + "까지 가능합니다.", 0);
		if (useamount >0 && useamount <=samount) {
			alert("정상 사용 등록 되었습니다.")
			
			sendData = {
				"sSerialNumber" : serial,
				"sAmount" : useamount
			}
			$.ajax({
				type:'post',
				url: 'insertUses',
				data : sendData,
				success: createDetailForm
			})
			
		}else{
			alert("사용갯수가 잘못 되었습니다.")
		}
	});
	$("#proposal").on("click", function(){
		alert("폐기 - serial : " + serial);
		var useamount = samount
		if (confirm("정말 폐기 하시겠습니까.?")) {
			alert("정상적으로 폐기 되었습니다.")
			
			sendData = {
				"sSerialNumber" : serial,
				"sAmount" : useamount
			}
			$.ajax({
				type:'post',
				url: 'insertDisposal',
				data : sendData,
				success: createDetailForm
			})
			
		}else{
			alert("폐기를 취소합니다.")
		}
	});
	
}