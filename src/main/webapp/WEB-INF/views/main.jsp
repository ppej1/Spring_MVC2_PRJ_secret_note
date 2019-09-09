 <%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>

 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
 <html lang="ko" class="no-js">

 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	function main(){
	
			//$('.flipbook').turn("disable", true);
	
		
			$('#btnGo').on('click', function () {
	
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 2);
				$('.flipbook').turn("disable", true);
			});
	
	
			$("#btn_login").on('click', function () {
				alert("ddd");
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 14);
				$('.flipbook').turn("disable", true);
			})
	
		
	}


	</script>
 </head>

 <body class="no-js">

 	<div class="flipbook-viewport">
 		<div class="flipbook-container">

 			<div class="flipbook">
 				<!--1 page - title page-->
 				<div -ms-overflow-style: none; id="title_page">
 					<div class="page_content_odd title_content_odd">
 						<jsp:include page="page/page_title.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>
 					</div>
 					<!--2 page mainpage 1-->
 					<div id="page_02">
 						<jsp:include page="page/button_even.jsp"/>
 						<jsp:include page="page/page_02.jsp"/>
 					</div>
 					<!--3 page main page 2-->
 					<div id="page_03">
 						<jsp:include page="page/page_03.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>
 					</div>
 					<!--4 page 체크리스트 왼쪽 -->
 					<div id="page_04">
 						<jsp:include page="page/button_even.jsp"/>
 						<jsp:include page="page/page_04.jsp"/>
 					</div>
 					<!--5 page 체크리스트 오른쪽 -->
 					<div id="page_05">
 						<jsp:include page="page/page_05.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>
 					</div>
 					<!--6 page 체크리스트 -->
 					<div id="page_06">
 						<jsp:include page="page/button_even.jsp"/>
 						<jsp:include page="page/page_06.jsp"/>
 					</div>
 					<!--7 page 코멘트-->
 					<div id="page_07">
 						<jsp:include page="page/page_07.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>
 					</div>
 					<!-- 재고관리  -->
 					<!--6 page 체크리스트 -->

 					
 					<!--last  page-->
 					<div id="last_page">
 						<jsp:include page="page/page_last.jsp"/>

 					</div>
 				</div>

 			</div>
 		</div>


	<!-- turn.js 관련  -->

 	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script> 	
	<script src="resources/js/turnJs.js"></script>
 </body>

 </html>