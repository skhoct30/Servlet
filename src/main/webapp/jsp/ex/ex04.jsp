<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//<%@ page import="java.util.*" % > 이거 꼼수임 다 불러옴 
		
		
		
		
		
		//과일 이름 리스트
		List<String> fruitList = new ArrayList<>();
		
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
	
	
	%>
	
	
	<table border="1">
		<% for(String fruit:fruitList) { %>
		<tr>
			<td><%=fruit %></td>
		</tr>
		<% } %>
	</table>
	
	
	
	
	<%
		// 여러 학생의 국어, 수학, 영어 점수를 담고 있는 테이블 리스트
		// 학생 1 : 국어 90 / 수학  95 / 영어 80
		// 학생 2 : 국어 100 / 수학 90 / 영어 70
		
		// {"국어":90, "수학":95, "영어":80}
		// {"국어":100, "수학":90, "영어":70}
		
		// 이 두개의 점수를 묶으려면? 
		// [{"국어":90, "수학":95, "영어":80}, {"국어":100, "수학":90, "영어":70}]
		
						
		List<Map<String, Integer>> scoreList = new ArrayList<>();
		
		//   키       벨류(점수)
		Map<String, Integer> score1 = new HashMap<>();
		
		score1.put("국어", 90);
		score1.put("영어", 95);
		score1.put("수학", 80);
		
		scoreList.add(score1);
		
		Map<String, Integer> score2 = new HashMap<>();
		
		score2.put("국어", 100);
		score2.put("영어", 90);
		score2.put("수학", 70);
		
		scoreList.add(score2);				
				
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>국어</th>
				<th>수학</th>
				<th>영어</th>				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>30</td>
				<td>40</td>
				<td>55</td>
			</tr>
			<tr>
				<td>45</td>
				<td>60</td>
				<td>30</td>
			</tr>
		</tbody>
	</table>
	
	
	
	
	
	
	



</body>
</html>