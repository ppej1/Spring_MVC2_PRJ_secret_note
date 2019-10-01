<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	#rComment {
		width: 220%
	}

	.form-control {
		height: 30px;
	}

	.page_container {
		width: 90%;
		height: 100%;
		margin: 0%;
		overflow: scroll;
	}

	.container {
		width: 100%;
		padding-right: 0px;
		padding-left: 0px;
		margin-right: auto;
		margin-left: auto;
	}

	.tm-block-col {
		margin-bottom: 0px;
	}

	.tm-block {
		padding: 20px;
	}
</style>
<div class="page_content_even">
	<div class="page_container_full">
		<div class="info_page_container">
			<div class="info_detail_container">
				<div class="info_detail">
					<div class="col-md-16 mb-4 detail_info">
						<div class="blog d-block d-lg-flex">
							<div class="bg-image" style="background-image: url('resources/template/img/dishes_1.jpg');">
							</div>
							<div class="page_container">
								<form id="accountForm" action="insertAccount" method="POST"
									enctype="multipart/form-data">
									<div class="container container_mt-5">
										<div class="row tm-content-row">
											<div class="tm-block-col tm-col-account-settings">
												<div class="tm-bg-primary-dark tm-block tm-block-settings">
													<h2 class="tm-block-title">取引先</h2>
													<div class="tm-signup-form row">
														<div class="form-group col-lg-6">
															<label for="selectSub">材料名</label>
															<select id="selectSub" size="1" name="selectSub"
																class="form-control validate select_mcserialNumber">

															</select>
															<span id="mcserialNumber1"></span>
														</div>
														<div class="form-group col-lg-6">
															<label for="userid">担当者</label>
															<input id="userid" name="userid" type="text"
																class="form-control validate"
																value="${sessionScope.loginId}" readonly="readonly" />
															<span id="userid"></span>
														</div>
														<div class="form-group col-lg-6">
															<label for="rAmount">個数</label>
															<input id="rAmount" name="rAmount" type="number"
																class="form-control validate" />
															<span id="rAmount"></span>
														</div>
														<div class="form-group col-lg-6">
															<label for="accList">取引先</label>
															<select id="accList" name="accList"
																class="form-control validate">

															</select>
															<span id="accList"></span>
														</div>
														<div class="form-group col-lg-6">
															<label for="rComment">備考欄</label>
															<input id="rComment" name="rComment" type="text"
																class="form-control validate" />
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>

						</div>
					</div>


				</div>
				<div class="info_button_container">
					<button type="button" id="regist1" name="regist1" class="btn btn-primary btn-sm detail_btn">입고
						등록</button>
					<button type="button" id="cancel1" name="cancel1"
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