package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 결과물에 대한 정보를 설정하기
		// Response Header
		// Character set : utf-8
		response.setCharacterEncoding("utf-8");
		
		// 데이터 타입 (ContentType)
		// 응답으로 전달된 데이터의 타입을 알아야한다.
		// MIME : 데이터의 타입을 구분하기 위한 정해진 문자열
		// text/css text/html / text/javascript 등등...
		response.setContentType("text/plain");
		
		
		// 결과물
		// Response Body
		PrintWriter out = response.getWriter();
		out.println("Servlet Response!!");
		
		
		
		// 현재 날짜 시간을 보여주는 페이지
		Date now = new Date();	
		
		out.println(now);
		
		
		// Date 객체의 날짜 시간 정보를 원하는 규격의 날짜 시간 문자열로 만들기
		// 2025년 4월 25일 16:54:11
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일 HH:mm:ss"); // m은 분을 나타내고 M은 몇월 할때 월.	
		//규격을 지정하고 >> 나온다 
		String dateTimeString = formatter.format(now);
		
		out.println(dateTimeString);
		
		
		
	}

}
