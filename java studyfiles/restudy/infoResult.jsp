<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<style>
	b {
	text
	}
</style>
<meta charset="UTF-8">
<title>InfoResults</title>
</head>
<body>

 당신이 입력한 정보 입니다. <br>
 <% 
 request.setCharacterEncoding("UTF-8");
 String id = request.getParameter("id");
 String pw =request.getParameter("pw");
 String intro = request.getParameter("intro");
 %>
 
 <strong>ID</strong> : <% out.println(id); %><br>
 <strong>Password</strong>: <% out.println(pw); %> <br>
 <strong>자기소개</strong><br>
   <% out.println(intro); %> <br>
 
 
 
 
 
</body>
</html>