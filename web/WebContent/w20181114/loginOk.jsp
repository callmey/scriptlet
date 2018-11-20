<%@page import="java.net.URLEncoder"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- loginOk.jsp -->

<%
	//DB에 연결한 후 사용자가 존재하면 존재 여부를 브라우저에 출력
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDAO dao = new MemberDAO();
	
	boolean flag  = dao.isExist(id, pw);
	
	
	if(flag){
		/* out.println("로그인이 되었습니다.");
		out.println(id+"님 어서오세요"); */
		
		String i = URLEncoder.encode(id, "UTF-8");
		
		Cookie c = new Cookie("id", i); //id라는 이름과 i값으로 쿠키 생성
		c.setMaxAge(60*60*24); // 쿠키의 유효시간 설정
		
		response.addCookie(c);
		response.sendRedirect("login.jsp");
	
		
	}else{
		out.println("회원가입하세요.");
	}
	
%>