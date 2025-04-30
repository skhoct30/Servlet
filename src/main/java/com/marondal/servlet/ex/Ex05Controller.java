package com.marondal.servlet.ex;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05Controller extends HttpServlet {
	
	// 파라미터가
	// 보안에 민감한 데이터가 포험되어 있는 지
	// 긴 데이터가 포험되어 있는 지
	// doPost
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		//이름과 생년월일을 전달받고,
		// 이름과 나이를 html로 구성
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		
		
	}

}
