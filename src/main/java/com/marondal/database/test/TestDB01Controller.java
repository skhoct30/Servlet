package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test/testDB01")
public class TestDB01Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		response.setContentType("text/plain");
//		
//		PrintWriter out = response.getWriter();     이놈들은 필요없는 정보. 처음에 결과 값 확인할 때만 사용한다.
		
		
		// 입력할 정보를 먼저 전달받자.
		
		String name = request.getParameter("name");
		String url = request.getParameter("url"); // url 때문에 post메소드를 사용해야한다.
		
		
		// 쿼리를 만들어서 쿼리수행을 해야한다.
		// MysqlService
		// 아래 코드 2개는 거의 한세트로 다닌다
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String query = "INSERT INTO `favorites`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "');";
		// 실제 쿼리를 수행하는 건 Mysql 서버
		// 여기는 단순한 코드, 사용법일 뿐
			
		// 실행된 행의 개수. 필요하면 가져다 쓰고 필요 없으면 안써도 된다 .
		int count = mysqlService.update(query);
		
		// 독립적으로 작동이 되는지부터 먼저 확인!
		//response.sendRedirect("/db/test/test01.jsp"); 이런거 먼저 쓰지말기
		
		// out.println("실행결과 : " + count); 이놈이 확인 되었으면 
		// 무의미한 실행결과를 보여주지말고 리스트 페이지를 보여주게 하는 것이 좋다.
		response.sendRedirect("/db/test/test01.jsp");
	}

}
