<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding Result</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<br>
<%

int Add = //3;
	Integer.parseInt(request.getParameter("endNum"));
int sum = 0;
	%>
 <h3> 1부터 <%=Add %>까지 더하기: </h3>
 
	<% for (int i = 1; i< Add; i++){
		out.print( i + " + ");
		sum += i ;
			} 
	out.print(Add + "=" + (sum+Add));
	%>


<hr>
<br>
	<a href='javascript:history.go(-1)'>다시 해 보기</a>
<br>
<jsp:include page="Footer.jsp"/>
</body>
</html>