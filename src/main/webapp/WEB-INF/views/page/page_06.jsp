<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="page_content_even">
	<!-- even page   -->
	<div class="page_title_container">
		<div class="page_title_container_div">
			<h1>Check List</h1>
		</div>
	</div>
	<div class="page_container">
		<div class="alert alert-primary" role="alert">
			<table>
				<tr>
					<td>제목</td>
					<td>중요도</td>
					<td>완료여부</td>
					<td>입력한 유저</td>
					<td>입력 날짜</td>
					<td>완료 유저</td>
					<td>완료 날짜</td>
					<td>기한</td>
				</tr>
			</table>
		</div>
		<div class="checkListBtn_Div">
			<button type="button" class="btn btn-primary">check</button>
		</div>


		<div class="alert alert-primary" role="alert">
			<div class="row">
				<div class="col">
				  제목	
				</div>
				<div class="col-md-auto">
				  기한
				</div>
				<div class="col col-lg-2">
				  중요도
				</div>
			  </div>
			  <div class="row">
				<div class="col">입력 날짜</div>
				<div class="col">입력 유저</div>
				<div class="col">완료날짜</div>
				<div class="col">완료유저</div>
			  </div>
		</div>

		<div class="checkListBtn_Div">
			<button type="button" class="btn btn-primary">check</button>
		</div>

	</div>


</div>