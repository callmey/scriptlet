<%@page import="java.util.ArrayList"%>
<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>viewMember.jsp</title>
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
	<!-- 현재 가입되어있는 회원 정보를 모두 출력해보세요
	테이블로 출력 -->
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>패스워드</th>
			<th>생년월일</th>
			<th>전화번호</th>
			<th>이메일</th>
		
		</tr>
		<%
			MemberDAO dao = new MemberDAO();
			
			ArrayList<MemberVO> list = dao.selectAll();
			
			for(MemberVO vo : list) {
		
		%>
		<tr>
			<td><%=vo.getId() %></td>
			<td><%=vo.getPw() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getBirth() %></td>
			<td><%=vo.getMp() %></td>
			<td><%=vo.getEmail() %></td>
		</tr>
		
		<%
			}
		%>
	</table>
</body>
</html>