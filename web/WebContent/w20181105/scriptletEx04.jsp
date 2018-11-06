<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex04</title>
</head>
<body>
	<%!
		int one;
		int two = 1;
		
		public int sumMethod() {
			return one+two;
		}
		
		// 하나의 선언문에 여러 개 변수와 여러 메소드 선언할 수 있음
		
		String msg;
		int three;
		
		// 필드 (멤버변수)에서 초기화 하지 않으면
		// int는 0, String은 null 을 리턴함에 유의!!
	%>
	
	<h2>one과 two의 합은 : <%=sumMethod() %></h2>
	<h2>String : <%=msg %></h2>
	<h2>three: <%=three %></h2>
	
	<hr />
	
	<%
		String name = f_name+"길동";
	%>
	
	
	<%!
		String f_name = "홍";
	%>
	
	<h2>name : <%=name %></h2>
</body>
</html>