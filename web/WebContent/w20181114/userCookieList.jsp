<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userCookieList.jsp</title>
</head>
<body>

	<%
		//쿠키에 들어있는 목록을 불러오기
		
		Cookie[] clist = request.getCookies();
		
		for(Cookie c: clist){
			//쿠키는 한글 인식을 잘 못함
			String txt= URLDecoder.decode(c.getValue(), "UTF-8");
			
			out.println("<h2>"+c.getName() +" : "+txt +"</h2>");
		}
	
	%>

</body>
</html>