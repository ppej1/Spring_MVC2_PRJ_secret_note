<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    .title_info{
    color : black;
    font-size : 20px;
    font-weight: bold;
    }
    </style>
<div class="page_content_odd_title title_content_odd">
    						<!-- title page -->
					<div class="title_head">
							<h1>delicious01</h1>
						</div>
						<div class="title_main">
							<div class="title_content" style="	background-image: url('resources/img/employee/${userimage}');	background-size: cover;">
							</div>
						</div>
						<div class="title_info">
								${sessionScope.loginId}<br>
								${sessionScope.loginName}<br>
								${useremail}<br>
								${userphone}<br>
						</div>
						<div class="title_footter">
							&copy;compuny-sesoc
						</div>
</div>