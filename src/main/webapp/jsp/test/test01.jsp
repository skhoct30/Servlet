<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays"%>
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
	<h2>평균 : <%= age %></h2>
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(String result:scoreList) {
			
			if(result.equals("O")) {
				score += 100 / scoreList.size();
			}
		}
	%>

	<h2>채점 결과는 : <%= score %>점 입니다.</h2>

	
	<%!
		//1부터 특정 수 까지의 합을 구하는 기능
		
		public int sumAll(int number) {
			int sum = 0;
			for(int i =1; i <= number;i++) {
				sum += i;
			}
			return sum;
		}
	
	%>
	
	<h2>1에서 50까지의 합은 : <%= sumAll(50) %></h2>
	
	
	
	
	<%
		String birthDay = "20010820";
		 
		int year =  Integer.parseInt(birthDay.substring(0, 4));
		
		// int age = 2025 - year + 1;	
	%>
	
	
	<h2><%= birthDay %>의 나이 합은 <%= age %>입니다</h2>

	


</body>
</html>