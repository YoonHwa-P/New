<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script>
	function check() {
		if (document.logIn.In_id.value =="") {
			alert("아이디를 입력 해 주세요.");
			
			return false;
		}else if (document.logIn.In_pw.value ==""){
			alert("패스워드를 입력 해 주세요.");
			return false;
		}else if (document.logIn.In_id.value !="fs20111440"){
			alert("아이디가 다릅니다.");
			document.logIn.In_id.focus();
			return false;
		}else if (document.logIn.In_pw.value !="123123"){
			alert("패스워드가 다릅니다.");
			document.logIn.In_pw.focus();
			return false;
		}else
			return true;
	}
</script>
</head>
<body>
<%
	session.setAttribute("id", "fs20111440");
	session.setAttribute("pw", "123123");
	session.setAttribute("name", "박윤화");
	
	%>
<br>
	<form method="post" action="SsLogin.jsp" name="logIn">
			<label for="uerID" style="align: center;">
			아이디 : </label> <input type="text" name="In_id" id="userID">
				 <br> <label for="uerPW"> 
			암  호 : </label> <input	type="password" name="In_pw" id="userPW"> 
				<br> <input	type="submit" value="로그인" onclick="return check()">
		</form>
		<br>
</body>
</html>