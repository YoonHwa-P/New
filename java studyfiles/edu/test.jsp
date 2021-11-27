<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>

	<h3>회원 정보</h3>
	<form>
		<p>
			ID : <input type="text" > <br>
			비밀번호 :<input type="text" > <br>
			이름 : <input type="text" > <br>
			취미:   <input type="checkbox" value="1"> 등산
			 <input type="checkbox" value="2"> 운동
			 <input type="checkbox"	value="3"> 독서
			 <input type="checkbox"	value="4"><br>  여행
			성별 <input type="radio" name="sex" value="1" checked> 남자
			<input type="radio" name="sex" value="2" checked> 여자 <br>
			종교 : 
			<select name="religion">
			<option value="1" selected> 기독교 </option>
			<option value="2" >불교</option>
			<option value="3">천주교</option>
			<option value="4">무교</option>
		</select>
		<br>자기소개:<br>
		<div>
		<textarea cols="40" rows="8" ></textarea>
		<br> <input type="submit" value="전송"> <input
			type="button" value="지우기">
			</div>
	</form>
</body>
</html>