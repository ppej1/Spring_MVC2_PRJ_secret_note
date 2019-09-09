			$(function(){
				navButton();
			});

function navButton(){
			$('.btn-go-menu').on('click', function () {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 2);
				$('.flipbook').turn("disable", true);
				return;
			});	
			$('.btn-go-check').on('click', function () {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 4);
				$('.flipbook').turn("disable", true);
				return;
			});	
			$('.btn-go-stock').on('click', function () {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 8);
				$('.flipbook').turn("disable", true);
				return;
			});	
			$('.btn-go-use').on('click', function () {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 12);
				$('.flipbook').turn("disable", true);
				return;
			});	
			$('.btn-go-Disposal').on('click', function () {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 16);
				$('.flipbook').turn("disable", true);
				return;
			});	
			$('.btn-go-Analysis').on('click', function () {
				$(".flipbook").turn("disable", false);
				$(".flipbook").turn("page", 20);
				$('.flipbook').turn("disable", true);
				return;
			});
			return;
		}