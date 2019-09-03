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


			//$('.flipbook').turn("disable", true);



			$('#btnGo').on('click', function () {

				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 2);
				//$('.flipbook').turn("disable", true);
			});


			$("#btn_login").on('click', function () {
				alert("ddd");
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 14);
				//$('.flipbook').turn("disable", true);
			})



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
	<script>
		$(function () {

		})
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
								ID:ppej1<br>
								박태원<br>
								ph:010.2548.2643<br>
								email:ppej1@naver.com
						</div>
						<div class="title_footter">
							&copy;compuny-sesoc
						</div>

					</div>
					<div class="button_nav_odd">
						<!-- title  nav side -->
						모두의 주방
						<button type="button" id="btnGo1">
							tagdfdf
						</button>
						<button type="button" id="btnGo2">
							tagdfdfd
						</button>
						<button type="button" id="btnGo">
							tag
						</button>
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
						Lorem ipsum dolor sit, amet consectetur adipisicing elit. Praesentium, quisquam excepturi rerum
						a blanditiis suscipit sed animi nihil, ipsam illum unde facere debitis aliquam expedita libero
						sequi, fugit molestiae laboriosam!
						Sed quia, dicta obcaecati dolore, corporis reprehenderit culpa saepe repellendus tenetur,


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
				<!--4 page-->
				<div id="page_4">
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
				<!--5 page-->
				<div id="page_5">
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
				<!--6 page-->
				<div id="page_6">
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
				<!--7 page-->
				<div id="page_7">
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
				<!--8 page-->
				<div id="page_8">
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
				<!--9 page-->
				<div id="page_9">
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
				<!-- page set-->
				<!--10 page-->
				<div id="page_10">
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
				<!--11 page-->
				<div id="page_11">
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
				<!-- page set-->
				<!--12 page-->
				<!-- page set-->
				<div id="page_12">
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
				<!--13 page-->
				<div id="page_13">
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
				<!-- page set-->
				<!--14 page-->
				<!-- page set-->
				<div id="page_14">
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
				<!--15 page-->
				<div id="page_15">
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
				<!-- page set-->
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