package com.marondal.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {

	
	//일단 멤버 변수를 뭐로 ? 할건지를 정해야한다.

	//데이터 베이스 접속 기능
	private Connection connection;
	
	
	//-----------------------------------------------------------------------------------------------------
	
	
	// 데이터 베이스 접속 기능
	//(boolean) 접속에 성공하면 true 실패하면 false
	public boolean connect() {
		
		// database 접속하는 법 - 사용법임
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			// 접속에 필요한 정보
			// 접속주소, 포트, 사용할 데이터베이스, 사용자이름, 비밀번호
			String url = "jdbc:mysql://localhost:3306/kanghyun_20250414";
			String username = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, username, password); // 접속
			// 여기 메소드에서만 사용하는게 아니라서 위로 올려서 멤버변수로 설정해야함.
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block // 접속하다가 문제가 생기면 여기로 온다.
			
			e.printStackTrace();
			// 접속실패
			return false;
		}
		
		return true;		
		
	}
	
	//-----------------------------------------------------------------------------------------------------
	
	
	// 쿼리 수행 기능
	// 조회 커리 수행
	
	public ResultSet select(String query) {
		
		
		Statement statement;
		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			return resultSet;
			
		} catch (SQLException e) {

			e.printStackTrace();
			
			return null; // null 을 리턴 하면 진행상황중에 문제가 생겼다 라고 알려준다. false 가 아니라 값에 문제가 생겼다.
			
		}
		
		
		
	}
	
	//-----------------------------------------------------------------------------------------------------
	
	
	// 데이터 베이스 접속 끊는 기능
	// disconnect()
	
	public boolean disconnect() {
		
		try {
			connection.close();
			
			
			
		} catch (SQLException e) {

			e.printStackTrace();
			
			return false;
		}
		return true;
	}
}
