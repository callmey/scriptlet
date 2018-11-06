<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex09</title>
</head>
<body>
	<!-- 
		Calendar 클래스 이용해서
		브라우저에 현재 시각 출력해보세요
		
		[출력]
		현재 시각은 .... 시 ...분...초 입니다.
		
	 -->
	 
	 <%
	 	Calendar c = Calendar.getInstance();
	 	int hour = c.get(Calendar.HOUR_OF_DAY);
	 	int minute = c.get(Calendar.MINUTE);
	 	int second = c.get(Calendar.SECOND);
	
	 %>
	 
	 <h2>현재 시각은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</h2>
	 
	 
</body>
</html>