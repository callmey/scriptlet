<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	public String strMethod(){
		return "Hello Java World";
	}
	%>
	<% String str= "오늘은 금요일";%>
	<% System.out.print(str); %>
	<% out.println(str); %>
	<%=strMethod() %>
	<% 
		//html안 jsp(java) 주석 
		/* html안 jsp(java) 주석 */				
	%>
	<!-- html주석 -->
	<%-- 스크립틀릿 자체주석 --%>
	<%-- 스크립틀릿의 모든 것은 html콘솔상에 나타나지 않는다. --%>
</body>
</html>