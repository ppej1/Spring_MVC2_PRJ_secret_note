  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
 <html lang="ko" class="no-js">

 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<title>店長のシークレットノート</title>

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
	<link rel="stylesheet" href="resources/css/useDisposalStyle.css">


    <!-- custum templet Style -->
	<link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/pages_button.css">
	<link rel="stylesheet" href="resources/css/backgroundImg.css">
	
	<link href='resources/js/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
	<link href='resources/js/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />

	
 </head>
 <body class="no-js">

 	<div class="flipbook-viewport">
 		<div class="flipbook-container">

 			<div class="flipbook">
 				<!--1 page - title page-->
 					<div -ms-overflow-style: none; id="title_page">

 					</div>
 					<!--12 page 사용 달력 1-->
 					<div id="page_12">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_12.jsp" flush="false"/>
 					</div>
 					<!--13 page 사용 달력 2-->
 					<div id="page_13">
 						<jsp:include page="page/page_13.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--14 page 사용 페이지 1-->
 					<div id="page_14">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_14.jsp" flush="false"/>
 					</div>
 					<!--15 page 사용 페이지 2-->
 					<div id="page_15">
 						<jsp:include page="page/page_15.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--18 page 폐기 페이지 1-->
 					<div id="page_16">
 						<jsp:include page="page/button_even.jsp" flush="false"/>
 						<jsp:include page="page/page_16.jsp" flush="false"/>
 					</div>
 					<!--19 page 폐기 페이지 2-->
 					<div id="page_17">
 						<jsp:include page="page/page_17.jsp" flush="false"/>
 						<jsp:include page="page/button_odd.jsp" flush="false"/>
 					</div>
 					<!--last  page-->
 					<div id="last_page">
 						<jsp:include page="page/page_last.jsp" flush="false"/>

 					</div>
 				

 			</div>
 		</div>
	</div>
	
	<script src='resources/js/fullcalendar/lib/moment.min.js'></script>
	<script src="resources/template/js/jquery-3.4.1.min.js"></script>
	<script src='resources/js/fullcalendar/fullcalendar.min.js'></script>

	<!-- turn.js 관련  -->
	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script type="text/javascript" src="resources/js/turnJs.js"></script>	

	<!-- userInfo 관련 -->	
	<script src="resources/js/employee.js"></script>

   	<!-- main -->
    <script src="resources/template/js/popper.min.js"></script>
    <script src="resources/template/js/bootstrap.min.js"></script>
    <script src="resources/template/js/owl.carousel.min.js"></script>
    <script src="resources/template/js/jquery.waypoints.min.js"></script>
    <script src="resources/template/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/template/js/magnific-popup-options.js"></script>
    <script src="resources/template/js/main.js"></script>


	<!-- anychart -->
  	<script src="resources/js/anychart/js/regression.min.js"></script>
  	<script src="resources/js/anychart/js/anychart-base.min.js"></script>
  	<script src="resources/js/anychart/js/anychart-exports.min.js"></script>
  	<script src="resources/js/anychart/js/anychart-ui.min.js"></script>
  	<script src="resources/js/anychart/css/anychart-font.css"></script>
  	<script src="resources/js/anychart/css/anychart-ui.min.css"></script>

	<!-- service -->
	<script type="text/javascript" src="resources/js/page/UseDisposalSystem.js"></script>			
	<script type="text/javascript" src="resources/js/calendar.js"></script>	
	<script type="text/javascript" src="resources/js/uses.js"></script>	
	<script type="text/javascript" src="resources/js/disposal.js"></script>	


	<script>
	function main(){
		$('.flipbook').turn("disable", false);
		$('.flipbook').turn("page", 2);
		$('.flipbook').turn("disable", true);
		
		calendarPage12();
		calendarPage13();

	}
	</script>

 </body>

 </html>