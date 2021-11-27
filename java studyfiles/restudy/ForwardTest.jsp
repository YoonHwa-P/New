<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
int age = Integer.parseInt(request.getParameter("age"));
if (age <= 19) {
%>
<script type="text/javascript">
	alert("19세 미만이은 입장 할 수 없습니다.")
	history.go(-1)
	</script>
	
<%
} else {
request.setAttribute("name1", "박윤화");
RequestDispatcher DP = request.getRequestDispatcher("ForwardForm.jsp");
DP.forward(request, response);
}
%>