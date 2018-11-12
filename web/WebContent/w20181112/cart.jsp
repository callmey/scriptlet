<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>productDetail.jsp</title>
<% 
	String no = request.getParameter("no");

	out.println("<h2> 선택하신 상품번호는 " + no + " 번 입니다</h2>");
	
%>
</head>
<body>
	<input type="button" value="수정" />


</body>
</html>


