<%@page import="dao.BoardDAO"%>
<%@page import="vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- deleteOk.jsp -->

<%
	BoardVO vo = new BoardVO();
	BoardDAO dao = new BoardDAO();
	
	String b = request.getParameter("bno");
	
	if(b!=null) {
		int bno = Integer.parseInt(b);
		
		dao.deleteData(bno);
		response.sendRedirect("list.jsp");
	}
	else {
		response.sendRedirect("list.jsp");
	}
	
%>