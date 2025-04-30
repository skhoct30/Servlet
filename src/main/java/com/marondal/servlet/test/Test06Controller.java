package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/Test06")
public class Test06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");
		
		int num1 = Integer.parseInt(number1);
		int num2 = Integer.parseInt(number2);
		
		// + - * % 
		//{"addtion":"(num1 + num2)", "subtraction":"(num1 - num2)", "multiplication":"(num1 * num2)", "division":"(num1 / num2)"}
		
		out.println("{\"addtion\":\"" + (num1 + num2) + "\", \"subtraction\":\"" + (num1 - num2) + "\", \"multiplication\":\"" + (num1 * num2) + "\", \"division\":\"" + (num1 / num2) + "\"}");
		
	}

}
