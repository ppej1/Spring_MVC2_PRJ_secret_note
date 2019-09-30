<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
function login() {
	var userid = document.getElementById("logid");
	var userpwd = document.getElementById("logpwd");
	if (userid.value == '' || userpwd.value.length == 0) {
		alert('ID와 비밀번호를 입력하세요.');
		userid.focus();
		return;
	}	
	var form = document.getElementById("login_form");
	form.submit();
}
</script>
<style>
.title_info {
	color: black;
	font-size: 20px;
	font-weight: bold;
}
p {
	font-family : 'Noto Serif JP', serif;
	font-size : 30px;
	font-weight: 700;
	color: #3CB371;
}
#headbox{
	float: left;
	width:30%;
	height:70%;
	margin-left:25px;
	box-sizing: border-box;
　　}
#bottombox{
	position:absolute; 
    top:50%; left:50%;
    margin-top:250px; margin-left:100px; 
    width:200px; height:850px;
    color : #871908;
　　}
</style>
</head>
<div class="page_content_odd_title title_content_odd">
	<!-- title page -->
	<div class="title_head" id="headbox">
		<p style="writing-mode:tb-rl;">店長のシークレットノート</p>
	</div>
	<div class="title_center">

	</div>
	<div class="title_bottom">
		<div class="title_login" id="bottombox">
			<form id="login_form" action="login" method="post">
				<div style="float: left">

					<div>
						<label for="InputID">ID : </label>

					</div>
					<div>
						<label for="InputPassword">PW : </label>

					</div>
				</div>
				<div style="float: left">
					<div>
						<input type="text" class="form-control" id="logid" name="logid" placeholder="ID">

					</div>
					<div>
						<input type="password" class="form-control" id="logpwd" name="logpwd" placeholder="Password">
					</div>
				</div>
				<div style="float: left">
					<button type="button" id="btnlogin" class="btn btn-primary" onclick="login();">電送</button>
				</div>
			</form>
			<div class="register">
				<a href="#" id="btnSignup">I DONT HAVE ID</a>
			</div>
		</div>




	</div>
	<div class="title_footter">
		&copy;compuny-sesoc
	</div>


</div>