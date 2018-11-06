<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>selectDept.jsp</title>
<style type="text/css">
	table {
		width: 600px;
		margin: 0 auto;
	}
	
	table, tr, th, td {
		border : 1px solid black;
		border-collapse: collapse;
		text-align: center;
	}
	th {
		background-color: gray;
		}
</style>
</head>
<body>
	<table>
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서위치</th>
		</tr>
		<%
			// DB 연결 순서
			// 1. 변수 설정
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			
			String user = "SCOTT";
			String password = "TIGER";
			
			// 2. 드라이버 객체 로딩
			Class.forName(driver);
			
			// 3. Connection 객체 생성
			Connection conn = DriverManager.getConnection(url,user,password);
			
			//out.println("conn : " + conn);
			
			// 4. sql문장 작성
			String sql = "select * from dept";
			
			// 5. 문장 객체 생성
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			// 6. 실행 => return(ResultSet)
					
			ResultSet rs = pstmt.executeQuery();
			
			// 7. 레코드별로 로직 처리
			while(rs.next()) {
				int deptno = rs.getInt(1);
				String dname = rs.getString(2);
				String loc = rs.getString(3);
				
				/* out.println("deptno : " + deptno);
				out.println("dname : " + dname);
				out.println("loc : " + loc); */
			
			%>
			
			<tr>
				<td><%=deptno %></td>
				<td><%=dname %></td>
				<td><%=loc %></td>
			</tr>
			
			<%
			} // 8. 자원반납
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
			%>
			
	</table>
</body>
</html>