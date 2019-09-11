<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	document.getElementById("currentDate").value = new Date().toISOString()
			.substring(0, 10);
	document.getElementById("currentDate").disabled = true;
</script>
<div class="page_content_even">
	<!-- odd page  main -->
	<div class="page_title_container">
		<div class="page_title_container_div">
			<h1>사용 이력</h1>
		</div>
	</div>
	<div class="page_container">
		<table class="table">
			<caption>List of users</caption>
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">분류</th>
					<th scope="col">재료명</th>
					<th scope="col">수량</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>육류</td>
					<td>돼지고기</td>
					<td>200g</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>야채</td>
					<td>양파</td>
					<td>20개</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>어패류</td>
					<td>홍합</td>
					<td>2000개</td>
				</tr>
			</tbody>
		</table>

		<footer class="blockquote-footer">
			<cite title="Source Title"> <input type="date"
				id="currentDate">
			</cite>
		</footer>
	</div>
</div>