<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

<%
String id = "fs20111440";
String PW = "123123";
String name="박윤화";

request.setCharacterEncoding("UTF-8");
if(id.equals(request.getParameter("id")) && PW.equals(request.getParameter("PW"))){
	response.sendRedirect("logIn_main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
}else {
	response.sendRedirect("Footer_main.jsp");
}
%>