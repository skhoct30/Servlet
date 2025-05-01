package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Test09")
public class Test09Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduction = request.getParameter("introduction");
		
		out.println(""
				+ "<html>\n"
				+ "		<head><title>입사 지원서</title></head>\n"
				+ "		<body>\n");
		
		out.println(""
				+ "			<h1>" + name + "님 지원이 완료 되었습니다.</h1>\n"
				+ "			<hr>\n"
				+ "			<div>지원 내용</div>\n"
				+ "			<div>" + introduction + "</div>\n");
		
		
		out.println(""
				+ "		</body>\n"
				+ "</html>");
		
		
	}

}
