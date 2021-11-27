<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 Param</title>

</head>
<body>
	<form method="get" action="ParamServlet" name="frm">
		아이디 : <input type="text" name="id"><br>
		 나 이 : <input	type="text" name="age"><br> 
			<input type="submit" value="전송" >
	</form>
	<form method="get" action="LoginServlet" >
		<label for="userid">아이디 : </label> 
		<input type="text" name="id_"	id="userid"><br>
		<label for="userpwd"> 암 호 : </label>
		<input type="password" name="pwd"	id="userpwd"><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>