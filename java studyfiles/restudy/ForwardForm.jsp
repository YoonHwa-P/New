<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
String age = request.getParameter("age");
String name = (String)request.getAttribute("name1");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>

<h2>forward 방식으로 이동 된 페이지</h2>
<br>
나이 : <%=age %><br>
이름 : <%=name %><br>

<br>

<%@ include file="Footer.jsp"%>
</body>
</html>