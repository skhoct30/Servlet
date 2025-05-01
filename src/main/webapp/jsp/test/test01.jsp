<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 1. 점수들의 평균 구하기
			스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.-->
			
	<%
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;
		for(int i=0; i < scores.length;i++) {
			sum += i;
		}
		double age = (double)sum / scores.length;
		
	%>
	<h3>평균 : <%= age %></h3>



</body>
</html>