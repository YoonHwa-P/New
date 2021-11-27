<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	text-align: center;
}
span{
	text-color: darkyellow;
}
</style>
<meta charset="UTF-8">
<title>로그인을 환영합니다.</title>
<!-- 웹 페이지 크기 및 위치 자동 고정하기 -->
<script>
window.onfocus=function(){}
window.onload=function(){
 	window.focus(); // 현재 window 즉 익스플러러를 윈도우 최상단에 위치
	window.moveTo(0,0); // 웹 페이지의 창 위치를 0,0 (왼쪽 최상단) 으로 고정
	window.resizeTo(1280,800); // 웹페이지의 크기를 가로 1280 , 세로 800 으로 고정(확장 및 축소)
	window.scrollTo(0,250); // 페이지 상단 광고를 바로 볼 수 있게 스크롤 위치를 조정
}
</script>
</head>
<body>
<br>
<h2 style="align: center;">로그인을 환영합니다.</h2>
	<hr>
	<br>
	<div>
		<%=request.getParameter("name")%>
		님 안녕하세요 ^^!! <br> YH Inc,. 홈페이지에 방문 해 주셔서 감사합니다. 
		<br> 즐거운 시간 되세요 ~ <br>
		</div>
		<br>
		<br>
<h3 style="align: center;">입장 하려면 나이를 입력 하세요</h3>	
<br>	
		<div>
		<form action="ForwardTest.jsp">
		<input type ="text" name ="age">
		<input type = "submit" value ="입장">
		</form>
	</div>
	<br>
	<hr>
	<br>
	<h4>forward 액션 태그에 대한 예제</h4>
	<span> 이 파일은 yellow가 나오겠죠 호호호 <br>
	브라우저에 나타나는 URL과는 상관 없는 파일이죠~
	</span>
	<p>
		<%@ include file="Footer.jsp"%>
	</p>
</body>
</html>