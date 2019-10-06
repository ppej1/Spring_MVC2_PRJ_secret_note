function turn() {
	$.ajax({
		type : 'POST',
		url : 'loadAccountList',
		success : AccountListOutput
	});
}

function AccountListOutput(data) {
	var tag = "";

	$
			.each(
					data,
					function(index, item) {
						tag += '<div class="col-md-16 mb-4">';
						tag += '<div class="blog d-block d-lg-flex">';
						var img = "resources/img/company/" + item.aimg ;
						tag += '<div class="bg-image" style="background-image: url('+ img +'); background-size: cover;"></div>';
						tag += '<div class="text">';
						tag += '<h3>' + item.accountName + '</h3>';
						tag += '<p>' + item.acontents + '</p>';
						tag += '<p>담당자 : ' + item.amanager + '</p>';
						tag += '<p>H.P : ' + item.aphone + '</p>';
						tag += '<p><a href="'+ item.aurl + '" class="btn btn-primary btn-sm" target="_blank">ホームページのショートカット</a></p>';
						tag += '</div>';
						tag += '</div>';
						tag += '</div>';
					});
	$("#account_row").html(tag);

}