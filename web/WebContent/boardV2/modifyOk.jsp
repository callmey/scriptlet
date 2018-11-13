<%@page import="dao.BoardV2_DAO"%>
<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- modifyOk.jsp -->
<!-- 이 페이지에서는 DB에 수정 내용을 저장 -->

<%
	String b = request.getParameter("bno");
	String title = request.getParameter("title");
	String contents = request.getParameter("context");
	
	if(b!=null) {
		int bno = Integer.parseInt(b);
		
		BoardV2_DAO dao = new BoardV2_DAO();
		BoardVO vo = new BoardVO();
		vo.setBno(bno);
		vo.setTitle(title);
		vo.setContents(contents);
		
		dao.modifyData(vo);
		
		response.sendRedirect("list.jsp");
		
	} else {
		response.sendRedirect("list.jsp");
	}
%>