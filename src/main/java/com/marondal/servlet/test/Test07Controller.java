package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/Test07")
public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		out.println(""
				+ "<html>\n"
				+ "		<head><title> 주문서 </title></head>"
				+ "		<body>\n");
		
		
		if(!address.contains("서울시")) {
			out.println("<h3>배달불가 지역입니다.</h3>");
		} else if(card.equals("신한카드")) {
			out.println("<h3>결제불가 카드입니다.</h3>");
		} else {
			out.println(""
					+ "			<h3>" + address + "로 배달 준비중</h3>\n"
					+ "			<hr>\n"
					+ "			<div>결제금액 : " + price + "원</div>\n");			
		}
		
		
		out.println(""
				+ "		</body>\n"
				+ "</html>");
	}

}
