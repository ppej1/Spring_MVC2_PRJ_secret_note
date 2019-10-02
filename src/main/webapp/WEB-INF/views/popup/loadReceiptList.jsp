<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootStrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- even ICON -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
	rel="stylesheet" />

<!-- main index page -->
<link rel="stylesheet" href="resources/template/css/animate.css">
<link rel="stylesheet"
	href="resources/template/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/template/css/magnific-popup.css">
<link rel="stylesheet"
	href="resources/template/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="resources/template/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/template/fonts/flaticons/font/flaticon.css">
<!-- Theme Style -->
<link rel="stylesheet" href="resources/template/css/style.css">
<link rel="stylesheet"
	href="resources/template/css/templatemo-style.css">
<link rel="shortcut icon" href="resources/img/chess.ico">

<!-- custum templet Style -->
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/pages_button.css">
<link rel="stylesheet" href="resources/css/backgroundImg.css">
</head>
<body>

	<div class="page_container_full" id="date_index"
		data-value="${selectDate}">
		<h4 data-value="">${selectDate}日入庫品目</h4>
		<div class="tm-block-scroll tm-block-list">
			<table id="receiptlistTable" class="table tablelist">
			</table>
		</div>

	</div>

	<script type="text/javascript" src="resources/extras/jquery.min.1.7.js"></script>
	<script type="text/javascript" src="resources/js/receiptpopup.js"></script>

</body>
</html>