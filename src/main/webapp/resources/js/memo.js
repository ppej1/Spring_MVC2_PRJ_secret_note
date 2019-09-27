var nowdate = '';
var comment_num = 0;

function setnowDate() {
	nowdate = startDate;
}

function set_comment_num() {
	comment_num = co_num;
}
$(function(){
	$("#button-comment").on('click', function () {
		insertComment(comment_num);

	});
})
function memoListPage() {
	setnowDate(startDate);

	selectList(comment_num);


	$(".tm-product-serial").on('click', function () {
		console.log($(this).attr("data-value"));
		co_num = $(this).attr("data-value");
		set_comment_num(co_num);
		selectList(comment_num);
	});

	$("#title_comment").on('click', function () {
		co_num = 0;
		set_comment_num(co_num);
		selectList(comment_num);
	});

}

function selectList(comment_num) {

	var sendData = {
		"ckSerialNumber": comment_num,
		"checkDate": nowdate
	}
	$.ajax({
		type: 'POST',
		data: sendData,
		dataType: 'json',
		url: 'loadAllComment',
		success: loadAllComment
	});

}

function loadAllComment(data) {
	tag = ' ';

	$.each(data, function (index, item) {
		console.log(item)
		tag += '<div class="media tm-notification-item">';
		tag += '<div class="tm-gray-circle"><img src="resources/img/employee/' + item.eimg + '" alt="Avatar Image" class="rounded-circle"></div>';
		tag += '<div class="media-body">';
		tag += ' <p class="mb-2">' + item.comments + '</p>';
		tag += ' <span class="tm-small tm-text-color-secondary">' + item.userid + '</span>';
		tag += '  <span class="tm-small tm-text-color-secondary">' + item.cdate + '</span>';
		tag += '  <span class="xbtn" data-value="' + item.cserialNumber + '">x</span>';
		tag += '</div> ';
		tag += ' </div>';
	});

	$("#tm-notification-items").html(tag);


	$(".xbtn").on('click', function () {
		cserialNumber = $(this).attr("data-value");
		deleteComment(cserialNumber)

	});
}

function deleteComment(cserialNumber) {
	var sendData = {
		"cserialNumber": cserialNumber
	}
	$.ajax({
		type: 'POST',
		data: sendData,
		dataType: 'json',
		url: 'deleteComment',
		success: function () {
			selectList(comment_num);
		}
	});


}


function insertComment(comment_num) {
			if(comment_num != 0){
				comments = $("#comment_input").val();
				var sendData = {
					"ckSerialNumber": comment_num,
					"comments": comments,
					"checkDate": nowdate
				}
				$.ajax({
					type: 'POST',
					data: sendData,
					url: 'insertComment',
					success: function () {
						selectList(comment_num);
					}
				});
			}else{
				alert("체크리스트를 선택해 주세요 ")
			}

}