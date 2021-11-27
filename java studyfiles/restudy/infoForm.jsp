<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>infoForm</title>
<script>
	function check() {
		if (document.LL.id.value =="") {
			alert("아이디를 입력 해 주세요.");
			
			return false;
		}else if (document.LL.pw.value ==""){
			alert("패스워드를 입력 해 주세요.");
			return false;
		}else
			return true;
	}
</script>
</head>
<body>


	<div>
		<form method="post" action="infoResult.jsp" name="LL">
			가입할 ID와 Password 및 자기소개를 입력하세요.<br>
			 ID : <input type="text" name="id" id="userID"><br> 
				Password :<input type="password" name="pw" id="userPW"> <br>
				 자기소개 <br>
			<textarea cols="70" rows="8" name="intro"></textarea>
			<br>
			 <input	type="submit" value="전송" onclick="return check()">
			<input type="reset" value="초기화">
		</form>
		<hr style="color: blue;">
		<br>
	</div>
</body>
</html>