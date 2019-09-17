var nowdate = '';
function setnowDate(){
	nowdate = startDate;
}
function checklistPage() {
	setnowDate(startDate);
	
	var sendData = {
		"rdate": startDate
	}
	$.ajax({
		type: 'POST',
		url: 'loadCheckList',
		data: sendData,
		success: function () {
			chekListOutput();
		}
	});
}

function output(data) {
	console.log(data.rdate)
}

function createCheckList() {
	var url = "insertCheckList";
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
 
		var insertcheckList = openDialog(url, name, option, function(win) {

		    //팝업창이 닫히게 될 때 실행 된 내용
		});




}