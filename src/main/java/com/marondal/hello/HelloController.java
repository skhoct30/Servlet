package com.marondal.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends HttpServlet{
	//컨트럴 쉬프트 o 
	
	//껍대기는 그대로 알맹이만 바꾸고싶을 때. 사용법 처럼 메소드를 정리
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out =  response.getWriter();
		
		out.println("Hello World!");
	}
}
