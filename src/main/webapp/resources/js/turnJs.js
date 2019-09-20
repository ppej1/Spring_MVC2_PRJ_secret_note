	function load() {

 			var mql = window.matchMedia("screen and (min-width: 768px)");
 			if (mql.matches) {
 				//console.log("1200px");
 				loadApp1();
 				$(window).resize(function () {
 					//console.log(window.innerWidth);
 					$('.flipbook').turn('size', window.innerWidth - 100, window.innerHeight - 50);
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
 						$('.flipbook').turn('size', window.innerWidth - 100, window.innerHeight - 50);
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

 				width: window.innerWidth - 100,

 				// Height

 				height: window.innerHeight - 50,

 				// Elevation

 				elevation: 50,

 				// Enable gradients

 				gradients: true,

 				// Auto center this flipbook

 				autoCenter: true,
 				
 				when: {
 					turned: function(event, page, view) {
 						
 						var book = $(this),
 						currentPage = book.turn('page'),
 						pages = book.turn('pages');
 						
 						set_even_button(currentPage);
 						nav();
 						
 				}		
 				}
 			});
 		}
 		
 		
 		
 		
 		function set_even_button(currentPage){
 			if(currentPage == 10 || currentPage == 11 ){
					var tag = '';
					tag+=  '<a href="#" class="btn_plus"><i class="fas fa-plus-square"></i></a>';
					tag+=  '<a href="#" class="btn_minus"><i class="fas fa-minus-square"></i></a>';
					tag+=  '<a href="#" class="btn-userInfo"><i class="fas fa-user"></i></a>';
					tag+=  '<a href="#"class="log-out"><i class="fas fa-sign-out-alt"></i></a>';
					$('.selectICon_div').html(tag);
				}else if(currentPage == 6 || currentPage== 7 ){
					var tag = '';
					tag+=  '<a href="#" class="btn_plus_checkList"><i class="fas fa-book-medical"></i></a>';
					tag+=  '<a href="#" class="btn-userInfo"><i class="fas fa-user"></i></a>';
					tag+=  '<a href="#"class="log-out"><i class="fas fa-sign-out-alt"></i></a>';
					$('.selectICon_div').html(tag);
				}else{
					tag = '';
					tag+=  '<a href="#" class="btn-userInfo"><i class="fas fa-user"></i></a>';
					tag+=  '<a href="#"class="log-out"><i class="fas fa-sign-out-alt"></i></a>';
					$('.selectICon_div').html(tag);
				}
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

		function nav(){
			$('.btn-go-menu').on('click', function () {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 2);
				$('.flipbook').turn("disable", true);
			});	
			$('.btn-go-check').on('click', function () {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 4);
				$('.flipbook').turn("disable", true);
			});	
	 	
			$('.btn-go-stock').on('click', function () {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 8);
				$('.flipbook').turn("disable", true);	
			});	
			$('.btn-go-use').on('click', function () {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 12);
				$('.flipbook').turn("disable", true);		
			});	
			$('.btn-go-Analysis').on('click', function () {
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 18);
				$('.flipbook').turn("disable", true);
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
				$('.flipbook').turn("disable", false);
				$('.flipbook').turn("page", 1);
				$('.flipbook').turn("disable", true);
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

