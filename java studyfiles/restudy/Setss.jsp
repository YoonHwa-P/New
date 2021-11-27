<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session을 설정 해 봅시당 </title>
</head>
<body>

<%
	session.setAttribute("id", "fs20111440");
	session.setAttribute("pw", "123123");
	session.setAttribute("age", 23);
	
	
%>
<jsp:include page="header.jsp"/>
<br>
<h3> Session을 설정 해 봅시다. </h3>
<a href="Getss.jsp"> 세션을 확인 해 봅시다</a> <br>
<br>

<form method="post" action="Getsss.jsp" name = "go">
 모든 session을 확인 해 봅시다. 
 <input type=submit name=submit value=Go>
</form>
<br>

<%@ include file="Footer.jsp"%>
</body>
</html>