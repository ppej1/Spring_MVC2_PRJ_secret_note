<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<title>店長のシークレットノート</title>
	<style>
		body {
		}

		.no-js {
			display: none;
		}
	</style>

	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

		<!-- page 01 02 -->
	<link rel="stylesheet" href="resources/template/css/bootstrap.min_signup.css" />		
	<link rel="stylesheet" href="resources/template/css/templatemo-style.css">		
	<link rel="stylesheet" href="resources/template/css/templatemo-style-login.css">		


		<!-- custom -->
	<link href="resources/css/main.css" rel="stylesheet">
	<link href="resources/css/pages_button.css" rel="stylesheet">
	<link href="resources/css/backgroundImg.css" rel="stylesheet">
	<link href="resources/css/login.css" rel="stylesheet">
	<link rel="shortcut icon" href="resources/img/chess.ico">
	
</head>

<body class="no-js">

	<div class="flipbook-viewport">
		<div class="flipbook-container">

			<div class="flipbook">
				<!--1 page-->
				<div -ms-overflow-style: none; id="title_page">
					<jsp:include page="page/login.jsp" />
				</div>
				<div id="page_00">
					<jsp:include page="page/page_00.jsp" />
				</div>
				<!-- 회원가입 및 약관 -->
				<div id="page_01">
					<jsp:include page="page/page_01.jsp" />
				</div>

			</div>
		</div>
	</div>


	<!-- turn.js 관련  -->
	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script src="resources/js/turnJs.js"></script>
	    <script src="resources/template/js/bootstrap.min.js"></script>

	<script>
		function main() {
					alert("ddd");
			$('.flipbook').turn("disable", true);
			
			$('#btnSignup').on('click', function() {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 2);
				$('.flipbook').turn("disable", true);
			});
			$('#btnReturn').on('click', function() {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 1);
				$('.flipbook').turn("disable", true);
			});
		}
	</script>
	
	
</body>

</html>