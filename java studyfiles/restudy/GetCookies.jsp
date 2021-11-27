<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eat cookie</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<%
	Cookie[] ck = request.getCookies();
	for (Cookie c : ck) {
		out.println(c.getName() + " : " + c.getValue() + "<br>");
	}
	%>
	
	
	<a href='javascript:history.go(-1)'>다시 해 보기</a>
	<%@ include file="Footer.jsp"%>
</body>
</html>