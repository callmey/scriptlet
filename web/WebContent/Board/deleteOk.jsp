<%@page import="dao.BoardV2_DAO"%>
<%@page import="vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- deleteOk.jsp -->

<%
	BoardVO vo = new BoardVO();
	BoardV2_DAO dao = new BoardV2_DAO();
	
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