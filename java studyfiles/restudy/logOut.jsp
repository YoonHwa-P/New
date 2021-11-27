<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>


	<br>
	<div>

		<%=session.getAttribute("name")%>
		님 안녕히 가세요 ^^!! <br> YH Inc,. 홈페이지에서 <br> 즐거운 시간 보내셨기를 바랍니다.
		<br>
	</div>
	<%
	session.invalidate();
	%>

	<a href="SsMain.jsp">다시 로그인 하러 가기 </a>
	<br>
	<br>
</body>
</html>