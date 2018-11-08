<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>modifyOk.jsp</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String mp1 = request.getParameter("mp1");
		String mp2 = request.getParameter("mp2");
		String email = request.getParameter("email");
		String cng = request.getParameter("cngnum");
		
		
		out.println(id + " " + pw + " " + name + " " + birth + " " +
		mp1 + " " + mp2 + " " + email);
		
	
		MemberVO vo = new MemberVO(id, pw, name, birth, "010"+mp1+"-"+mp2, email);
		
		MemberDAO dao = new MemberDAO();
		
		int cngnum = 0;
		 if(cng!=null) {
			cngnum = Integer.parseInt(cng);
			out.println("1?" + cngnum);
				cngnum = Integer.parseInt(cng);
				dao.alterData(vo, cngnum);
		}else {
			dao.addData(vo);
		} 	
	%>
	
	<h1><%=name %>님 정보가 수정되었습니다.</h1>
	<h6>호갱님의 정보는 소중히 잘 쓰겠습니다.</h6>
	
	
</body>
</html>