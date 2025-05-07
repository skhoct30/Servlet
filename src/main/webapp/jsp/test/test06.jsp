<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>


	<%
		List<String> goodsList = Arrays.asList(new String[]{
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	
	
		
	
	
	
	
	%>
	
	<div class="container">
		<div class="d-flex justify-content-center">
			<h3>장 목록</h3>
		</div>
		<header class="d-flex">
			<div class="col-4 justify-content-center">번호</div>
			<div class="col-8 justify-content-center">품목</div>
		</header>
		
		<section></section>
	
	</div>
</body>
</html>