<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키가 사라지는 마술</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<br>
<%
Cookie cookie = new Cookie("id", "");
Cookie cookie1 = new Cookie("pw", "");
cookie.setMaxAge(0);
cookie1.setMaxAge(0);

response.addCookie(cookie);
response.addCookie(cookie1);

%>
<h3>쿠키가 모두 삭제 되었습니다. </h3>
<br>
 
<a href="GetCookies.jsp">쿠키가 삭제 되었는지 확인 해 봅시다. </a>

<br>

	<form method="post" action="GetCookies.jsp">
	<input type=submit name=submit value= "쿠키 확인">
	</form>
	<br>
	
	<a href='javascript:history.go(-1)'>다시 해 보기</a>
	
<%@ include file="Footer.jsp"%>
</body>
</html>