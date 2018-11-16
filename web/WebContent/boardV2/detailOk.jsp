<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardV2_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String b = request.getParameter("bno");
	int bno=0;
	
	BoardV2_DAO dao = new BoardV2_DAO();

	if(b!=null){
		bno = Integer.parseInt(b);
		//조회수 증가 메소드 호출
		dao.raiseHits(bno);
		
		response.sendRedirect("detail.jsp?bno="+bno);
	}else{
		response.sendRedirect("detail.jsp?bno="+bno);
	}
%>