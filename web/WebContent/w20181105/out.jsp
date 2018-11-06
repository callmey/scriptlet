<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out.jsp</title>
</head>
<body>
	<h2>2018년 11월 영화개봉 순위</h2>
	<div style="font-size: 24px">
		<%
			out.print("완벽한 타인");
			out.print("보헤미안 랩소디");
			out.print("창궐");
			out.print("벽속에 숨은 마법시계");
			out.print("할로윈");
		%>
	</div>
	<hr />
	<div style="font-size: 24px">
		<%
			out.println("완벽한 타인 <br />");
			out.println("보헤미안 랩소디 <br />");
			out.println("창궐 <br />");
			out.println("벽속에 숨은 마법시계 <br />");
			out.println("할로윈 <br />");
		%>
	</div>
	<hr />
	<div style="font-size: 24px">
		<%
			System.out.println("완벽한 타인");
			System.out.println("보헤미안 랩소디");
			System.out.println("창궐");
			System.out.println("벽속에 숨은 마법시계");
			System.out.println("할로윈");
		%>
	</div>
	
	완벽한 타인 <br />
	보헤미안 랩소디 <br />
	
	
</body>
</html>