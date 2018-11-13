<%@page import="dao.BoardDAO"%>
<%@page import="vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list.jsp</title>
<style type="text/css">
	table {
		width: 1000px;
		margin: 0 auto;
	}
	
	table,th,tr,td {
		border: 1px solid black;
		border-collapse: collapse;
		font-size: 20px;
	}
	
	.col1, .col4 {
		width: 15%;
		text-align: center;
	}
	
	.col2 {
		width: 50%;
	}
	
	.col3 {
		width: 20%;
	}
	
	th {
		padding: 2px;
		background:-webkit-gradient(linear, 78% 20%, 10% 20%, from(#66ffff), to(#ffff80));
	}
	
	#btn {
		text-aling: right;
	}
	
</style>
</head>
<body>
<a href="write.jsp">
					<input type="button" value="등록" />
</a>
	<table>
		<tr>
			<th class="col1">게시물번호</th>
			<th class="col2">제목</th>
			<th class="col3">작성자</th>
			<th class="col4">조회수</th>
		</tr>
		
		<%
			// DB에 접근해서 원하는 정보 조회
			BoardDAO dao = new BoardDAO();
			ArrayList<BoardVO> list = dao.getAllData();
			
			for(BoardVO vo : list) {
		
		%>
		
		<tr>
			<td class="col1"><%=vo.getBno() %></td>
			<td class="col2"><a href="detail.jsp?bno=<%=vo.getBno()%>"><%=vo.getTitle() %></a></td>
			<td class="col3"><%=vo.getWriter()%></td>
			<td class="col4"><%=vo.getHits()%></td>
		</tr>
		<%
			}
		%>
		
		<tr>
			<td colspan="4">
				<a href="write.jsp">
					<input type="button" value="등록" />
				</a>
			</td>
		</tr>
		
	</table>
</body>
</html>