<%@page import="dao.BoardV2_DAO"%>
<%@page import="dao.BoardDAO"%>
<%@page import="vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 페이징 처리 -->
<%
	String cp = request.getParameter("cp"); // cp: currentPage
	
	// 현재 페이지 초기화
	int currentPage = 0;
	if(cp!=null) {
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}
	BoardV2_DAO dao = new BoardV2_DAO();
	
	int totalCount = dao.getTotalCount();
	// 한 페이지당 레코드 수
	int recordPage = 10;
	
	// 총 페이지 
	int totalPage = 
		(totalCount%recordPage==0) ? totalCount/recordPage : totalCount/recordPage+1;
	
	// ex) 현재 페이지 번호
	// 1 2 3 4 .....
	
	// ex) 각 페이지별 레코드 번호
	// 1 11 21 31
	
	// 10 20 30 40 ..
	
	// 현재 페이지의 레코드 시작 번호
	int startNo = (currentPage-1)*recordPage+1;
	// 현재 페이지의 레코드 끝 번호
	int endNo = (currentPage)*recordPage;
	
	out.println("총 게시물 수 : " + totalCount + "<br/>");
	out.println("한 페이지당 게시물 수 : " + recordPage + "<br/>" );
	out.println("총 페이지 수 " + totalPage + "<br/>");
	out.println("현재 페이지 번호 " + currentPage + "<br/>");
	out.println("현재 페이지 시작 번호 : " + startNo + "<br/>");
	out.println("현재 페이지의 끝 번호 : " + endNo + "<br/>");
%>
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
table, th, tr, td {
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
	background: -webkit-gradient(linear, 78% 20%, 10% 20%, from(#66ffff),
		to(#ffff80));
}
#btn {
	text-aling: right;
}
</style>
</head>
<body>
	<a href="write.jsp"> <input type="button" value="등록" />
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
			//BoardDAO dao = new BoardDAO();
			ArrayList<BoardVO> list = dao.getAllData(startNo, endNo);
			
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

		<!-- <tr>
			<td colspan="1" id="page">페이징 번호 노출시킬 부분</td>
		</tr> -->
		<tr>
			<td colspan="4" id="page">
				<%
					for(int i = 1; i<currentPage+4; i++) {
						if(i<=0) {
							continue;
						}else if(i>totalPage) {
							break;
						}else {
							
				%> 
				<a href="list.jsp?cp=<%=i %>">[<%=i %>]</a> 
				<% 	
							
						}
					}
				%>
			</td>
		</tr>
		<tr>
			<td colspan="4"><a href="write.jsp"> <input type="button"
					value="등록" />
			</a></td>
		</tr>

	</table>
</body>
</html>