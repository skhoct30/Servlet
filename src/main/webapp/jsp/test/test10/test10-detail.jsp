<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>

		<%
		// 아티스트 정보 
	
	    Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "아이유");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM엔터테인먼트");
	    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");
	
	
		// 아이유 노래 리스트 
	    List<Map<String, Object>> musicList = new ArrayList<>();
	
	    Map<String, Object> musicInfo = new HashMap<>();
	    musicInfo.put("id", 1);
	    musicInfo.put("title", "팔레트");
	    musicInfo.put("album", "Palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 2);
	    musicInfo.put("title", "좋은날");
	    musicInfo.put("album", "Real");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
	    musicInfo.put("time", 233);
	    musicInfo.put("composer", "이민수");
	    musicInfo.put("lyricist", "김이나");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 3);
	    musicInfo.put("title", "밤편지");
	    musicInfo.put("album", "palette");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
	    musicInfo.put("time", 253);
	    musicInfo.put("composer", "제휘,김희원");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 4);
	    musicInfo.put("title", "삐삐");
	    musicInfo.put("album", "삐삐");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "이종훈");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 5);
	    musicInfo.put("title", "스물셋");
	    musicInfo.put("album", "CHAT-SHIRE");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
	    musicInfo.put("time", 194);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);
	
	    musicInfo = new HashMap<>();
	    musicInfo.put("id", 6);
	    musicInfo.put("title", "Blueming");
	    musicInfo.put("album", "Love poem");
	    musicInfo.put("singer", "아이유");
	    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
	    musicInfo.put("time", 217);
	    musicInfo.put("composer", "아이유,이종훈,이채규");
	    musicInfo.put("lyricist", "아이유");
	    musicList.add(musicInfo);	
	
	    
	    String idString = request.getParameter("id");
		
	    String title = request.getParameter("title");
	%>
	
	
	



	
	
	<div id="wrap" class="container">
		<header class="d-flex">
		
			<div class="logo col-2 d-flex align-items-center">
				<div class="text-success"><h2>Melong</h2></div>
			</div>
			
			<div class="search col-10 d-flex align-items-center">
				<form method="get" action="/jsp/test/test10/test10-detail.jsp" class="w-100"> <!-- form 태그가 화면을 줄이니까 최대한 넓게 뽑아주자 w-100 % -->
					<div class="input-group col-5">
						<input type="text" class="form-control" name="title">
						<div class="input-group-append">
							<button class="btn btn-success" type="submit">검색</button>
						</div>
					</div>
				</form>
			</div>
			
		</header>
		
		<nav class="main-menu">
			<ul class="nav font-weight-bold">
				<li class="nav-item"><a href="#" class="nav-link text-dark">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">멜론DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">뮤직어워드</a></li>
			</ul>
		</nav>
		
		<section class="contents mt-3">
			<h3>곡 정보</h3>
				<% for(Map<String, Object> list:musicList) { 
					
					// idString 이 null 이 아니면 id를 통한 비교
					// title 이 null 이 아니면 title 을 통한 비교
					int id = 0;
					if(idString != null) {
						id = Integer.parseInt(idString);
					}
					
					if((idString !=null && id == (Integer)list.get("id"))
						|| (title !=null && title.equals(list.get("title")))) {
					
							
						
						
					
						int time = (Integer)list.get("time");
				%>
			<div class="artist d-flex border border-success p-3">
				<div>
					<img width="200" src="<%= list.get("thumbnail") %>">
				</div>
				<div class="ml-3">
					<div class="display-4"><%= list.get("title") %></div>
					<div class="text-success font-weight-bold mt-2"><%= list.get("singer") %></div>
					<div class="small mt-1">앨범 <%= list.get("title") %></div>
					<div class="small">재생시간 <%= time / 60 %> : <%= time % 60 %></div>
					<div class="small">작곡가 <%= list.get("composer") %></div>
					<div class="small">작사가 <%= list.get("lyricist") %></div>
				</div>
				<% }
				}%>
			</div>
			
			<div class="song-list mt-5">
				<h3>가사</h3>
				<hr>
				<div>가사 정보 없음</div>
			</div>
		
		</section>
		
		<hr>
		<footer>
			<div class="text-secondary">Copyright 2021. melong All Rights Reserveds.</div>
		</footer>
	</div>
	
	

</body>
</html>