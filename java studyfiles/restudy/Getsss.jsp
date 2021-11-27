<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설정된 session 모두가져오기</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<br>
	<h3>Session에 설정된 모든 값 얻어오기</h3>

	<%
	Enumeration<String> names = session.getAttributeNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	}
	%>

	<br>
	<a href='javascript:history.go(-1)'>다시 해 보기</a>
	<br>
	<%@ include file="Footer.jsp"%>
</body>
</html>