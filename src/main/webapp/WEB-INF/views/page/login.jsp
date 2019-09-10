<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
	<style>
		.title_head {
			width: 100%;
			height: 20%;
			text-align: center;
			padding-top: 4%;
			padding-bottom: 4%;
		}

		.title_head h1 {
			font-size: 3rem;
		}

		.title_center {
			width: 100%;
			height: 67%;
		}

		.title_bottom {
			width: 210px;
			height:13%;
			float: right;
		}
		.title_login{
			font-family: 'Dancing Script', cursive;
			font-size: 0.7rem;
			text-align: right;
		}
		.title_login div{
		padding-left: 3px;
		}
		
		.title_login input{
			width:100px;
			height:25px;
			border: none; background: transparent;		
		}
		
		#btnlogin{
		width: 50px;
		height: 50px;
		font-size: 1rem;
		padding: 6px;		
		background-color:transparent;  
		border:0px transparent solid;
		}

		.title_footter {
			position: absolute;
			bottom: 0;
			width: 100%;
			height: 20px;
			text-align: right;
			background-color: #4d9ff7;
		}
	</style>
</head>
<div class="page_content_odd title_content_odd">
	<!-- title page -->
	<div class="title_head">
		<h1>delicious</h1>
	</div>
	<div class="title_center">

	</div>
	<div class="title_bottom">
			<div class="title_login">
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
					<input type="text" class="form-control" id="InputID"placeholder="ID">

				</div>
				<div>
					<input type="password" class="form-control" id="InputPassword" placeholder="Password">
				</div>
			</div>
			<div style="float: left">
 			 <button type="button" id="btnlogin" class="btn btn-primary">電送</button>
			</div>	
			</form>
		</div>



	</div>
	<div class="title_footter">
		&copy;compuny-sesoc
	</div>


</div>