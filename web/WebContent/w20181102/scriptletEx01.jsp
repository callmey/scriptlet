<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Hello Jsp World</h2>
	
	<%
		out.println("Hello Jsp World");
	
	%> <!-- 자바 문법을 통한 출력 -->
	
	<br />
	<!--  
	
		이 줄은 자바 프로그램에서 출력되고 있습니다
	
	 -->
	 
	 <% out.println("이 줄은 자바 프로그램에서 출력되고 있습니다 "); %>
     <br />
     <%
     	out.println("출력되고 있습니다");
     %>
     <hr />
     <br />
     	<!-- 하나의 jsp 파일에서 두 개 이상의 스크립틀릿을 이용하는 경우
     	각 스크립틀릿 사이에서 변수 공유 가능 -->
     	<% int i =10; %>
     	<% int j=20; %>
     	<% int sum =i+j; %>
     	<% out.println("i+j :"+sum); %>
     	
</body>
</html>