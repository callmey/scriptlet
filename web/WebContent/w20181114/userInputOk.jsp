<%@page import="javax.servlet.http.Cookie"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userInputOk.jsp</title>
</head>
<body>
	<!-- userInput.jsp에서 전달된 값을 쿠키에 저장 -->
	<%
		String data = request.getParameter("txt");
	
		//out.println("data");
		
		//쿠키는 한글 인식을 잘 못합니다.
		String txt =URLEncoder.encode(data, "UTF-8");
		
		//쿠키에 저장 - 쿠키는 반드시 이름(매개변수)이 있어야 함에 유의!!!!
		Cookie c = new Cookie("ChokoCookie", txt);
		
		//쿠키 유효기간(유통기한) - (초*분*시간)
		c.setMaxAge(300);
		
		//사용자 브라우저에 저장
		response.addCookie(c);
		
	%>
	
	<h1>쿠키가 잘 저장되었습니다.</h1>
	<a href="userCookieList.jsp"><span>쿠키목록보기</span></a>
	

	
</body>
</html>