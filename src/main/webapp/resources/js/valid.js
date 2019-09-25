/**
 * 아이디, 비밀번호, 나이 검증 코드 제작자 : 나 제작일 : 그 날
 */
window.onload = function() {
	document.getElementById("userid").onkeyup = function() {
		var userid = document.getElementById("userid");
		var fc = userid.value.charAt(0);

		if (fc.toLowerCase() < 'a' || fc.toLowerCase() > 'z' || !isNaN(fc)) {
			document.getElementById("idresult").innerHTML = "아이디는 영문자로 시작하시오.";
			return false; // 이벤트를 끊음
		}

		if (userid.value.trim().length < 3 || userid.value.trim().length > 7) {
			document.getElementById("idresult").innerHTML = "아이디는 3~7자리로 다시 입력하시오.";
			return false;
		}

		document.getElementById("idresult").innerHTML = "";
	}
	var userpwd = document.getElementById("userpwd");
	document.getElementById("userpwd").onkeyup = function() {
		if (userpwd.value.length < 3 || userpwd.value.length > 7) {
			document.getElementById("pwdresult").innerHTML = "비밀번호는 3~7자리로 다시 입력하시오.";
			return false;
		}
		document.getElementById("pwdresult").innerHTML = "";
	}
	document.getElementById("re_password").onkeyup = function() {
		var re_password = document.getElementById("re_password");
		if (userpwd.value != re_password.value) {
			document.getElementById("re_pwdresult").innerHTML = "비밀번호가 일치하지 않습니다.";
			return false;
		}
		document.getElementById("re_pwdresult").innerHTML = "";
	}
	var eimg = document.getElementById("eimg");
	document.getElementById("eimg").onkeyup = function() {
		if (eimg.value.length < 1) {
			document.getElementById("imgresult").innerHTML = "사진을 선택하시오.";
			return false;
		}
		document.getElementById("imgresult").innerHTML = "";
	}
}