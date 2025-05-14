package com.marondal.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/user/create")
public class UserCreateController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// 입력할 정보를 전달 받는다.
		String name = requset.getParameter("name");
		String birthday = requset.getParameter("birthday");
		String email = requset.getParameter("email");
		String introduce = requset.getParameter("introduce");
	
		// 쿼리를 만들어서 쿼리를 수행
		// MysqlService
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect(); // 접속
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`, `introduce`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + birthday + "', '" + email + "', '" + introduce + "');";
		
		int count = mysqlService.update(query);
		
		
		// 클라이언트야 내가 너한테 줄 정보는 없고, list.jsp 에 다시 요청하면 조회결과 다시 볼 수 있을거야
		// 그러니까 list.jsp 로 새롭게 요청해줘 
		
		// redirect : response 에 새롭게 요청할 url path 를 전달한다.
		// out.println("실행결과 : " + count);
		response.sendRedirect("/db/user/list.jsp");
	}

}
