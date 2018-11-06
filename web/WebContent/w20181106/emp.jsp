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
<title>selectEmp.jsp</title>
<style type="text/css">
	table{
		width: 600px;
		margin: 0 auto;
	}
	
	table, tr, th, td {
		border : 1px solid black;
		border-collapse: collapse;
		text-align: center;
	}
	th {
		background-color: lightsky;
	}
	
</style>
</head>
<body>
	<!--  emp table 모든 정보 조회하기 -->
	<table>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>직책</th>
			<th>상사번호</th>
			<th>입사일</th>
			<th>월급</th>
			<th>COMM</th>
			<th>부서번호</th>
		</tr>
	
	
	<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		
		String user = "SCOTT";
		String password = "TIGER";
		
		
		Class.forName(driver);
		
		Connection conn = DriverManager.getConnection(url,user,password);
		System.out.println("conn: " + conn);
		
		String sql = "select * from emp";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			int empno = rs.getInt(1);
			String ename = rs.getString(2);
			String job = rs.getString(3);
			int mgr = rs.getInt(4);
			String hiredate = rs.getString(5);
			int sal = rs.getInt(6);
			int comm = rs.getInt(7);
			int deptno = rs.getInt(8);
			
			%>
		
			<tr>
				<td><%=empno %></td>
				<td><%= ename%></td>
				<td><%= job %></td>
				<td><%= mgr %></td>
				<td><%= hiredate %></td>
				<td><%= sal %></td>
				<td><%= comm %></td>
				<td><%= deptno %></td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>