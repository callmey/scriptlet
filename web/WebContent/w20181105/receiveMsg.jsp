<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>receiveMsg.jsp</title>
</head>
<body>
	<%
		// sendMsg.jsp에서 전달된 값을 가지고 와서 출력
		
		// form --> name(parameter) = 값
		
		String text = request.getParameter("msg");
	%>
	
	<h1>전달받은 메시지 : <%=text %></h1>
</body>
</html>