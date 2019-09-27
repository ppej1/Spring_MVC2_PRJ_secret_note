<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/template/js/jquery-3.2.1.min.js"></script>

<script>
	$(function() {
		var completes = $("#completes", opener.document).attr("data-value");
		$("#completes").val(completes);
		$("#createBtn").on('click', function() {
			var sendData = {
				"ckTitle" : $("#ckTitle").val(),
				"importance" : $("#importance").val(),
				"completes" : completes
			};
			$.ajax({
				type : 'POST',
				url : 'insertCheckList',
				data : sendData,
				success : function(data) {
					self.close();
				}
			});

		});
		$("#cancelBtn").on('click', function() {
			self.close();
		});
	});
</script>
</head>

<body>
	<h1>체크리스트 등록</h1>
	<form id="checklistform" action="insertCheckList" method="post">
		<label>내용</label> <input type="text" name="ckTitle" id="ckTitle"
			value=""> <label>난이도</label> <select name="importance"
			id="importance">
			<option value="상">상</option>
			<option value="중">중</option>
			<option value="하">하</option>
		</select> <input type="hidden" name="completes" id="completes">
	</form>
	<button type="button" id="createBtn">생성</button>
	<button type="reset" id="cancelBtn">취소</button>

</body>

</html>