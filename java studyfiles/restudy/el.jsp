<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>표현형</h2>
	<div style="margin:20px; padding:10px; color:lightgray; background:black ">
	정수형 : ${10} <br>
	실수형 : ${10.101} <br>
	문자열형: ${"안녕하세요"} <br>
	논리형: ${true} <br>
	null: ${null} <br>
	</div>
	<hr>
	<h2>논리연산</h2>
	<div style="margin:20px; padding:10px; color:pink; background:purple">
	\${5+2} : ${5+2} <br>
	\${5/2} : ${5/2} <br>
	
	<%-- \${5 div 2} : ${5 div 2} <br> --%>
	
	\${5 mod 2} : ${5 mod 2} <br>
	\${5 gt 2} : ${5 gt 2} <br>
	\${(5>2)? 5 : 2} : ${(5>2)? 5 : 2} <br>
	\${(5>2) || (2 < 10)} : ${(5>2) || (2 < 10)} <br>

	<%String input=null; %>
	\${empty input} : ${empty input} <br>
	</div>
	
	<br>
	<form method="post" action="loginTest.jsp" name="logIn">
			<label for="uerID" style="align: center;">
			아이디 : </label> <input type="text" name="id" id="userID">
				 <br> <label for="uerPW"> 
			암  호 : </label> <input	type="password" name="pw" id="userPW"> 
				<br> <input	type="submit" value="로그인" >
		</form>
		<br>
	
</body>
</html>