package d20181106;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DeptMain {
	public static void main(String[] args) {
		// JDBC 
		// 부서테이블의 정보를 가져와서 콘솔에 출력
		
		// DB 연결순서
		// 1. 변수 선언
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		
		String user = "SCOTT";
		String password = "TIGER";
		
		StringBuffer sb = new StringBuffer();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			// 2. 드라이버 객체를 로딩
			Class.forName(driver);
			
			// 3. connection 객체를 선언
			conn = DriverManager.getConnection(url, user, password);
			
			System.out.println("conn : " + conn);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("드라이버로딩실패");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DBMS로딩실패");
		}
		
		// 4. sql 문장
		sb.append("SELECT * FROM DEPT");
		
		
		// 5. 문장객체 선언
		try {
			pstmt = conn.prepareStatement(sb.toString());
		// 6. 실행
			rs = pstmt.executeQuery();
		// 7. 레코드별로 로직처리
			while(rs.next()) {
				int deptno = rs.getInt("deptno");
				String dname = rs.getString(2);
				String loc = rs.getString("loc");
				
				System.out.println(deptno + "\t" + dname + "\t"+ loc + "\t");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally {
			if(rs!=null) {
				try {
					rs.close();
					if(pstmt !=null) pstmt.close();
					if(conn!=null) conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	
		
		// 8. 자원 반납
	}
}
