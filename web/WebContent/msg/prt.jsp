<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
		String[] str = {"1안녕", 
				"2안녕하세요",
				"3닭갈비",
				"4맛있어",
				"5계란말이",
				"6오돌뼈주먹밥",
				"7집가고싶다",
				"8Hi",
				"9Hello",
				"10잘가"};
		
			String s = str[(int)(Math.random()*10)];
			out.print(s);
			
			/* Random rnd = new Random();
			int value = rnd.nextInt(10);
			out.println(str[value]); */
	%>
</body>
</html>