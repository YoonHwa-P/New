<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Color Test</title>
</head>
<body style="margin:10px; padding:10px; background-color:pink; padding-color:yellow;">

	<form action="Color_Select.jsp">
		<label for="color"> 색상을 선택 하세요.</label><br>
		 <select id="color"	name="color">
			<option value="1">red</option>
			<option value="2">green</option>
			<option value="3">blue</option>
		</select>
		 <input type="submit" value="전송">
	</form>

</body>
</html>