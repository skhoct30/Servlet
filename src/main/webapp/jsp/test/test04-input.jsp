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
			<div class="d-flex">
				<input type="text" name="number1" class="form-control col-2">
				<select name="operator" class="form-control col-1 mx-2">
					<option>+</option>
					<option>-</option>			
					<option>X</option>
					<option>÷</option>
				</select>
				<input type="text" name="number2" class="form-control col-2">
				<button type="submit" class="btn btn-info ml-3">계산</button>
			</div>
		</form>

	</div>

</body>
</html>