<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hap.jsp</title>
</head>
<body>
	<%
		String num1 = request.getParameter("n1");
		String num2 = request.getParameter("n2");
		
		int n1 =0; int n2= 0; int result = 0; // null을 만들지 않기 위해 미리 선언.
		
		if(num1 != null || num2 != null) {
			n1 = Integer.parseInt(num1);
			n2 = Integer.parseInt(num2);
			
			result = n1+n2;
			
			System.out.println(n1+", " + n2 + ", " + result);
			
		}
	
	%>
<form action="hap.jsp">
		<input type="text" name="n1" id="" value="<%=n1 %>"/>
		<span>+</span>
		<input type="text" name="n2" id="" value="<%=n2 %>"/>
		<input type="submit" value="="/>
		<input type="text" name="result" id="" value="<%=result%>"/>
</form>
</body>
</html>