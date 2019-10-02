import React, {Component} from 'react';
export default class Subject extends Component{
	render(){
		return(
				<div class="info_detail">
				<div class="col-md-16 mb-4 detail_info">
					<div class="blog d-block d-lg-flex">
						<div class="bg-image">
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
															value="" readonly="readonly" />
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
		);
	}
}