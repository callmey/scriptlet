<%@page import="dao.BoardDAO"%>
<%@page import="vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>modify.jsp</title>
<%
	String b = request.getParameter("bno");
	BoardDAO dao = new BoardDAO();
	BoardVO vo = new BoardVO();
	
	if(b!=null) {
		int bno = Integer.parseInt(b);
		
		vo = dao.getData(bno);
		
	}else {
			response.sendRedirect("list.jsp");
	}
%>
<style type="text/css">
	table {
		width: 900px;
		margin: 0 auto;
	}
	
	table,th,tr,td {
		border: 1px solid black;
		border-collapse: collapse;
		font-size: 20px;
	}
	
	th {
		padding: 2px;
		background:-webkit-gradient(linear, 78% 20%, 10% 20%, from(#66ffff), to(#ffff80));
	}
	
	#context {
		background-color : #e085c2;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<!-- table>tr#top>(th[id='t$']+td)*3 -->
	<form action="modifyOk.jsp">
		<input type="hidden" name="bno" value="<%=vo.getBno() %>" />
		<table>
			<tr id="top">
				<th id="t1">작성자</th>
				<td><%=vo.getWriter() %></td>
				<th id="t2">조회수</th>
				<td><%=vo.getHits() %></td>
				<th id="t3">작성일시</th>
				<td><%=vo.getRegdate() %></td>
			</tr>
			
			<tr id="title">
				<th>제목</th>
				<td colspan="5">
					<input type="text" name="title" id="" value="<%=vo.getTitle() %>"/>
				</td>
			</tr>
			
			<tr id="contents">
				<th>내용</th>
				<td colspan="5">
					<textarea name="context" id="context" cols="100" rows="10">
						<%=vo.getContents() %>
					</textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<input type="button" value="목록" />
					<input type="submit" value="수정" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>