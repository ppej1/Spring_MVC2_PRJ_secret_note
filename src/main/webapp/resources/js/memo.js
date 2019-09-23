function memoListPage(){
	$.ajax({
		type: 'POST',
		url: 'loadAllMemo',
		success: loadAllMemo
	});
	
	$(".tm-product-serial").on('click',function(){
		alert($(this).attr("data-value"))
	});
}

function loadAllMemo(data){
	
}