<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userMain</title>
</head>
<body bgcolor="pink">
<br>
<h3>사용자 로그인 성공</h3>
<br>
<%=URLDecoder.decode(request.getParameter("userName"), "UTF-8") %>
(<%=request.getParameter("UserId") %>) 님 환영합니다. ^^
<br>
<p>
		<%@ include file="Footer.jsp"%>
	</p>
</body>
</html>