<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	
	<%
		// cm 값
		int cm = Integer.parseInt(request.getParameter("cm"));
		
		// 변환할 단위 : 인치, 피트, 야드, 미터
		// inch, feet, yard, meter / 여러가지 있는거라 배열로 만들자.
		String[] units = request.getParameterValues("unit");
		
		//반복문 전에 빈 놈 하나 만들기
		String result = "";
		
		for(int i = 0; i < units.length;i++) {
			if(units[i].equals("inch")) {
				double inch = cm * 0.39;
				result += inch + "in<br>";
			} else if(units[i].equals("feet")) {
				double feet = cm * 0.032808399;
				result += feet + "ft<br>";
			} else if(units[i].equals("yard")) {
				double yard = cm * 0.010936133;
				result += yard + "yd<br>";
			} else {
				double meter = cm / 100.0;
				result += meter + "m<br>";
			}
		}
		
		
		
	
	
	%>
	
	<div class="container">
		<h2>변환 결과</h2>
		<h3><%=cm %>cm</h3>
		
		<hr>
		
		<h3>
			<%= result %>
		</h3>
	</div>






</body>
</html>