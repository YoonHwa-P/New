/**
 * 
 */
function check_() {
	if (document.join.name.value == "") {
		alert("이름을 입력 해 주세요.");
		document.join.name.focus();
		return false;
	} else if (document.join.num.value == "") {
		alert("주민등록 번호를 입력 해 주세요.");
		document.join.num.focus();
		return false;
	} else if (isNaN(document.join.num.value)) {
		alert("숫자로 입력 해 주세요.");
		document.join.num.focus();
		return false;
	} else if (document.join.id.value == "") {
		alert("아이디를 입력 해 주세요.");
		document.join.id.focus();
		return false;
	} else if (document.join.pwd.value == "") {
		alert("비밀번호를 입력 해 주세요.");
		document.join.pwd.focus();
		return false;
	} else if (document.join.pwdconf.value == "") {
		alert("비밀번호 확인을 입력 해 주세요.");
		document.join.pwdconf.focus();
		return false;
	} else if (document.join.pwd.value != document.join.pwdconf.value) {
		alert("비밀번호가 다릅니다. 다시 확인하세요.");
		document.join.pwdconf.focus();
		return false;
	} else {
		return true;
	}
}