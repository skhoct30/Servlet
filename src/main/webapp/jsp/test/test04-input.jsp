<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
	
		<h2>사칙 연산</h2>
		<form method="post" action="/jsp/test/test04.jsp">
		<input type="text" name="num1">
		<select name="operator">
			<option value="+">+</option>
			<option value="-">-</option>			
			<option value="*">X</option>
			<option value="/">%</option>
		</select>
		<input type="text" name="num2">
		<button type="submit" class="btn btn-info">계산</button>
		</form>

	</div>

</body>
</html>