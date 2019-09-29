<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="page_content_odd">
	<div class="page_title_container"></div>
	<div class="page_container">
		<section>
			<div class="container">
				<div class="row" id="account_row">

				</div>
			</div>
		</section>
		<!-- .section -->
	</div>
</div>

<script>
function createCheckList() {
	var url = "insertAccount";
	var name = "popup test";
	var option = "width = 500, height = 500, top = 100, left = 200, location = no"

	var openDialog = function (uri, name, options, closeCallback) {
		var win = window.open(uri, name, options);

		var interval = window.setInterval(function () {
			try {
				if (win == null || win.closed) {
					window.clearInterval(interval);
					closeCallback(win);
				}
			} catch (e) {}
		}, 1000);
		return win;
	};

	var insertcheckList = openDialog(url, name, option, function (win) {
		checklistPage();
		//팝업창이 닫히게 될 때 실행 된 내용
	});
}

</script>