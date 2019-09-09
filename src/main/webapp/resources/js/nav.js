			$(function(){
				navButton();
			});

function navButton(){
		$('.btn-go-menu').on('click', function () {
			$(".flipbook").turn("disable", false);
			$(".flipbook").turn("page", 2);
			$('.flipbook').turn("disable", true);
		});	
		$('.btn-go-check').on('click', function () {
			$(".flipbook").turn("disable", false);
			$(".flipbook").turn("page", 4);
			$('.flipbook').turn("disable", true);
		});
		}