<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Serif+JP:200,300,400,500,600,700,900&display=swap&subset=japanese"
	rel="stylesheet">
<style>
.title_info {
	color: black;
	font-size: 20px;
	font-weight: bold;
}
#title {
	font-family : 'Noto Serif JP', serif;
	font-size : 30px;
	font-weight: 700;
	color: #3CB371;
}
#headbox{
	float: left;
	width:30%;
	height:60%;
	box-sizing: border-box;
　　}
#mainbox{
	position:absolute; 
    top:50%; left:50%;
    margin-top:100px; margin-left:-100px; 
    width:200px; height:200px;
　　}
#infobox{
	position:absolute;
	top: 48%;
	left: 48%;
	margin-top:90px;
	margin-left:-100px;
	width:200px;
	height:150px;
	color: #fffbdc;
	background-color: #00000029;
	}
</style>
<div class="page_content_odd_title title_content_odd">
	<!-- title page -->
	<div class="title_head" id="headbox">
		<div id="title" style="writing-mode:tb-rl;">店長のシークレットノート</div>
	</div>
	<div class="title_main">
		<div class="title_content" id="mainbox"
			style="	background-image: url('resources/img/employee/${userimage}');	background-size: cover;">
		</div>
	</div>
	<div class="title_info" id="infobox">
		ID : ${sessionScope.loginId}<br>
		Name : ${sessionScope.loginName}<br>
		E-mail : ${useremail}<br> 
		Phone : ${userphone}<br>
	</div>
	<div class="title_footter">&copy;compuny-sesoc</div>
</div>