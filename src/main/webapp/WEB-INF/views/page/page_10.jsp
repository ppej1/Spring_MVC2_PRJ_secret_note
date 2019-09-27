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
							<div class="tm-product-table-container">
								<form>
									<table id="regist">
										<tr>
											<th>担当者</th>
											<td colspan="2"><input id="aManager" type="text"
												name="aManager" /></td>
											<td class="tm-product-name" colspan="2"><select
												id="account" name="account">
													<option value="OURHOME">OUR HOME</option>
													<option value="CJ">CJ</option>
													<option value="HYUNDAI">HYUNDAI</option>
													<option value="SAMSUNG">SAMSUNG</option>
											</select></td>
										</tr>

										<tr>
											<th>材料名</th>
											<td colspan="2"><input id="sName" type="text"
												name="sName" /></td>
										</tr>
										<tr>
											<th>個数</th>
											<td><input id="amount" type="text" name="amount" /></td>
											<td><select id="unit" name="unit">
													<option value="l">l</option>
													<option value="ml">ml</option>
													<option value="k">k</option>
													<option value="kg">kg</option>
													<option value="gae">個</option>
													<option value="bottle">本</option>
											</select></td>
										</tr>
										<tr>
											<th>価格</th>
											<td colspan="2"><input id="price" type="text"
												name="price" /></td>
										</tr>
										<tr>
											<th>廃棄予定日</th>
											<td colspan="2"><input id="deDate" type="date"
												name="deDate" /></td>
										</tr>
										<tr>
											<th>状態</th>
											<td colspan="2"><input id="status" type="text"
												name="status" /></td>
										</tr>
									</table>
								</form>
							</div>

						</div>
					</div>


				</div>
				<div class="info_button_container">
					<button type="button" id="regist" name="regist"
						class="btn btn-primary btn-sm detail_btn">입고 등록</button>
					<button type="button" id="cancel" name="cancel"
						class="btn btn-primary btn-sm detail_btn">취소</button>
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