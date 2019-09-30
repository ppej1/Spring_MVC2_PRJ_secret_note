
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