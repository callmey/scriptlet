<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- [hello.jsp] -->
<!-- 데이터를 전달한 페이지에서 txt라는 파라미터로 전달된 값을
	처리한 후 화면에 출력
-->

<%
	request.setCharacterEncoding("UTF-8");
	String txt = request.getParameter("txt");
	
	out.println(txt + " 님 환영합니다");
%>
	 