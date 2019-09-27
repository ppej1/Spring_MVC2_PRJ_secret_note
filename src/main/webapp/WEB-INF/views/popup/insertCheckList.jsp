<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

	<!-- page 01 02 -->
	<link rel="stylesheet" href="resources/template/css/templatemo-style.css">
	<link rel="stylesheet" href="resources/template/css/templatemo-style-login.css">
	<!-- custom -->
	<link href="resources/css/main.css" rel="stylesheet">
	<link href="resources/css/pages_button.css" rel="stylesheet">
	<link href="resources/css/backgroundImg.css" rel="stylesheet">
	<link href="resources/css/login.css" rel="stylesheet">
	<link rel="shortcut icon" href="resources/img/chess.ico">
		<style>
	.button_popup.col-12 {
    margin-bottom: 10px;
	}	
	</style>
</head>

<body>

	<div class="page_container">
		<div class="container mt-5">

			<!-- row -->
			<div class="row tm-content-row">
				<div class="">
					<div class="tm-bg-primary-dark tm-block tm-block-settings">
						<form id="checklistform" action="insertCheckList" method="post">
							<h2 class="tm-block-title">取引先</h2>
							<div class="tm-signup-form row">

								<div class="form-group col-lg-6">
									<label for="importance">会社名</label>
									<select id="importance" name="importance" class="form-control validate">
										<option value="3">상</option>
										<option value="2">중</option>
										<option value="1">하</option>
									</select>
									<span id=""></span>
									<input type="hidden" name="completes" id="completes">
								</div>
								<div class="form-group col-lg-6">
									<label for="ckTitle">会社のホームページ</label>
									<input id="ckTitle" name="ckTitle" type="text" class="form-control validate" />
								</div>
							</div>
						</form>
						<div class="col-12 button_popup">
							<label class="tm-hide-sm">&nbsp;</label>
							<button type="button" class="btn btn-primary btn-block text-uppercase" id="createBtn">登録</button>
						</div>
						<div class="col-12">
							<label class="tm-hide-sm">&nbsp;</label>
							<button type="button" class="btn btn-primary btn-block text-uppercase" id="cancelBtn">キャンセル</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
	<script>
		$(function () {
			var completes = $("#completes", opener.document).attr("data-value");
			$("#completes").val(completes);
			$("#createBtn").on('click', function () {
				var sendData = {
					"ckTitle": $("#ckTitle").val(),
					"importance": $("#importance").val(),
					"completes": completes
				};
				$.ajax({
					type: 'POST',
					url: 'insertCheckList',
					data: sendData,
					success: function (data) {
						self.close();
					}
				});

			});
			$("#cancelBtn").on('click', function () {
				self.close();
			});
		});
	</script>
</body>

</html>