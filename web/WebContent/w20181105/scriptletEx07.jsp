<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex07</title>
</head>
<body>
	<%
		for(int i =1; i<= 9; i++) {
			out.println("3 * " + i + " = " +
		(3*i) + "<br />");
		}
		// 구구단 2단부터 9단까지 출력해보세요.
		
		for(int i =2; i<=9; i++) {
			for(int j=1; j<=9; j++) {
				out.println(i +" * " + j + " = " + 
			(i*j) + "<br />");
				
			}
			out.println("<br />");
		}
		
		System.out.println("log 기록 확인");
		
	%>
	
	
	
</body>
</html>