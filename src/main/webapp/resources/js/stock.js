
function main(){
	$('.flipbook').turn("disable", false);
	$('.flipbook').turn("page", 2);
	$('.flipbook').turn("disable", true);
	calendarPage08();
	calendarPage09();
	}



function reciept(){

var scSerialNumber  = $("#selectSub").val();
var userid  = $("#userid").val();
var rAmount  = $("#rAmount").val();
var rComment  = $("#rComment").val();
var accountserial  = $("#accList").val();

var sendData = {
		"scSerialNumber": scSerialNumber,
		"userid": userid,
		"rAmount": rAmount,
		"rComment": rComment,
		"accountserial": accountserial
	};

$.ajax({
	url:'recieptReg',
	type: 'post',
	data: sendData,
	success: function(res){
		alert("reciept등록완료")
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
	url:'stockReg',
	type: 'post',
	data: sendData,
	success: function(res){
		alert("stock등록완료")
	}
});	
}

function accListLoad(){
$.ajax({
	url:'accListLoad',
	type: 'post',
	success: outputAcc
});	
}

function outputAcc(res){

var tag = '';
$.each(res, function (index, item) {
	tag += '<option value="'+ item.accountserial +'">'+ item.accountName +'</option>';	
});

$("#accList").html(tag);
}

function subListLoad(){
$.ajax({
	url:'subListLoad',
	type: 'post',
	success: outputSub	
});	
}

function outputSub(res){

var tag = '';
$.each(res, function (index, item) {
	tag += '<option value="'+ item.scSerialNumber +'" data-value="'+item.edate+'">'+ item.sname +'</option>';	
});

$("#selectSub").html(tag);
}




/* */
function open_frozen_storage(){
	alert("냉동을 클릭했음");
	storage = 1;
	inputSelectStock(storage);
	
}

function open_cold_storage(){
	alert("냉장을 클릭했음");
	storage = 2;
	inputSelectStock(storage);
}

function open_storage(){
	alert("상온을 클릭했음");
	storage = 3;
	inputSelectStock(storage);
}


function inputSelectStock(storage){
	var storage = storage;
	alert(storage);
	sendData = {
			"location": storage
	}
	$.ajax({
		type: 'post',
		url : 'selectStockAsLocation',
		data : sendData,
		success: outputSelectStock
	});

}


function outputSelectStock(data){
	var tag ='';
	$.each(data, function ( index, item){
		
		tag +='<tbody class="labels">';
		tag +='<tr>';
		tag +='<td colspan="5">';
		tag +='	<label for="'+item.scSerialNumber+'">'+item.sname+'</label>';
		tag +='<input type="checkbox" name="'+item.scSerialNumber+'" id="'+item.scSerialNumber+'" data-toggle="toggle">';
		tag +='</td>';
		tag +='</tr>';
		tag +='</tbody>';
		tag +='<tbody class="hide" id = "'+item.scSerialNumber+'"style="display: none;">';
		tag +='</tbody>';
		
	});
		$('.main_tbody').html(tag);
		$('[data-toggle="toggle"]').change(function () {
			$(this).parents().next('.hide').toggle();
		});
		


				
		
		


}