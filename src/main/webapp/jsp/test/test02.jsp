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

	<%
		int weight = Integer.parseInt(request.getParameter("weight"));
		int height = Integer.parseInt(request.getParameter("height"));
	
		
		double BMI = weight / ((height / 100.0) * (height / 100.0));
		
		
		String result = null;
		if(BMI < 18.5) {
			result = "저체중";
		} else if (BMI >= 18.5&BMI < 25) {
			result = "정상";
		} else if (BMI >= 25&BMI < 30) {
			result = "과체중";
		} else if (BMI >= 30) {
			result = "비만";
		} 
		
	%>

	
	
	<div class="container">
		<h2><b>BMI 측정 결과</b></h2>
		<div class="display-4">당신은 <span class="text-info"><%=result %></span> 입니다.</div>
		<div class="mt-2">BMI 수치 : <%= BMI %></div>
		
	
	</div>

</body>
</html>