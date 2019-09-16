<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    						<!-- title page -->
					<div class="title_head">

							<h1>delicious01</h1>
						</div>
						<div class="title_main">
							<div class="title_content">
								<img src= "resources/img/employee/${userimage}" width="164px" height="215px"/>
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