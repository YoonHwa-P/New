<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어떻게 설정 되었는가</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<br>
<h3> Session을 설정을 확인 해 봅시다. </h3>

	<%
		String id =(String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
		Integer age=(Integer)session.getAttribute("age");
		
	%>
	<hr style="boader:10px;">

	i      d :<%=id %><br>
	password :<%=pw %><br>
	a   g  e :<%=age %><br>
	

<a href='javascript:history.go(-1)'>다시 해 보기</a>
	
<%@ include file="Footer.jsp"%>
</body>
</html>