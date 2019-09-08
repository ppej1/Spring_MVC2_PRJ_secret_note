 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
 <html lang="ko" class="no-js">

 <head>
 	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<style>
	 	body {
 			background-color: black;
 		}

 		.no-js {
 			display: none;
 		}
	</style>

	
	<!-- turn.js 관련  -->
 	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
 	
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
 	
 	

 	<!-- turn.js 커스텀  -->
 	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script src="resources/js/turnJs.js"></script>
	<link href="resources/css/basic.css"  rel="stylesheet">
	<link href="resources/css/page_button.css"  rel="stylesheet">
	<link href="resources/css/backgroundImg.css"  rel="stylesheet">

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
 		<div class="container">

 			<div class="flipbook">
 				<!--1 page-->
 				<div -ms-overflow-style: none; id="title_page">
 					<div class="page_content_odd title_content_odd">
 						<jsp:include page="page/page_title.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>
 					</div>
 					<!--2 page-->
 					<div id="page_2">
 						<jsp:include page="page/button_even.jsp"/>
 						<jsp:include page="page/page_2.jsp"/>
 					</div>
 					<!--3 page-->
 					<div id="page_3">
 						<jsp:include page="page/page_3.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>
 					</div>
 					<!--4 page-->
 					<div id="page_4">
 						<jsp:include page="page/button_even.jsp"/>
 						<jsp:include page="page/page_4.jsp"/>
 					</div>
 					<!--5 page-->
 					<div id="page_5">
 						<jsp:include page="page/page_5.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>
 					</div>
 					<!--6 page-->
 					<div id="page_6">
 						<jsp:include page="page/button_even.jsp"/>
 						<jsp:include page="page/page_6.jsp"/>
 					</div>
 					<!--7 page-->
 					<div id="page_7">
 						<jsp:include page="page/page_7.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>

 					</div>
 					<!-- page_set end -->
 					<!--8 page-->
 					<div id="page_8">
 						<jsp:include page="page/button_even.jsp"/>
 						<jsp:include page="page/page_8.jsp"/>

 					</div>
 					<!--9 page-->
 					<div id="page_9">
 						<jsp:include page="page/page_9.jsp"/>
 						<jsp:include page="page/button_odd.jsp"/>

 					</div>
 					<!-- page_set end -->
 					<!--last  page-->
 					<div id="last_page">
 						<jsp:include page="page/page_last.jsp"/>

 					</div>
 				</div>

 			</div>
 		</div>



 </body>

 </html>