<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardV2_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content.jsp</title>
<%
	String b = request.getParameter("bno");

	BoardV2_DAO dao = new BoardV2_DAO();
	BoardVO vo = new BoardVO();

	if(b!=null){
		int bno = Integer.parseInt(b);
		vo = dao.getData(bno);
		
		System.out.println(vo.getHits());
	
	}
%>
</head>
<body>
<%=vo.getContents() %>
</body>
</html>