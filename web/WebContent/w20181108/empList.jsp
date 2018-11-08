<%@page import="vo.EmpVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EmpList.jsp</title>
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
			EmpDAO dao = new EmpDAO();
			
			ArrayList<EmpVO> list = dao.selectAll();
			
			for(EmpVO vo : list) {
				
			
		
		%>
		<tr>
			<td><%=vo.getEmpno()%></td>
			<td><%=vo.getEname()%></td>
			<td><%=vo.getJob()%></td>
			<td><%=vo.getMgr()%></td>
			<td><%=vo.getHiredate()%></td>
			<td><%=vo.getSal()%></td>
			<td><%=vo.getComm()%></td>
			<td><%=vo.getDeptno()%></td>
		</tr>
		
		<%
			}
		%>
	
	</table>
	
	
</body>
</html>