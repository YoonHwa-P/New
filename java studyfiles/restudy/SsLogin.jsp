<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>회원 인증 페이지</title>
</head>
<body>

	<% 
	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	
	
	request.setCharacterEncoding("UTF-8");
	if(id.equals(request.getParameter("In_id")) && pw.equals(request.getParameter("In_pw"))){
		String name = (String)session.getAttribute("name");
		response.sendRedirect("SsForm.jsp");
	}else {
		 
		response.sendRedirect("SsMain.jsp");
	}
	%>


</body>
</html>