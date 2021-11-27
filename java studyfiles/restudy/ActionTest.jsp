<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLEncoder" %>
<%
String userId =request.getParameter("UserId");
String userPw =request.getParameter("UserPw"); 
String loginCheck=request.getParameter("loginCheck");
if(loginCheck.equals("user")) {
%>

<jsp:forward page = "userMain.jsp">
<jsp:param value='<%=URLEncoder.encode("유저", "UTF-8") %>' name="userName"/>
</jsp:forward>
<% } else { %>
<jsp:forward page = "managerMain.jsp">
<jsp:param value='<%=URLEncoder.encode("관리자", "UTF-8") %>' name="userName"/>
</jsp:forward>
<%} %>

