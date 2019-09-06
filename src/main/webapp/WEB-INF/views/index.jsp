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
	<link href="resources/css/page_button.css"  rel="stylesheet">
	<script>
function main() {		
			$('.flipbook').turn("disable", true);

			$('#btnlogin').on('click',function(){
				alert("dd");
				$("#login_form").submit();
			});
	
		}
	</script>
<script>
import React from 'react';

import {render} from 'react-dom';
import Greeter from './Greeter';

ReactDOM.render(<Greeter />, document.getElementById('root'));

</script>
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
							<div id="root"></div>
							<script src="resources/js/webpack/home.js"></script>

							
							
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
					<div class="button_nav_even">
						<!-- even page   -->
						dfdsfsdf
						<button type="button" id="btnGo">
							tagdfdf
						</button>
						<button type="button" id="btnGo">
							tagdfdfd
						</button>
						<button type="button" id="btnGo">
							tag
						</button>
					</div>
					<div class="page_content_even">
						<!-- even page   -->

					</div>
				</div>
				<!--3 page-->
				<div id="page_3">
					<div class="page_content_odd">
						<!-- odd page  main -->


					</div>
					<div class="button_nav_odd">
						<!-- odd page  nav side -->
						dfdsfsdf
						<button type="button" id="btnGo">
							tagdfdf
						</button>
						<button type="button" id="btnGo">
							tagdfdfd
						</button>
						<button type="button" id="btnGo">
							tag
						</button>
					</div>
				</div>
				
				<!--last  page-->
				<div id="last_page">
						<div class="title_footter">
								&copy;compuny-sesoc
							</div>
				</div>
			</div>

		</div>
	</div>

<!--  -->




</body>

</html>