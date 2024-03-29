package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DAOBase implements DAO {

	private Connection conn = null;
	
	public void closeDBResources(ResultSet rs, Statement stmt, PreparedStatement pstmt, Connection conn) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}
		
	 
	@Override
	public Connection getConnection() throws SQLException {		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {	
			String url="jdbc:mysql://gamejigix.induk.ac.kr:53306/attend?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";
			conn = DriverManager.getConnection(url,"attend","attenddb");
			//String url="jdbc:mysql://localhost:3306/attend?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";			
			//conn = DriverManager.getConnection(url, "root", "1234");
			//연결정보를 이용한 연결(connection) 객체생성
			return conn; //연결 객체로부터  statement 객체 생성	 
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return conn; //or return null
	}

}
