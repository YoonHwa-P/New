<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Login 해 보기</title>
</head>
<body>
	 
	 <form action="ActionTest.jsp">
	 	아이디 : <input type = "text" name ="UserId"><br>
	 	암 호 : <input type = "password" name = "UserPw"><br>
	 	<input type = "radio" name="loginCheck" value ="user" checked="checked"> 사용자
	 	<input type = "radio" name="loginCheck" value = "manager"> 관리자 <br>
	 	<input type = "submit" value="로그인">
	 </form>
	 
	 <p>
		<%@ include file="Footer.jsp"%>
	</p>
</body>
</html>