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
							<h2 class="tm-block-title">材料登録</h2>
							<div class="tm-avatar-container">
								<img id="upload" src="resources/img/meterial/food.jpg"
									alt="Avatar" class="tm-avatar img-fluid mb-4" /> <a href="#"
									class="tm-avatar-delete-link" id="deleteImg"> <i
									class="far fa-trash-alt tm-product-delete-icon"></i>
								</a>
							</div>
							<input id="simg" name="upload" type="file" style="display: none;" />
							<span id = "imgresult"></span>
							<input type="button" class="btn btn-primary btn-block mx-auto"
								value="UPLOAD MATERIAL IMAGE"
								onclick="document.getElementById('simg').click();" />
						</div>
					</div>
					<div class="tm-block-col tm-col-account-settings">
						<div class="tm-bg-primary-dark tm-block tm-block-settings">
							<h2 class="tm-block-title">取引先</h2>
							<div class="tm-signup-form row">
								<div class="form-group col-lg-6">
									<label for="mcserialNumber">大分類</label> 
									<select id="mcserialNumber" size ="1" name="mcserialNumber"class="form-control validate select_mcserialNumber">
									
									</select>
									<span id="mcserialNumber1"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="sName">材料名</label> 
									<input id="sName" name="sName" type="text" class="form-control validate" />
									<span id="sName"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="unit">単位</label> 
									<select id="unit" name="unit"class="form-control validate">
									<option value="kg">kg</option>
									<option value="g">g</option>
									<option value="L">L</option>
									<option value="ml">ml</option>
									<option value="個">個</option>
									<option value="本">本</option>
									</select>
									<span id="unit"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="price">価格</label> 
									<input id="price" name="price" type="number" class="form-control validate" />
								</div>
								<div class="form-group col-lg-6">
									<label for="location">貯蔵位置</label> 
									<select id="location" name="location"class="form-control validate">
									<option value="1">冷凍</option>
									<option value="2">冷蔵</option>
									<option value="3">常温</option>
									</select>
									<span id="location"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="eDate">賞味期限</label> 
									<input id="eDate" name="eDate" type="number" class="form-control validate" />
								</div>
							</div>
							<div class="col-12 button_popup">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="button" class="btn btn-primary btn-block text-uppercase" id="btnSub">登録</button>
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
				MainClass();
				
				$("#btnSub").on("click", function(){
					subList();
				})

				$("#deleteImg").on("click", function() {
					deleteImage(); // 미리보기 함수
				})		
				$("#simg").on("change", function() {
					previewImage(this); // 미리보기 함수
				});	
				
				$("#btnExit").on("click", function(){
					self.close();
				});
			});
		
			function subList(){
				var mcserialNumber  = $("#mcserialNumber").val();
				var foodCode = $("#foodCode").val();
				var sName = $("#sName").val();
				var unit = $("#unit").val();
				var price = $("#price").val();
				var location = $("#location").val();
				var eDate = $("#eDate").val();
				
				var formData = new FormData(); // 첨부 파일을 ajax로 끌고가기위한 객체
				var inputFile = $("input[name='upload']");
				var files = inputFile[0].files;
				
				formData.append("upload", files[0]);
				
				var sImg ='';
				
				$.ajax({
					url : "subpic",
					async : false,
					data : formData,
					type : "POST",
					processData : false,
					contentType : false,
					success : function(resp){
						sImg = resp;
					}
				})

				var subList = {
					"mcserialNumber"  : mcserialNumber
					, "sImg" : sImg
					, "sName" : sName
					, "unit" : unit
					, "price" : price
					, "location" : location
					, "eDate" : eDate
				};
				
				$.ajax({
					type : "POST"
					, url : "insertSubclass"
					, async : false
					, data : subList
					, success : function(resp) {
						self.close();
					}
				});
			}
			
			function MainClass(){
				$.ajax({
					url:'selectMainClassList',
					type: 'post',
					success: outputMainClass	
				});
				
			}
			
			
			function outputMainClass(data){
				var tag = '';
				$.each(data, function (index, item) {
					tag += '<option value="'+ item.mcSerialNumber +'">'+ item.mclass +'</option>';	
				});
				$(".select_mcserialNumber").html(tag);

			}
			
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
				$("#upload").attr("src", "resources/img/meterial/food.jpg")

			}
			
		</script>
</body>
</html>