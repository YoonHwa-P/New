<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RequestInfo</title>
<style>
	body {background-color : mistyrose;
	margin-left: 30px;
	margin-right: 30;}
	h2 {text-align: center; }
	hr {border: 2px solid gray;}
</style>
</head>
<body>
	<br>
	<h2>RequestInfo</h2>
	<br>
	<hr>
	§ 컨텍스트 패스 : <%= request.getContextPath() %> <br>
	§ 요청방식 :  <%= request.getMethod() %> <br>
	§ 요청한 URL :  <%= request.getRequestURL() %> <br>
	§ 요청한 URI :  <%= request.getRequestURI() %> <br>
	§ 서버의 이름 :  <%= request.getServerName() %> <br>
	§ 프로토콜 :  <%= request.getProtocol() %> <br>
	
</body>
</html>