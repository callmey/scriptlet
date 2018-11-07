<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>empSelectOne.jsp</title>
</head>
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
<body>
	<!-- 사원번호로 사원정보를 검색 
	검색결과는 표로 출력 
	사원번호 검색 : select-option -->
	<%
		String e = request.getParameter("empno");
	
		int no = -1;
		if(e!=null) {
			no = Integer.parseInt(e);
		}else {
			no = 0;
		}
	%>
	<form action="empSelectOne.jsp" name="frm">
	<select name="empno" id="">
		<option value="7369">7369</option>
		<option value="7499">7499</option>
		<option value="7521">7521</option>
		<option value="7566">7566</option>
		<option value="7654">7654</option>
		<option value="7698">7698</option>
		<option value="7782">7782</option>
		<option value="7839">7839</option>
		<option value="7844">7844</option>
		<option value="7900">7900</option>
		<option value="7902">7902</option>
		<option value="7934">7934</option>
	</select>
	<input type="submit" value="출력" />
	</form>

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
			
			StringBuffer sb = new StringBuffer();
			PreparedStatement pstmt= null;
			ResultSet rs = null;
			Connection conn = null;
			
			try{
				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);
				System.out.println("conn : " + conn);
			
			}catch(ClassNotFoundException cnfe) {
				cnfe.getMessage();
				cnfe.getStackTrace();
				System.out.println(cnfe.getMessage());
				System.out.println("드라이버 로딩 실패");
			}catch(SQLException se) {
				se.printStackTrace();
				System.out.println("db 연결 실패");
			}
			
			sb.append("select * from emp ");
			if(no>0) {
				sb.append("where empno = ? ");
			}
			
			pstmt = conn.prepareStatement(sb.toString());
			if(no>0) {
				pstmt.setInt(1, no);
			}
			
			rs = pstmt.executeQuery();
				
			while(rs.next()){
				int empno = rs.getInt(1);
				String ename = rs.getString(2);
				String job = rs.getString(3);
				int mgr = rs.getInt(4);
				String hiredate = rs.getString(5);
				int sal = rs.getInt(6);
				int comm = rs.getInt(7);
				int deptno = rs.getInt(8);
				
				/* if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close(); */
			
		%>
			<tr>
				<td><%=empno%></td>
				<td><%=ename%></td>
				<td><%=job%></td>
				<td><%=mgr%></td>
				<td><%=hiredate%></td>
				<td><%=sal%></td>
				<td><%=comm%></td>
				<td><%=deptno%></td>
			</tr>
		<% 
		}
		%>
	</table>
</body>
</html>