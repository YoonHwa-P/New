<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Research Results</title>
</head>
<body>
<jsp:include page="header.jsp"/>

	<h2>입력된 정보 입니다.</h2>
	<br>
	<hr>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String [] season = request.getParameterValues("season");
	%>

	이 름 :
	<%=name%><br> 
	성 별 :
	<%=gender%><br> 
	좋아하는 계절 :
	<% for (int i = 0; i<season.length; i++)
			{out.print(season[i] + ", ");} 
	%>
	<br>
	<a href='javascript:history.go(-1)'>다시</a>
	





</body>
</html>