<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
div {
	text-align: center;
}

span {
	color: orange;
	font-size: 30px;
}

p {
	color: lightyellow;
	background-color: gray;
	font-family: '맑은고딕';
}
P1 {
	margin:10px;
	background-color: yellow;
}
</style>
<meta charset="UTF-8">
<title>Footer main</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<h2 style="align: center;">Front page</h2>
	<hr>
	<br>
	<div>
		우리 회사<span>(YH Inc.)</span>에 놀러 오세요
	</div>
	<br>
	<div>
		<form method="post" action="logIn.jsp" name="logIn">
			<label for="uerID">
			아이디 : </label> <input type="text" name="id" id="userID">
				 <br> <label for="uerPW"> 
			암  호 : </label> <input	type="password" name="PW" id="userPW"> 
				<br> <input	type="submit" value="로그인">
		</form>
		<hr style="color:blue;">
		<br>
		</div>
	<h3>For 문 예제</h3>
	<br>
	<div style="color:purple;
		background:#54B59A; border: 2px; padding:20px">
		<br>
		<< 1부터 더할 임의의 값 : >> 
		<form method="post" action="Adding.jsp" name="addFunction">
		<input type= text name=endNum size=10>
		<input type=submit name=submit value= 확인>
		</form>
		<br>
	</div>
	<br>
	<hr>
	<br>
	<P1>
		<a href="ActionLogin.jsp"> Action Login 방식으로 로그인하기</a> <br>
			</P1>
			
	<h3>Session 설정</h3>
		<a href="Setss.jsp"> 세션을 설정 해 봅시다</a> <br>
	<br>
			
	<p>
		<a href="Footer_sub.jsp"> 서브 페이지로 이동하기 </a> <br>
		<%@ include file="Footer.jsp"%>
	</p>

</body>
</html>