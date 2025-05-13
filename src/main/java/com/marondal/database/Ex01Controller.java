package com.marondal.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// used_goods 테이블의 모든행을 조회해서 일부 데이터를 response에 담는다
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		
	
		try {
			// database 접속하는 법 - 사용법임
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		
			// 접속에 필요한 정보
			// 접속주소, 포트, 사용할 데이터베이스, 사용자이름, 비밀번호
			String url = "jdbc:mysql://localhost:3306/kanghyun_20250414";
			String username = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url, username, password); // 접속
			
			// 쿼리 작성
			String query = "SELECT * FROM `used_goods`";
			
			// 쿼리 수행
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query); // 이터레이터 랑 비슷한 느낌의 기능
			
			
			while(resultSet.next()) {
				String title = resultSet.getString("title"); 
				int price = resultSet.getInt("price");
				String description = resultSet.getString("description");
				// 제목 : ~ 가격 : ~ 설명 : ~ 
				out.println("제목 : " + title + " 가격 : " + price + " 설명 : " + description);				
			}
			


			
			// 열었으니까 다 쓰고 닫아주는 단계
			statement.close();
			
			// insert 하는 과정
			query = "INSERT `used_goods`\r\n"
					+ "(`sellerId`, `title`, `price`, `description`)\r\n"
					+ "VALUE\r\n"
					+ "(3, '고양이 간식 팝니다', 5000, '저희 고양이가 입맛이 까다로워서 안먹어요!');";
			statement = connection.createStatement();
			
			// 실제 테이블을 수정한다 라는 기능
			// INSERT, UPDATE, DELETE
			// 리턴 해주는 값은 실행된 행의 개수
			int count = statement.executeUpdate(query);
			
			out.println("실행 결과 : " + count);
			statement.close();
			
			connection.close();
			
		
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
	}

}
