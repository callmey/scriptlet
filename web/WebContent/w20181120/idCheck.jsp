<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// encoding
	request.setCharacterEncoding("UTF-8");
	
	// id 파라미터 값을 받기
	String id = request.getParameter("id");
	
	//out.println(id);
	
	// DB 연결해서 해당 id가 존재하면 true, 없으면 false return
	MemberDAO dao = new MemberDAO();
	boolean flag = dao.isExistId(id);
	
	out.println(flag);
%>