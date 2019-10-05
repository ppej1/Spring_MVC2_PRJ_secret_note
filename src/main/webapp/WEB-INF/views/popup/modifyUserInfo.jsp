<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>

<body>
	<h1>職員情報修正</h1>
	<div class="page_title_container">
		<div class="page_title_container_div"></div>
	</div>
	<div class="page_container">
		<form id="updateForm" action="insertUserInfo" method="POST"
			enctype="multipart/form-data">
			<div class="container mt-5">
				<div class="row tm-content-row">
					<div class="col-12 tm-block-col">
						<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
							<h2 class="tm-block-title">役柄</h2>
							<p class="text-white">Accounts</p>
							<div class="form-group col-lg-6">
								<label for="userName">役柄修正</label>
								<c:if test="${loginUser.rank == 1}">
									<input id="rank" name="rank" readonly="readonly" type="text"
										class="form-control validate" value="店長" />
								</c:if>
								<c:if test="${loginUser.rank == 2}">
									<input id="rank" name="rank" readonly="readonly" type="text"
										class="form-control validate" value="マネージャー" />
								</c:if>
								<c:if test="${loginUser.rank == 3}">
									<input id="rank" name="rank" readonly="readonly" type="text"
										class="form-control validate" value="クルー" />
								</c:if>
								<c:if test="${loginUser.rank == 4}">
									<input id="rank" name="rank" readonly="readonly" type="text"
										class="form-control validate" value="バイト" />
								</c:if>
							</div>
						</div>
					</div>
				</div>
				<!-- row -->
				<div class="row tm-content-row">
					<div class="tm-block-col tm-col-account-settings">
						<div class="tm-bg-primary-dark tm-block tm-block-settings">
							<h2 class="tm-block-title">個人情報の修正</h2>
							<div class="tm-signup-form row">
								<div class="form-group col-lg-6">
									<label for="userid">Account Id &nbsp;</label> <input
										id="userid" name="userid" type="text"
										class="form-control validate" value="${loginUser.userid}"
										readonly="readonly" /> <span id="idresult"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="userName">Account Name</label> <input id="userName"
										name="userName" type="text" class="form-control validate"
										value="${loginUser.userName}" />
								</div>
								<div class="form-group col-lg-6">
									<label for="userpwd">Password</label> <input id="userpwd"
										name="userpwd" type="password" class="form-control validate" />
									<span id="userpwd"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="email">Account Email</label> <input id="email"
										name="email" type="email" class="form-control validate"
										value="${loginUser.email}" />
								</div>
								<div class="form-group col-lg-6">
									<label for="ePhone">Phone</label> <input id="ePhone"
										name="ePhone" type="tel" class="form-control validate"
										value="${ephone}" />
								</div>
								<div class="form-group col-lg-6">
									<label for="status">現職/退職</label> <input id="status"
										name="status" type="text" class="form-control validate"
										value="${loginUser.status}" readonly="readonly" />
								</div>
							</div>
							<div class="col-12">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="button"
									class="btn btn-primary btn-block text-uppercase" id="btnUpdate">修正完了</button>
							</div>
							<br>
							<div class="col-12">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="button"
									class="btn btn-primary btn-block text-uppercase" id="btnReturn">修正取消</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
	<script>
		$(function() {
			$("#btnUpdate").on("click", function() {

				updateUSER();

			});

			$("#btnReturn").on("click", function() {
				self.close();
			});
		});

		function updateUSER() {
			sendData = {
				"rank" : $("#rank").val(),
				"userid" : $("#userid").val(),
				"userName" : $("#userName").val(),
				"userpwd" : $("#userpwd").val(),
				"email" : $("#email").val(),
				"ePhone" : $("#ePhone").val()
			}
			$.ajax({
				url : 'modifyUserInfo',
				type : 'post',
				data : sendData,
				success : function(data) {
					self.close();

				}
			});

		}
	</script>
</body>
</html>