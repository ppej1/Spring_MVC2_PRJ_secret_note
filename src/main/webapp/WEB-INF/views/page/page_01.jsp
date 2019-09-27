<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
span {
	color: red;
	font-size: small;
}
</style>


<!-- accessterm page   -->
<div class="page_content_odd">
	<div class="page_title_container">
		<div class="page_title_container_div"></div>
	</div>
	<div class="page_container">
		<form id="regForm" action="signup" method="POST" enctype="multipart/form-data">
			<div class="container mt-5">
				<div class="row tm-content-row">
					<div class="col-12 tm-block-col">
						<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
							<h2 class="tm-block-title">List of Accounts</h2>
							<p class="text-white">Accounts</p>
							<select class="custom-select" id="rank" name="rank">
								<option value="0">Select account</option>
								<option value="1">Admin</option>
								<option value="2">Editor</option>
								<option value="3">Merchant</option>
								<option value="4">Customer</option>
							</select>
						</div>
					</div>
				</div>
				<!-- row -->
				<div class="row tm-content-row">
					<div class="tm-block-col tm-col-avatar">
						<div class="tm-bg-primary-dark tm-block tm-block-avatar">
							<h2 class="tm-block-title">Change Picture</h2>
							<div class="tm-avatar-container">
								<img id="upload" src="resources/data/img/profile/avatar.png"
									alt="Avatar" class="tm-avatar img-fluid mb-4" /> <a href="#"
									class="tm-avatar-delete-link"> <i
									class="far fa-trash-alt tm-product-delete-icon"></i>
								</a>
							</div>
							<input id="eimg" name="upload" type="file" style="display: none;" />
							<span id = "imgresult"></span>
							<input type="button" class="btn btn-primary btn-block mx-auto"
								value="UPLOAD PRODUCT IMAGE"
								onclick="document.getElementById('eimg').click();" />
						</div>
					</div>
					<div class="tm-block-col tm-col-account-settings">
						<div class="tm-bg-primary-dark tm-block tm-block-settings">
							<h2 class="tm-block-title">Account Settings</h2>
							<div class="tm-signup-form row">
								<div class="form-group col-lg-6">
									<label for="userid">Account Id &nbsp;
										<button type="button" id="idcheck">check</button>
									</label> 
									<input id="userid" name="userid" type="text" class="form-control validate" />
									<span id="idresult"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="name">Account Name</label> 
									<input id="userName" name="userName" type="text" class="form-control validate" />
								</div>
								<div class="form-group col-lg-6">
									<label for="password">Password</label> 
									<input id="userpwd" name="userpwd" type="password" class="form-control validate" />
									<span id="pwdresult"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="re_password">Re-enter Password</label> <input
										type="password" id="re_password" class="form-control validate" />
									<span id="re_pwdresult"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="email">Account Email</label> <input id="email"
										name="email" type="email" class="form-control validate" />
								</div>
								<div class="form-group col-lg-6">
									<label for="phone">Phone</label> <input id="ePhone"
										name="ePhone" type="tel" class="form-control validate" />
								</div>
							</div>
							<div class="col-12">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="button"
									class="btn btn-primary btn-block text-uppercase" onclick="regdata();">Sign
									Up</button>
							</div>
							<div class="col-12">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="button"
									class="btn btn-primary btn-block text-uppercase" id="btnReturn">
									Return to login</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</div>