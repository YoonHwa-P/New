<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<hr>
	<br>
	<div>
		<%=session.getAttribute("name")%>
		님 안녕하세요 ^^!! <br> YH Inc,. 홈페이지에 방문 해 주셔서 감사합니다. 
		<br> 즐거운 시간 되세요 ~ <br>
		</div>
		<br>
		<br>
		<form action="logOut.jsp" name=logout>
			로그아웃 하고싶으면 버튼을 눌러요
			<input type=submit name=submit value="로그아웃">
		</form>

</body>
</html>