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
		
		Cookie c = new Cookie("id", i);
		c.setMaxAge(60*60*24);
		//c.setMaxAge(5);
		
		response.addCookie(c);
		response.sendRedirect("login.jsp");
	
		
	}else{
		out.println("아이디/비밀번호를 확인해 주세요.");
	}
	
%>