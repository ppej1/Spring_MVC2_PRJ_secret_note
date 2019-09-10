<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
	<style>
		.comment_container {
			width: 90%;
			height: 73%;
			margin: 0% auto 2% auto;
			overflow-y: scroll;
		}
		.page_title_container {
			width: 100%;
			min-height: 10%;
		}
		.page_title_container_div {

			margin: 3% auto;
			margin-bottom: 2%;

			text-align: center;
			width: 90%;
			min-height: 90%
		}
		.page_title_container_div h1{
				font-family: 'Dancing Script', cursive;
				font-size: 2.7rem;
		}
		.comment_body_container {
			width: 100%;

		}



		.write-coment-container {
			margin:auto;
			width: 90%;
			height: 10%;
		}


		.card {
			width: 90%;
			margin: 0px auto;

		}

		.card-body {
			padding: 1rem;
		}

		.card-header {
			padding: .3rem 1rem;
		}
	</style>
</head>
<div class="page_content_odd">
	<!-- odd page  main -->
	<div class="page_title_container">
		<div class="page_title_container_div">
			<h1>MEMO</h1>
		</div>
	</div>
	<div class="comment_container">
		<div class="card border-primary mb-3">
			<div class="card-header">Header</div>
			<div class="card-body text-primary">
				<h5 class="card-title">Primary card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
					card's content. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea, quibusdam nobis,
					libero dolorem, alias id officiis nemo cum et vero repudiandae doloremque omnis molestias
					voluptatum possimus! Doloribus suscipit facilis id!</p>
			</div>
		</div>
		<div class="card border-secondary mb-3">
			<div class="card-header">Header</div>
			<div class="card-body text-secondary">
				<h5 class="card-title">Secondary card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
					card's content.</p>
			</div>
		</div>
		<div class="card border-success mb-3">
			<div class="card-header">Header</div>
			<div class="card-body text-success">
				<h5 class="card-title">Success card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
					card's content.</p>
			</div>
		</div>
		<div class="card border-danger mb-3">
			<div class="card-header">Header</div>
			<div class="card-body text-danger">
				<h5 class="card-title">Danger card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
					card's content.</p>
			</div>
		</div>
		<div class="card border-warning mb-3">
			<div class="card-header">Header</div>
			<div class="card-body text-warning">
				<h5 class="card-title">Warning card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
					card's content.</p>
			</div>
		</div>
		<div class="card border-info mb-3">
			<div class="card-header">Header</div>
			<div class="card-body text-info">
				<h5 class="card-title">Info card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
					card's content.</p>
			</div>
		</div>
		<div class="card border-light mb-3">
			<div class="card-header">Header</div>
			<div class="card-body">
				<h5 class="card-title">Light card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
					card's content.</p>
			</div>
		</div>
		<div class="card border-dark mb-3">
			<div class="card-header">Header</div>
			<div class="card-body text-dark">
				<h5 class="card-title">Dark card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the
					card's content.</p>
			</div>
		</div>
	</div>
	<div class="write-coment-container">
	<hr>
			<div class="input-group mb-3">
			  <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
			  <div class="input-group-append">
			    <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
			  </div>
			</div>
	</div>
</div>