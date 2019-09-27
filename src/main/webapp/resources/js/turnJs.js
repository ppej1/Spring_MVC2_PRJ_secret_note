	function load() {

 			var mql = window.matchMedia("screen and (min-width: 768px)");
 			if (mql.matches) {
 				//console.log("1200px");
 				loadApp1();
 				$(window).resize(function () {
 					//console.log(window.innerWidth);
 					$('.flipbook').turn('size', window.innerWidth - 90, window.innerHeight - 45);
 				});

 			} else {
 				//console.log("768px");
 				loadApp2();
 				$(window).resize(function () {
 					//console.log(window.innerWidth);
 					$('.flipbook').turn('size', window.innerWidth, window.innerHeight);
 				});
 			}
 			mql.addListener(function (e) {
 				if (e.matches) {
 					//console.log("1200px");
 					$(window).resize(function () {
 						//console.log(window.innerWidth);
 						$('.flipbook').turn('size', window.innerWidth - 90, window.innerHeight - 45);
 					});
 				} else {
 					//console.log("768px");
 					$(window).resize(function () {
 						//console.log(window.innerWidth);
 						$('.flipbook').turn('size', window.innerWidth, window.innerHeight);
 					});
 				}
 			});

 			$('body').removeClass('no-js');

 	
 			main();
 			
 		}

 		function loadApp1() {

 			// Create the flipbook

 			$('.flipbook').turn({
 				// Width

 				width: window.innerWidth - 90,

 				// Height

 				height: window.innerHeight - 45,

 				// Elevation

 				elevation: 50,

 				// Enable gradients

 				gradients: true,

 				// Auto center this flipbook

 				autoCenter: true,
 				
 				when: {
 					turned: function(event, page, view) {
 			 			$("#checkCalendar1 > div.fc-toolbar.fc-header-toolbar > div.fc-left > div > button.fc-dayGridMonth-button.fc-button.fc-button-primary.fc-button-active").trigger("click");
 			 			$("#checkCalendar2 > div.fc-toolbar.fc-header-toolbar > div.fc-left > div > button.fc-dayGridMonth-button.fc-button.fc-button-primary.fc-button-active").trigger("click");
 			 			$("#StockCalendar1 > div.fc-toolbar.fc-header-toolbar > div.fc-left > div > button.fc-dayGridMonth-button.fc-button.fc-button-primary.fc-button-active").trigger("click");
 			 			$("#StockCalendar2 > div.fc-toolbar.fc-header-toolbar > div.fc-left > div > button.fc-dayGridMonth-button.fc-button.fc-button-primary.fc-button-active").trigger("click");
 			 			$("#UsageCalendar1 > div.fc-toolbar.fc-header-toolbar > div.fc-left > div > button.fc-dayGridMonth-button.fc-button.fc-button-primary.fc-button-active").trigger("click");
 			 			$("#UsageCalendar2 > div.fc-toolbar.fc-header-toolbar > div.fc-left > div > button.fc-dayGridMonth-button.fc-button.fc-button-primary.fc-button-active").trigger("click");

 			 			
 						var book = $(this),
 						currentPage = book.turn('page'),
 						pages = book.turn('pages');
 						set_even_button(currentPage);
 						nav();
 						
 					}		
 				}
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

 				autoCenter: true,
 				
 				
 				when:{
 					turned: function(event, page, view) {
 						$('.flipbook').turn("disable", true);
 						var book = $(this),
 						currentPage = book.turn('page'),
 						pages = book.turn('pages');
 						
 						set_even_button(currentPage);
 						nav();		
 					}		
 				}
 			});
 		}
 		// Load the HTML4 version if there's not CSS transform
		yepnope({
 			test: Modernizr.csstransforms,
 			yep: ['resources/lib/turn.js'],
 			nope: ['resources/lib/turn.html4.min.js'],
 			both: ['resources/css/main.css'],
 			complete: load
 		});
 		
 		/* 여기 까지 기본 코드 (중앙 )*/
 		/////  기능 관려 코드 
		
 		function set_even_button(currentPage){

			if (currentPage != 1) {
					$('.flipbook').turn("disable", true);
			}
			if(currentPage == 1 ){
				$('.flipbook').turn("disable", false);

			}else{
				tag = '';
				tag+=  '<a href="#" class="btn-userInfo"><i class="fas fa-user"></i></a>';
				tag+=  '<a href="#"class="log-out"><i class="fas fa-sign-out-alt"></i></a>';
				$('.selectICon_div').html(tag);
			}
		}				
		
		
		function nav(){
			$('.btn-go-menu').on('click', function () {
				location.href = "introducemenu";
			});	
			$('.btn-go-check').on('click', function () {
				location.href = "CheckListSystem";
			});	
	 	
			$('.btn-go-stock').on('click', function () {
				location.href = "StockListSystem";	
			});	
			$('.btn-go-use').on('click', function () {
				location.href = "UseDisposalSystem";		
			});	
			$('.btn-go-Analysis').on('click', function () {
				location.href = "ChartSystem";
			});	

			/* even button */

			$('.btn_plus_checkList').on('click', function () {
				createCheckList();
			});	
			$('.btn_plus').on('click', function () {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 1);
				$('.flipbook').turn("disable", true);
			});	
			$('.btn_minus').on('click', function () {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 1);
				$('.flipbook').turn("disable", true);
			});	
			$('.btn-userInfo').on('click', function () {
				updateUserInfo();
			});	
			$('.log-out').on('click', function () {
				console.log("logout");
				location.href = "logout";
			});	
			/* page 10 11 menu button */
			$('#storageBtn').on('click', function () {
				alert("상온을 클릭했음");
			});	
		}	

