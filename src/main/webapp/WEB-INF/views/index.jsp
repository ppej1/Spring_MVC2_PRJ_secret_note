 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
	<script type="text/javascript" src="resources/extras/modernizr.2.5.3.min.js"></script>
	<style>

	</style>

	<script>
	$(function(){
		$('#btnlogin').on('click',function(){
			alert("dd");
			$("#login_form").submit();
		})
	})
		function load() {
			var mql = window.matchMedia("screen and (min-width: 768px)");
			if (mql.matches) {
				console.log("1200px");
				loadApp1();
				$(window).resize(function () {
					console.log(window.innerWidth);
					$('.flipbook').turn('size', window.innerWidth - 100, window.innerHeight - 100);
				});

			} else {
				console.log("768px");
				loadApp2();
				$(window).resize(function () {
					console.log(window.innerWidth);
					$('.flipbook').turn('size', window.innerWidth, window.innerHeight);
				});
			}
			mql.addListener(function (e) {
				if (e.matches) {
					console.log("1200px");
					$(window).resize(function () {
						console.log(window.innerWidth);
						$('.flipbook').turn('size', window.innerWidth - 100, window.innerHeight - 100);
					});
				} else {
					console.log("768px");
					$(window).resize(function () {
						console.log(window.innerWidth);
						$('.flipbook').turn('size', window.innerWidth, window.innerHeight);
					});
				}
			});


			$('.flipbook').turn("disable", true);


			
		}

		function loadApp1() {

			// Create the flipbook

			$('.flipbook').turn({
				// Width

				width: window.innerWidth - 100,

				// Height

				height: window.innerHeight - 100,

				// Elevation

				elevation: 50,

				// Enable gradients

				gradients: true,

				// Auto center this flipbook

				autoCenter: true
			});
		}

		function loadApp2() {

			// Create the flipbook



			$('.flipbook').turn({
				// Width

				width: window.innerWidth,

				// Height

				height: window.innerHeight,

				// Elevation

				elevation: 50,

				// Enable gradients

				gradients: true,

				// Auto center this flipbook

				autoCenter: true
			});





		}
		// Load the HTML4 version if there's not CSS transform

		yepnope({
			test: Modernizr.csstransforms,
			yep: ['resources/lib/turn.js'],
			nope: ['resources/lib/turn.html4.min.js'],
			both: ['resources/css/basic.css'],
			complete: load
		});
		

	</script>

</head>

<body>

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



</body>

</html>