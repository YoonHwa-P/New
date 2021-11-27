<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 빈 객체 생성하기 (use action tag)</title>
</head>
<body>

	<jsp:useBean id="member" class="St01.MemberBean"/>
	◎ 자바 빈 객체 생성 후 저장된 정보 출력하기<br><br>
	이름 : <%=member.getName()%>
	아이디 :<%=member.getUserid()	%>
	<br>
	<hr>
	<br>
	◎ 정보 변경 한 후 변경된 정보 출력하기<br><br>
	
	<% member.setName("박*화");%>
	<%member.setUserid("fs2011***");%>
	
	이름 : <%=member.getName()%><br>
	아이디 :<%=member.getUserid()	%>
	
	<br><br>
	<% member.setName("박윤화");%>
	<%member.setUserid("fs20111440");%>
	
	이름 : <%=member.getName()%><br>
	아이디 :<%=member.getUserid()	%>
	
	
</body>
</html>