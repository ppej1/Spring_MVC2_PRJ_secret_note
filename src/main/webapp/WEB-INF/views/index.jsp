
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
<!-- Css -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap"
	rel="stylesheet">


<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/pages_button.css" rel="stylesheet">
<link href="resources/css/backgroundImg.css" rel="stylesheet">

<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="stylesheet"
	href="resources/template/css/templatemo-style.css">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
<!-- https://fontawesome.com/ -->
<link rel="stylesheet"
	href="resources/template/css/bootstrap.min_signup.css" />
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet"
	href="resources/template/css/templatemo-style_signup.css">
<!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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

	<!--  -->
	<script type="text/javascript"
		src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script src="resources/js/turnJs.js"></script>
	<script>
		function main() {
			//alert(".flipbook has " + $(".flipbook").turn("pages") + " pages");

			$('.flipbook').turn("disable", true);
			$('#btnlogin').on('click', function() {
				$("#login_form").submit();
			});

			$('#btnSignup').on('click', function() {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 2);
				$('.flipbook').turn("disable", true);
			});
		}
	</script>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')
	</script>

	<script src="resources/template/js/vendor/bootstrap.min.js"></script>

	<script src="resources/template/js/datepicker.js"></script>
	<script src="resources/template/js/plugins.js"></script>
	<script src="resources/template/js/main.js"></script>

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"
		type="text/javascript"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			// navigation click actions 
			$('.scroll-link').on('click', function(event) {
				event.preventDefault();
				var sectionID = $(this).attr("data-id");
				scrollToID('#' + sectionID, 750);
			});
			// scroll to top action
			$('.scroll-top').on('click', function(event) {
				event.preventDefault();
				$('html, body').animate({
					scrollTop : 0
				}, 'slow');
			});
			// mobile nav toggle
			$('#nav-toggle').on('click', function(event) {
				event.preventDefault();
				$('#main-nav').toggleClass("open");
			});
		});
		// scroll function
		function scrollToID(id, speed) {
			var offSet = 0;
			var targetOffset = $(id).offset().top - offSet;
			var mainNav = $('#main-nav');
			$('html,body').animate({
				scrollTop : targetOffset
			}, speed);
			if (mainNav.hasClass("open")) {
				mainNav.css("height", "1px").removeClass("in").addClass(
						"collapse");
				mainNav.removeClass("open");
			}
		}
		if (typeof console === "undefined") {
			console = {
				log : function() {
				}
			};
		}
	</script>
	<script src="resources/template/js/jquery-3.3.1.min.js"></script>
	<!-- https://jquery.com/download/ -->
	<script src="resources/template/js/bootstrap.min.js"></script>
	<!-- https://getbootstrap.com/ -->
</body>
</html>