<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>propertyDeamo</title>
</head>
<body>

자바빈 프로퍼티 값을 얻고 getProgerty, seProperty 액션테그로
저장된 정보를 출력 해 봅시다. 

<jsp:useBean id="member" class="St01.MemberBean"/>
<hr>
<br>
◎ 자바 빈 객체 생성 후 저장된 정보 출력하기<br><br>
Name :<jsp:getProperty name="member" property="name"/>
I D :<jsp:getProperty name="member" property="userid"/>
<br>
<hr>
	◎ 정보 변경 한 후 변경된 정보 출력하기<br><br>
<jsp:setProperty name="member" property="name" value="박윤화"/><br>
<jsp:setProperty name="member" property="userid" value="fs20111440"/><br>

Name :<jsp:getProperty name="member" property="name"/><br>
I D :<jsp:getProperty name="member" property="userid"/><br>
</body>
</html>