		
 		function set_even_button(currentPage){
 			if(currentPage == 4 || currentPage== 5 ){
				var tag = '';
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
		