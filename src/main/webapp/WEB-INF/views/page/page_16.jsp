<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
function fdisposalList() {
	$.ajax({
		type :'GET'
		, url : 'disposalList'
		, success : output3
	})
}

function output3(resp) {
		var tag = '<thead>'
			tag += '<tr>'
			tag += '<th scope="col">NO.</th>'
			tag += '<th scope="col">분류</th>'
			tag += '<th scope="col">위치</th>'
			tag += '<th scope="col">재료명</th>'
			tag += '<th scope="col">담당자</th>'
			tag += '<th scope="col">직급</th>'
			tag += '<th scope="col">폐기량</th>'
			tag += '<th scope="col">폐기날짜</th>'
			tag += '</tr>'
			tag += '</thead>'
			
	 	$.each(resp, function(index, item){
	 		tag += '<tbody>'
		    tag += '<tr>'
			tag += '<th scope="row"><b>'+item.dSerialNumber+'</b></th>'
			tag += '<td>'+item.mclass+'</td>'
			tag += '<td><b>'+item.location+'</b></td>'		
			tag += '<td><b>'+item.sname+'</b></td>'
			tag += '<td><b>'+item.userName+'</b></td>'
			tag += '<td>'+item.rank+'</td>'
			tag += '<td>'+item.damount+'</td>'
			tag += '<td>'+item.ddate+'</td>'
			tag += '</tr>'
			tag += '</tbody>'
		})
		$("#newDisposalList").html(tag);
	}

</script>

<div class="page_content_even">
	<div class="page_container_full">
		<h1 class="tm-block-title">DISPOSAL LIST</h1>
		<div class="tm-block-scroll tm-block-list">
			<table id = "newDisposalList" class="table tablelist">
				
			</table>
		</div>

	</div>
</div>