<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- logout.jsp -->

<%
	//cookie를 통한 로그아웃 --> 쿠키(유통기간)를 제거
	
	Cookie c = new Cookie("id", "-150");// 새 정보 집어넣고 바로 빼면됨 
	
	c.setMaxAge(0);
	
	response.addCookie(c);
	response.sendRedirect("login.jsp");
%>