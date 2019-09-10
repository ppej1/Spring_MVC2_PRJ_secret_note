<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	document.getElementById("currentDate").value = new Date().toISOString().substring(0, 10);
	document.getElementById("currentDate").disabled = true;
</script>
<div class="page_content_even">
	<!-- odd page  main -->
	<div class="page_title_container">
		<div class="page_title_container_div">
			<h1>체크리스트 달력1</h1>
		</div>
	</div>
	<div class="page_container">

		<div class="alert alert-primary" role="alert" style="height:auto; width:90%;">
			<ul>
				<li>돼지고기</li>
				<li>쌀</li>
			</ul>
		</div>
		<div class="alert alert-success" role="alert" style="height:auto; width:90%;">
			<ul>
				<li>마늘</li>
				<li>떡</li>
				<li>계란</li>
			</ul>
		</div>
		<div class="alert alert-danger" role="alert" style="height:auto; width:90%;">
			<ul>
				<li>소고기</li>
			</ul>
		</div>
		<div class="alert alert-dark" role="alert" style="height:auto; width:90%;">
			<ul>
				<li>양파</li>
			</ul>
		</div>
		<footer class="blockquote-footer">
			<cite title="Source Title">
				<input type="date" id="currentDate">
			</cite>
		</footer>
	</div>
</div>