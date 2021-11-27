<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>7강 연습문제 01</title>
<script type="text/javascript" src="Ex07-01.js"></script>
</head>
<body>
	<form method="get" action="Ex07_01" name="join">
		
		 이름 : <input type="text" name="name" size="8"><br>
		주민등록번호 : <input type="text" name="num1" size="6"> - <input type="text" name="num2" size="6"> <br> 
			아이디 : <input type="text" name="id"><br> 
			비밀번호 : <input type="password" name="pwd"><br> 
			비밀번호 확인 : <input type="password" name="pwdconf"><br>

			이메일 : <input type="text" name="email" size="6">  @ <input type="text" name="domain" size="6">
				
				<select id="domain" name="domain" >
					<option value="네이버"> naver.com </option>
					<option value="다음"> daum.net </option>
					<option value="네이트"> nate.com </option>
					<option value="쥐메일"> gmail.com </option>
					<option value="야후"> yahoo.co.kr </option>
					</select><br> 
					
			우편번호 : <input type="text" name="zipcode"><br> 
			주소 : <input type="text" name="add1"> <input type="text" name="add2"><br> 
			핸드폰번호 : <input type="text" name="phon"><br> 
			
			직업: <label for = "job">
				<select id="job" name="job" size='3' multiple="multiple">
					<option value="도적"> 도적 </option>
					<option value="궁수"> 궁수 </option>
					<option value="마법사"> 마법사 </option>
					<option value="검사"> 검사 </option>
					<option value="연구원"> 연구원 </option>
					</select> </label><br> 
			메일/SMS 정보수신 
			<input type="radio" id ="info" name="radiocheck" value="yes" checked> 수신 
			 <input type="radio" id ="info" name="radiocheck" value="no">수신거부<br>
			관심분야 : <input type="checkbox" name="interest" value="생두" > 생두 
				<input type="checkbox" name="interest" value="원두" >  원두
				<input type="checkbox" name="interest" value="로스팅" >  로스팅
				<input type="checkbox" name="interest" value="핸드드립" >  핸드드립
				<input type="checkbox" name="interest" value="에스프레소" >  에스프레소
				<input type="checkbox" name="interest" value="창업" >  창업
		<br>
		
		<span >
		<input type="submit" value="회원가입" onclick="return check_()">
		 <input type="button" value="취소">
		 </span>
	</form>
</body>
</html>