  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 		.info_list{
			width: 100%;
		}
		.labels tr td {
			background-color: #4fe153;
			font-weight: bold;
			color: #fff;
		}

		.label tr td label {
			display: block;
		}

		[data-toggle="toggle"] {
			display: none;
		}
 		
	</style>
	<!-- bootStrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<!-- even ICON -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet"/>	
	<!-- main index page -->
    <link rel="stylesheet" href="resources/template/css/animate.css">
    <link rel="stylesheet" href="resources/template/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/template/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/template/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="resources/template/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/template/fonts/flaticons/font/flaticon.css">
    <!-- Theme Style -->
    <link rel="stylesheet" href="resources/template/css/style.css">
	<link rel="stylesheet" href="resources/template/css/templatemo-style.css">		
	 <link rel="shortcut icon" href="resources/img/chess.ico">
    <!-- custum templet Style -->
	<link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/pages_button.css">
	<link rel="stylesheet" href="resources/css/backgroundImg.css">
	
 </head>
 <body class="no-js">

 	<div class="flipbook-viewport">
 		<div class="flipbook-container">

 			<div class="flipbook">
 				<!--1 page - title page-->
 					<div -ms-overflow-style: none; id="title_page">
 						<jsp:include page="page/page_title.jsp" flush="false"/>
 						<%--  <jsp:include page="page/button_odd.jsp" flush="false"/> --%>
 					</div>
 					<!--2 page mainpage 1-->
 					<div id="page_02">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_02.jsp" flush="false"/>
 					</div>
 					<!--3 page main page 2-->
 					<div id="page_03">
 						<jsp:include page="page/page_03.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 
 					<!--last  page-->
 					<div id="last_page">
 						<jsp:include page="page/page_last.jsp" flush="false"/>

 					</div>
 				

 			</div>
 		</div>
	</div>
	
	<script src="resources/template/js/jquery-3.4.1.min.js"></script>

	<!-- turn.js 관련  -->
	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script type="text/javascript" src="resources/js/turnJs.js"></script>	

   	<!-- main -->
    <script src="resources/template/js/popper.min.js"></script>
    <script src="resources/template/js/bootstrap.min.js"></script>
    <script src="resources/template/js/owl.carousel.min.js"></script>
    <script src="resources/template/js/jquery.waypoints.min.js"></script>
    <script src="resources/template/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/template/js/magnific-popup-options.js"></script>
    <script src="resources/template/js/main.js"></script>
    <script src="resources/js/account.js"></script>
    
	<script type="text/javascript" src="resources/js/page/introducemenu.js"></script>		

	
	<script>
	function main(){
		
	}
	</script>
		





 </body>

 </html>