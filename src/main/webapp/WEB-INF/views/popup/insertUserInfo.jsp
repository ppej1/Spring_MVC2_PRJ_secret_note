<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- page 01 02 -->
<link rel="stylesheet"
	href="resources/template/css/templatemo-style.css">
<link rel="stylesheet"
	href="resources/template/css/templatemo-style-login.css">
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
<script src="resources/template/js/jquery-3.2.1.min.js"></script>
<script>
	$(function() {
		var completes = $("#completes", opener.document).attr("data-value");
		$("#completes").val(completes);
		$("#createBtn").on('click', function() {
			var sendData = {
				"userName" : $("#userName").val(),
				"rank" : $("#rank").val(),
				"email" : $("#email").val(),
				"phone" : $("#phone").val(),
				"status" : $("#status").val(),
				"completes" : completes
			};
			$.ajax({
				type : 'POST',
				url : 'insertUserInfo',
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
	<h1>수정</h1>
	<div class="page_content_odd">
		<div class="page_title_container">
			<div class="page_title_container_div"></div>
		</div>
		<div class="page_container">
			<form id="regForm" action="signup" method="POST"
				enctype="multipart/form-data">
				<div class="container mt-5">
					<div class="row tm-content-row">
						<div class="col-12 tm-block-col">
							<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
								<h2 class="tm-block-title">List of Accounts</h2>
								<p class="text-white">Accounts</p>
								<select class="custom-select" id="rank" name="rank">
									<option value="0">店長</option>
									<option value="1">マネージャー</option>
									<option value="2">クルー</option>
									<option value="3">バイト</option>
								</select>
							</div>
						</div>
					</div>
					<!-- row -->
					<div class="row tm-content-row">
						<div class="tm-block-col tm-col-account-settings">
							<div class="tm-bg-primary-dark tm-block tm-block-settings">
								<h2 class="tm-block-title">Account Settings</h2>
								<div class="tm-signup-form row">
									<div class="form-group col-lg-6">
										<label for="userid">Account Id &nbsp;
											<button type="button" id="idcheck">check</button>
										</label> <input id="userid" name="userid" type="text" class="form-control validate" value="${loginUser.userid}" placeholder="ID" readonly="readonly" />
										<span id="idresult"></span>
									</div>
									<div class="form-group col-lg-6">
										<label for="name">Account Name</label> <input id="userName"
											name="userName" type="text" class="form-control validate" value="${loginUser.userName}" placeholder="Name" readonly="readonly"/>
									</div>
									<div class="form-group col-lg-6">
										<label for="password">Password</label> <input id="userpwd" name="userpwd" type="password" class="form-control validate" />
										<span id="pwdresult"></span>
									</div>
									<div class="form-group col-lg-6">
										<label for="re_password">Re-enter Password</label> <input type="password" id="re_password"
											class="form-control validate" /> <span id="re_pwdresult"></span>
									</div>
									<div class="form-group col-lg-6">
										<label for="email">Account Email</label> <input id="email" name="email" type="email" class="form-control validate" value="${loginUser.email}"/>
									</div>
									<div class="form-group col-lg-6">
										<label for="phone">Phone</label> <input id="ePhone" name="ePhone" type="tel" class="form-control validate" value="${loginUser.ePhone}"/>
									</div>
									<div class="form-group col-lg-6">
										<label for="status">status</label> <input id="status" name="status" type="text" class="form-control validate" value="${loginUser.status}"/>
									</div>
								</div>
								<div class="col-12">
									<label class="tm-hide-sm">&nbsp;</label>
									<button type="button" class="btn btn-primary btn-block text-uppercase" onclick="regdata();">修正完了</button>
								</div>
								<div class="col-12">
									<label class="tm-hide-sm">&nbsp;</label>
									<button type="button" class="btn btn-primary btn-block text-uppercase" id="btnReturn">修正取消</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		</form>
	</div>

	</div>
	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
	<script>
		$(function() {
			var completes = $("#completes", opener.document).attr("data-value");
			$("#completes").val(completes);
			$("#createBtn").on('click', function() {
				var sendData = {
					"userName" : $("#userName").val(),
					"email" : $("#email").val(),
					"ePhone" : $("#ePhone").val(),
					"status" : $("#status").val(),
					"completes" : completes
				};
				$.ajax({
					type : 'POST',
					url : 'insertUserInfo',
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
</body>

</html>