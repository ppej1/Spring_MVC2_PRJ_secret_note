var comment_num = -1;
function set_comment_num(){
	comment_num = co_num;
}
function memoListPage(){
	
	
	selectList(comment_num);
	
	$(".tm-product-serial").on('click',function(){
		alert($(this).attr("data-value"));
		co_num = $(this).attr("data-value");
		set_comment_num(co_num);
	});
	
	$("#button-comment").on('click',function(){
		insertComment(comment_num);

	});
	$("#title_comment").on('click',function(){
		co_num = -1;
		set_comment_num(co_num);
		alert(comment_num);
		

	});
	
}

function selectList(comment_num){
	
	var sendData = {
			"ckSerialNumber" : comment_num
	}
	$.ajax({
		type: 'POST',
		data : sendData,
		url: 'loadAllComment',
		success: loadAllComment
	});
	
}

function loadAllComment(data){
	alert("succ")
}

function insertComment(comment_num){
	alert(comment_num);
	comments = $("#comment_input").val();
	alert(comments);
	var sendData = {
			"ckSerialNumber" : comment_num,
			"comments" : comments
	}
	$.ajax({
		type: 'POST',
		data : sendData,
		url: 'insertComment',
		success: selectList
	});
}