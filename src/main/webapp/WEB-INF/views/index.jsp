 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Css -->

	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>	

	<link href="resources/css/main.css"  rel="stylesheet">
	<link href="resources/css/pages_button.css"  rel="stylesheet">
	<link href="resources/css/backgroundImg.css"  rel="stylesheet">	
	
	<style>
	 	body {
 			background-color: black;
 		}

 		.no-js {
 			display: none;
 		}
	</style>

	<script>
	function main() {					
			$('#btnlogin').on('click',function(){
				$("#login_form").submit();
			});
			
			$('#btnSignup').on('click', function () {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 2);
				$('.flipbook').turn("disable", true);
			});
		}
	
	</script>



</head>

<body class="no-js">

	<div class="flipbook-viewport">
		<div class="flipbook-container">

			<div class="flipbook">
				<!--1 page-->
				<div -ms-overflow-style: none; id="title_page">
					<div class="page_content_odd title_content_odd">
						<!-- title page -->
						<div class="title_head">

							<h1>delicious</h1>

						</div>
						<div class="title_main">
								<div class="title_content">1:1 비율</div>
						
						</div>
						<div class="title_info">
								<form action="login" method="post" id="login_form">
									id: <input type="text" name="userid"><br>
									password: <input type="text" name="userpwd">
								</form>
								<button type="button" id="btnlogin">
									전송
								</button>
								<button type="button" id="btnSignup">회원가입</button>
						</div>
						<div class="title_footter">
							&copy;compuny-sesoc
						</div>
						

					</div>
					<div class="button_nav_odd">

					</div>
					

				</div>
	 					<!-- 인삿말 -->
						<div id="page_00">
	 						<jsp:include page="page/page_00.jsp"/>
	 					</div>
	 					
	 					<!-- 회원가입 및 약관 -->
		 				<div id="page_01">
		 					<jsp:include page="page/page_01.jsp"/>
		 				</div>

			</div>
		</div>
	</div>

<!--  -->



	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script src="resources/js/turnJs.js"></script>
</body>

</html>