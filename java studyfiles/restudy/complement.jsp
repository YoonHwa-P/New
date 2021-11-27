<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!int global_cnt = 0;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addition</title>
</head>
<body>
	<%
	int num1 = 20;
	int num2 = 10;
	int add = num1 + num2;
	%>
	<%=num1%>
	+
	<%=num2%>
	=
	<%=add%>


	<%!String str = "안녕하세요!";
	int a = 5, b = -5;

	public int abs(int n) {
		if (n < 0) {
			n = -n;
		}
		return n;
	}%>
	<%=str%><br>
	<%
	out.print(a + "의 절대값 : " + abs(a) + "<br>");
	out.println(b + "의 절대값 : " + abs(b) + "<br>");
	%>

	<%
	int local_cnt = 0;
	out.print("<br> local_cnt : " + ++local_cnt);
	out.print("<br> gloval_cnt : " + ++global_cnt);
	%>

</body>
</html>