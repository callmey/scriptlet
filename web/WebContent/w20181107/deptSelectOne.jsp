<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>deptSelectOne.jsp</title>
<style type="text/css">
table {
	width: 600px;
	margin: 0 auto;
}

table, tr, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}

th {
	background-color: gray;
}
</style>
</head>
<body>
	<%
		String n = request.getParameter("no");
		
		int no = -1;
		
		if(n!=null) {
			no = Integer.parseInt(n);
		} else {
			no = 0;
		}
	
	%>
	<!-- form>h1+input:text+input:submit -->
	<form action="#">
		<h1>부서 검색</h1>
		<input type="text" name="no" id="" /> <input type="submit" value="검색" />
	</form>

	<table>
		<tr>
			<th>부서번호</th>
			<th>부서이름</th>
			<th>부서위치</th>
		</tr>
		<%
			// db에 연결해서 원하는 데이터만 가져와서 표로 출력
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:XE";

			String user = "SCOTT";
			String password = "TIGER";

			StringBuffer sb = new StringBuffer();

			ResultSet rs = null;
			PreparedStatement pstmt = null;
			Connection conn = null;

			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);
				System.out.println("conn : " + conn);
			} catch (ClassNotFoundException cnfe) {
				cnfe.getMessage();
				cnfe.getStackTrace();
				System.out.println(cnfe.getMessage());
				System.out.println("드라이버 로딩 실패");

			} catch (SQLException se) {
				se.printStackTrace();
				System.out.println("db 연결 실패");
			}

			sb.append("select * from dept ");
			if(no>0) {
				sb.append("where deptno = ? ");
			}

			pstmt = conn.prepareStatement(sb.toString());
			if(no>0) {
				pstmt.setInt(1, no);
			}

			rs = pstmt.executeQuery();

			while(rs.next()){
			int deptno = rs.getInt(1);
			String dname = rs.getString(2);
			String loc = rs.getString(3);

			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		%>
		<tr>
			<td><%= deptno %></td>
			<td><%= dname %></td>
			<td><%= loc %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>