<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
function fusedList() {
	$.ajax({
		type :'GET'
		, url : 'usedList'
		, success : output1
	})
}

function output1(resp) {
		var tag = '<thead>'
			tag += '<tr>'
			tag += '<th scope="col">NO.</th>'
			tag += '<th scope="col">분류</th>'
			tag += '<th scope="col">위치</th>'
			tag += '<th scope="col">재료명</th>'
			tag += '<th scope="col">담당자</th>'
			tag += '<th scope="col">직급</th>'
			tag += '<th scope="col">사용량</th>'
			tag += '<th scope="col">사용날짜</th>'
			tag += '</tr>'
			tag += '</thead>'
			
	 	$.each(resp, function(index, item){
	 		tag += '<tbody>'
		    tag += '<tr>'
			tag += '<th scope="row"><b>'+item.userialNumber+'</b></th>'
			tag += '<td>'+item.mclass+'</td>'
			tag += '<td><b>'+item.location+'</b></td>'		
			tag += '<td><b>'+item.sname+'</b></td>'
			tag += '<td><b>'+item.userName+'</b></td>'
			tag += '<td>'+item.rank+'</td>'
			tag += '<td>'+item.uamount+'</td>'
			tag += '<td>'+item.udate+'</td>'
			tag += '</tr>'
			tag += '</tbody>'
		})
		$("#newUsedList").html(tag);
	}

cusedList();
</script>

<div class="page_content_even">
	<div class="page_container_full">
		<h1 class="tm-block-title">USED LIST</h1>
		<div class="tm-block-scroll tm-block-list">
			<table id = "newUsedList" class="table tablelist">
				
			</table>
		</div>

	</div>
</div>