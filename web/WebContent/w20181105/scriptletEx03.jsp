<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex03</title>
</head>
<body>
	<%! 
		int year = 2018;
	%>
	
	<h2>올해는 <%=year %> 년도 입니다.</h2>
	
	<%
		float f = 3.14f;
	
		int i = Math.round(f);
		
		/* java.util.Date date = new java.util.Date(); */
		
		Date date = new Date();
		
	%>
	
	<h2>실수의 반올림값 : <%=i %></h2>
	<h2>현재 시각 : <%=date %></h2>
</body>
</html>