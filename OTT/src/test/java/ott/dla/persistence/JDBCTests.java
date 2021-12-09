package ott.dla.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); //드라이버 로딩
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try {
			Connection con= DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","book_ex","book_ex"); 
			log.info("db 접속성공");
		} catch (Exception e) {
			log.info("db 접속실패");
			e.printStackTrace();
		}
	}
}
