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
	
	
	
	
	<div class="container mt-3">
		<form method="get" action="/db/test/testDB01">
			<h2>즐겨찾기 추가</h2>
			<label>사이트명:</label>
			<input type="text" class="col-3 form-control" name="name">
			<label>사이트 주소:</label>
			<input type="text" class="col-5 form-control" name="url">		
			<button type="submit" class="mt-3 btn btn-success">추가</button>
		</form>
	</div>
	
	
	
	
</body>
</html>