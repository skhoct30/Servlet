<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post input</title>
</head>
<body>
	
	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label> <input type="text" name="nickname">
		
		<!-- 여러가지중에 하나만 선택하게 하는 인풋  -->
		<!-- 라디오 버튼 -->
		<h4>좋아하는 동물을 고르세요</h4>
		<label>고양이 <input type="radio" name="animal" value="cat" checked></label>
		<label>강아지 <input type="radio" name="animal" value="dog"></label>
		<label>사자 <input type="radio" name="animal" value="lion"></label>
		<br>
		
		<!-- 옵션 태그 -->
		<h4>좋아하는 과일을 고르세요</h4>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="strawberry">딸기</option>
			<option>복숭아</option>
		</select>
		
		
		<h4>좋아하는 음식을 모두! 고르세요</h4>
		<label>민트초코<input type="checkbox" name="food" value="mint"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value="pizza"></label>
		<label>번데기<input type="checkbox" name="food" value="bug"></label>
		
		
		
		<button type="submit">입력</button>
		
		
		
		
	</form>

</body>
</html>