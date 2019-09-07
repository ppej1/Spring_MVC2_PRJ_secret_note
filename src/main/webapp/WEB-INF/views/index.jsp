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
	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<script src="resources/js/turnJs.js"></script>
	<script>
function main() {		
			//$('.flipbook').turn("disable", true);

			$('#btnlogin').on('click',function(){
				$("#login_form").submit();
			});
	
		}
	</script>



	<!-- Css -->
	<link href="resources/css/basic.css"  rel="stylesheet">
	<link href="resources/css/page_button.css"  rel="stylesheet">
	<link href="resources/css/backgroundImg.css"  rel="stylesheet">
</head>

<body class="no-js">

	<div class="flipbook-viewport">
		<div class="container">

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
									id: <input type="text" name="userpwd">
								</form>
								<button type="button" id="btnlogin">
								전송
								</button>
						</div>
						<div class="title_footter">
							&copy;compuny-sesoc
						</div>

					</div>
					<div class="button_nav_odd">

					</div>
					

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

<!--  -->




</body>

</html>