<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String txt = request.getParameter("txt");
	
	// 검색단어를 이용하여 Product 테이블에 있는 이미지를 추출하고 싶음
	// ProductDAO 에 상품이름으로 데이터를 검색하는 메소드
	// getDataByName()
	
	ProductDAO dao = new ProductDAO();
	ProductVO vo = dao.getDataByName(txt);
	
	out.println(vo.getImgfile());
	
	
	
%>