<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer sub page</title>
<style>
span {
	margin-left: 3px;
	margin-right: 3px;
	innerbox-size: 5px;
}
</style>
<script> 
	function check_R(){
		if (document.RR.name.value =="") {
			alert("아이디를 입력 해 주세요.");
			 document.RR.name.focus();
			 return false;
		}
		return true;
	}
</script>
</head>
<body>
<jsp:include page="header.jsp"/>
	<h2 style="text-align: center;">설문조사</h2>
	<hr>
	<form method="post" action="Research.jsp" name="RR">
		<br> 이름:
		<input type=text name=name size=8>
		<br> 성별:
		<input type=radio name=gender value=male>남자
		<input type=radio name=gender value=female>여자
		<br> 좋아하는 계절: 
		<input type=checkbox name=season value=spring> 봄
		<input type=checkbox name=season value=summer> 여름
		<input type=checkbox name=season value=autumn> 가을
		<input type=checkbox name=season value=winter> 겨울
		<br>
		<br>
		<input type=submit name=submit value=전송 onclick="return check_R())">
		<input type=reset name=reset value=취소>
	</form>
	<br>
	<br>
	<a href="Footer_main.jsp"> 메인 페이지로 돌아가기</a>
	<br>
	
	<%-- 네이버 블로그로 이동
	<% 	response.sendRedirect("https://blog.naver.com/abcdpuh"); %>
	 --%>
	<%@ include file="Footer.jsp"%>
</body>
</html>