<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>prtGuGuDan.jsp</title>
</head>
<body>
	<h1>어서오세요</h1>
	<!--  사용자가 선택한 단 정보가 넘어오면
	해당하는 구구단을 브라우저에 출력해보세요 -->
	<%
		String txt = request.getParameter("d1");
		String t = txt.substring(0, 1);
		int num = Integer.parseInt(t);
		for(int i=1; i<=9; i++) {
			out.println("<div>" + num + " * " +  i  + " = " + (num*i)+ "</div>");
		}
	%>
</body>
</html>