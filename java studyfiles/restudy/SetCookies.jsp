<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bake cookie</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<br>
	<br>
	<h3>쿠키를 구워 봅시다</h3>
	<br>
	<%
	Cookie c = new Cookie("id", "fs20111440");
	response.addCookie(c);
	//위: 쿠키를 나누어 굽기, 아래: 쿠키 한번에 굽기
	response.addCookie(new Cookie("pw", "123123"));
	response.addCookie(new Cookie("age", "20"));
	%>
	<br>
	<a href="GetCookies.jsp">쿠키가 잘 구워 졌는지 확인 해 봅시다. </a>
	<form method="post" action="GetCookies.jsp">
	<input type=submit name=submit1 value= "쿠키 확인">
	</form>
	<a href="CookieRemove.jsp">쿠키를 먹어 치워 봅시다. </a>
	<form method="post" action="CookieRemove.jsp">
	<input type=submit name=submit2 value= "쿠키 지우기">
	</form>
	<a href="SetCookies.jsp">쿠키를 다시 구워 봅시다  </a>
	<form method="post" action="SetCookies.jsp">
	<input type=submit name=submit3 value= "쿠키 굽기">
	</form>
	<br>
	<br>
	<br>
	<jsp:include page="Footer.jsp"/>
</body>
</html>