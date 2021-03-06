<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet"/>
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
		<form id="accountForm" action="insertAccount" method="POST" enctype="multipart/form-data">
			<div class="container mt-5">

				<!-- row -->
				<div class="row tm-content-row">
					<div class="tm-block-col tm-col-avatar">
						<div class="tm-bg-primary-dark tm-block tm-block-avatar">
							<h2 class="tm-block-title">取引先 登録</h2>
							<div class="tm-avatar-container">
								<img id="upload" src="resources/img/company/nobrand.jpg"
									alt="Avatar" class="tm-avatar img-fluid mb-4" /> <a href="#"
									class="tm-avatar-delete-link" id="deleteImg"> <i
									class="far fa-trash-alt tm-product-delete-icon"></i>
								</a>
							</div>
							<input id="aimg" name="upload" type="file" style="display: none;" />
							<span id = "imgresult"></span>
							<input type="button" class="btn btn-primary btn-block mx-auto"
								value="UPLOAD COMPANY IMAGE"
								onclick="document.getElementById('aimg').click();" />
						</div>
					</div>
					<div class="tm-block-col tm-col-account-settings">
						<div class="tm-bg-primary-dark tm-block tm-block-settings">
							<h2 class="tm-block-title">取引先</h2>
							<div class="tm-signup-form row">
								<div class="form-group col-lg-6">
									<label for="accountName">会社名</label> 
									<input id="accountName" name="accountName" type="text" class="form-control validate" />
									<span id="accountName"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="aManager">担当マネージャー</label> 
									<input id="aManager" name="aManager" type="text" class="form-control validate" />
									<span id="aManager"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="aPhone">携帯電話</label>
									 <input type="text" id="aPhone" name="aPhone" class="form-control validate" />
									<span id="aPhone"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="acontents">内容</label> 
									<textarea rows="6" cols="50" id="acontents" name="acontents" class="form-control validate" ></textarea>								
								</div>
								<div class="form-group col-lg-6">
									<label for="aURL">会社のホームページ</label> 
									<input id="aURL" name="aURL" type="text" class="form-control validate" value="http://" />
								</div>
							</div>
							<div class="col-12 button_popup">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="button" class="btn btn-primary btn-block text-uppercase" onclick="regdata();">登録</button>
							</div>
							<div class="col-12">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="button" class="btn btn-primary btn-block text-uppercase" id="btnExit">キャンセル</button>
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
				$("#deleteImg").on("click", function() {
					deleteImage(); // 미리보기 함수
				})		
				$("#aimg").on("change", function() {
					previewImage(this); // 미리보기 함수
				});	
				
				$("#btnExit").on("click", function(){
					self.close();
				});
			});

			function previewImage(input) {
				// 이미지를 선택하면
				if (input.files && input.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						$("#upload").attr("src", e.target.result)
					}
					reader.readAsDataURL(input.files[0]);
				}
			};
			function deleteImage(){
				$("#upload").attr("src", "resources/img/company/nobrand.jpg")

			}
			function regdata(){
				$("#accountForm").submit();	
			}
		</script>
</body>
</html>