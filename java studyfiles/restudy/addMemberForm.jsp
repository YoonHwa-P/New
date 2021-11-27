<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보를 입력 해 봅시다.</title>
</head>
<body>

	<h2>회원 정보를 입력 해 봅시다.</h2>

	<form method="post" action="addMember.jsp">
		<table>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name" size="20"></td>
			</tr>
			<tr>
				<td>I D</td>
				<td><input type="text" name="userid" size="20"></td>
			</tr>
			<tr>
				<td>별 명</td>
				<td><input type="text" name="nickname" size="20"></td>
			</tr>
			<tr>
				<td>P W</td>
				<td><input type="password" name="pw" size="20"></td>
			</tr>
			<tr>
				<td>E메일</td>
				<td><input type="text" name="email" size="20"></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="phone" size="20"></td>
			</tr>
			<tr>
				<td>전송</td>
				<td><input type="submit" name="submit"  value="전송"></td>
			</tr>
			<tr>
				<td>취소</td>
				<td><input type="reset" name="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>