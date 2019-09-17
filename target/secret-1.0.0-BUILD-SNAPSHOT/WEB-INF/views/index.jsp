 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

		

	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>	
	<!-- Css -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet">	
	

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

</head>

<body class="no-js">

	<div class="flipbook-viewport">
		<div class="flipbook-container">

			<div class="flipbook">
				<!--1 page-->
				<div -ms-overflow-style: none; id="title_page">
					<jsp:include page="page/login.jsp"/>
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
		<script>
	function main() {	
			//alert(".flipbook has " + $(".flipbook").turn("pages") + " pages");
			
 			$('.flipbook').turn("disable", true);
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
	
</body>

</html>