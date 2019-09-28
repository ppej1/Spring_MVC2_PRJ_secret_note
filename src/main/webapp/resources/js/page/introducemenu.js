function turn(){
	$.ajax({
		type: 'POST',
		url: 'loadAccountList',
		success: AccountListOutput
	});
}



function AccountListOutput(data){
	var tag = "";
	
	$.each(data, function (index, item) {
		tag+='<div class="col-md-16 mb-4">';
		tag+='<div class="blog d-block d-lg-flex">';
		tag+='<div class="bg-image" style="background-image: url("resources/img/company/'+ item.aImg+'");"></div>';
		tag+='<div class="text">';
		tag+='<h3>'+item.accountName+'</h3>';
		tag+='<p>'+item.acontents+'</p>';
		tag+='<p>담당자 : '+ item.acontents +'</p>';
		tag+='<p>H.P : '+ item.acontents +'</p>';
		tag+='<p><a href="'+item.aURL+'" class="btn btn-primary btn-sm">ホームページのショートカット</a></p>';
		tag+='</div>';
		tag+='</div>';
		tag+='</div>';	
	});
	$("#account_row").html(tag);
	
	
}