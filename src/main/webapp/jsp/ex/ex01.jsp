<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 문법</title>
</head>
<body>
	
	<h3>기본 문법</h3>
	<!-- html 주석 -->
	<%-- jsp 주석 : 클라이언트한테 보여지면 안되는 주석이면 이거쓰기  --%>
	
	<%-- 1부터 10까지의 합을 h3 태그로 표시 --%>
	<%
		int sum = 0;
		for(int i=0;i <=10;i++) {
			sum+= i;
		}
		
		// out.println("<h3>합계 : " + sum + "</h3>"); 얘도 가능하지만 태그를 좀 더 활용할거면 아래와 같이 작성하자.
	%>
	
	<h3>합계 : <%= sum %></h3>
	<input type="text" value="<%= sum %>">
	
	<%-- <div <%= sum %>></div>  이렇게 어디든 낄 수 있음--%>
	
	<div><%= sum *2 %></div>
	
	
	
	
	
	
	
	<h3>리스트 다루기</h3>
	
	
	<%
		// 리스트 하나 만들기. 
		// 동물 이름 리스트
		// jsp에서는 자동으로 인포트 (컨트롤 쉬프트 o ) 하는게 없어.. 
		// 그래서 상단에 가서 직접 해줘야함
		// 근데 상단에 쓰는 법 몰라? 그러면 아무곳에 가서 아래 인포트 해야할 내용 쓰고 인포트 하셈. 그리고 복사해서 와
		List<String> animalList = new ArrayList<>();
	
		animalList.add("고양이");
		animalList.add("강아지");
	%>
	
	<ul>
		<li><%= animalList.get(0) %></li>
		<li><%= animalList.get(1) %></li>
	</ul>
	
	
	
	
	
	
	<h3>메소드 만들기</h3>
	
	<%!
		// Hello World 를 문자열로 리턴하는 메소드
		public String getHelloWorld() {
			return "Hello World";
		}
	%>
	
	<%!
		String message = getHelloWorld();
	%>
	
	<h3><%= message %></h3>
	<h3><%= getHelloWorld() %></h3>
	
	
</body>
</html>