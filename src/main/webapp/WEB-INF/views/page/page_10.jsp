<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="page_content_even">
	<div class="page_container_full">
		<div class="info_page_container">
			<div class="info_detail_container">
				<div class="info_detail">
					<div class="col-md-16 mb-4 detail_info">
						<div class="blog d-block d-lg-flex">
							<div class="bg-image"
								style="background-image: url('resources/template/img/dishes_1.jpg');">
							</div>
							<div class="text">
								<form>
									<table id="regist">
										<tr>
											<th>시리얼 넘버</th>
											<td><input id="SN" type="text" name="SN" />
										</tr>
										<tr>
											<th>입고일</th>
											<td><input id="rDate" type="text" name="rDate" />
										</tr>
										<tr>
											<th>재료명</th>
											<td><input id="fName" type="text" name="fName" />
										</tr>
										<tr>
											<th>개수</th>
											<td><input id="amount" type="text" name="amount" />
										</tr>
										<tr>
											<th>위치</th>
											<td><select id="location" name="location">
													<option value="냉동">frozen</option>
													<option value="냉장">cold</option>
													<option value="상온">sangon</option>
											</select></td>
										</tr>
									</table>
								</form>
							</div>

						</div>
					</div>


				</div>
				<div class="info_button_container">
					<button type="button" class="btn btn-primary btn-sm detail_btn">사용하기</button>
					<button type="button" class="btn btn-primary btn-sm detail_btn">폐기하기</button>
					<button type="button" class="btn btn-primary btn-sm detail_btn">다듬기</button>
				</div>
			</div>
			<div class="info_select_container">
				<div class="info_select frozen_storage">
					<a href="#" id="frozen_storageBtn"><span>냉동</span></a>
				</div>
				<div class="info_select cold_storage">
					<a href="#" id="cold_storageBtn"><span>냉장</span></a>
				</div>
				<div class="info_select storage">
					<a href="#" id="storageBtn"><span>상온</span></a>
				</div>
			</div>
		</div>
	</div>
</div>

