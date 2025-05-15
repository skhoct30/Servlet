package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test/testDB01Delete")
public class TestDB01DeleteController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		response.setContentType("text/plain");
//		
//		PrintWriter out = response.getWriter();	
		
		String id = request.getParameter("id"); // 정수형태의 특징을 활용할거면 parseInt 쓰고 그거 아니면 그냥 써도된다
		
		
		
		
		
		//사용법
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect(); //접속
		
		String query = "DELETE FROM `favorites` WHERE `id` = " + id; // 우리가 원하는걸 문자열로 만들어내는거고 이거는 뒤에 있는 결과값이라서 저렇게 처리함
		
		int count = mysqlService.update(query);
		
		//out.println("실행 결과 : " +  count);
		
		response.sendRedirect("/db/test/test01.jsp");
		
	}

}
