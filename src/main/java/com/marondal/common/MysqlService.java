package com.marondal.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService {

	
	//일단 멤버 변수를 뭐로 ? 할건지를 정해야한다.

	//데이터 베이스 접속 기능
	private Connection connection;
	
	
	// 아래 두개 코드
	// 마이sql 에서 메소드를 호출하는 데 최초에 호출할 때  null  인 값이면 아래 if 문으로 들어가서 리턴값으로 돌려준다
	
	
	
	// 클래스를 설계한 입장에서
	// 해당 클래스의 객체가 두개이상 만들어지지 않도록
	// 하나의 객체를 공유해서 사용하게 한다.
	// Singleton pattern : 
	
	// static 변수 : 객체 생성 없이 사용할 수 있는 멤버 변수
	// [ private MysqlService mysqlService = null; ] 원래 이거였는데 static 붙혀서 static 변수로 변환
	private static MysqlService mysqlService = null;
	
	
	// 해당 클래스의 객체를 return 하는 메소드
	// static 메소드 : 객체 생성없이 사용할 수 있는 메소드
	// 객체 생성 없이 사용할 수 있는 메소드기 떄문에 객체 생성을 기반으로 만드는 것들에는 사용할 수 없다.
	// 그중에 대표적인게 [ 멤버변수 ] // 객체 생성을 통해서 만들어지는 멤버변수는 사용 불가능이다.
	// [ private MysqlService mysqlService = null; ] 얘는 멤버변수가 걸려있어서 사용불가
	public static MysqlService getInstance() {
		
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	
	
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
	
	public List<Map<String, Object>> select(String query) {
		
		
		Statement statement;
		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			
			// 조회 결과의 컬럼 목록
			// resultSet 은 조회결과 getMataData 는
			// 컬럼의 개수를 얻어옴.
			ResultSetMetaData rsmd = resultSet.getMetaData();
			
			// 조회된 테이블의 컬럼 개수 확인
			int columnCount = rsmd.getColumnCount();
			
			
			// 컬럼 이름 리스트
			List<String> columnList = new ArrayList<>();
			for(int i = 1; i <= columnCount; i++) {
				columnList.add(rsmd.getColumnName(i)); // 컬럼 이름과 개수를 얻어와서 리스트에 추가를 해둠.
			}
			
			List<Map<String, Object>> resultList = new ArrayList<>();
			while(resultSet.next()) {

				Map<String, Object> row = new HashMap<>();
				// 하나의 행에서 컬럼 이름으로 모든 값 얻어오기
				// columnList에 있는 값을 하나하나 접근해서 얻어와야한다.
				// column 에 컬럼이름이 들어있다.
				for(String column:columnList) {
					Object value = resultSet.getObject(column); // 컬럼이 int string array 등등 여러가지 가 있으니까 업케스팅 된 상태로 Object로 불러온다 
					
					row.put(column, value);
				}
				resultList.add(row);
			}
			statement.close();
			return resultList;
			
		} catch (SQLException e) {

			e.printStackTrace();
			
			return null; // null 을 리턴 하면 진행상황중에 문제가 생겼다 라고 알려준다. false 가 아니라 값에 문제가 생겼다.
			
		}
		
		
		
	}
	
	
	// INSERT, UPDATE, DELETE
	// 3가지 쿼리를 수행하는 기능을 합쳐서 만들기
	// update() : 수정한다
	public int update(String query) {
		
		Statement statement;
		try {
			statement = connection.createStatement();
			int count = statement.executeUpdate(query);			
			statement.close();
			return count;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return -1;
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
