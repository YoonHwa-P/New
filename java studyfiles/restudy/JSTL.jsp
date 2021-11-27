<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<c:out value ="Hellow world"/>
<hr>

<c:set var="msg" value="Hi(^^)"></c:set>
\${msg } = ${msg }<br>

<c:set var="age">30</c:set>
\${age} = ${age }<br>
<hr>

<c:set var ="member" value="<%= new St01.MemberBean() %>"></c:set>
<c:set target="${member }" property="name" value= "name"></c:set>
<c:set target="${member }" property="userid">fs20111440</c:set>

\${member} = ${member } <br><hr>
\${member.name} = ${member.name } <br>
\${member.userid} = ${member.userid } <br>

<c:set var="add" value="${ 10 + 5 }"></c:set>
\${ 10 + 5 } = ${ 10 + 5 }<br>

<c:set var="flag" value="${ 10 > 5 }"></c:set>
\${ flag } = ${ flag }<br>



</body>
</html>