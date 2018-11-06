<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>response.jsp</title>
</head>
<script type="text/javascript">
function move() {
	location.href = "https://www.naver.com";
}
</script>
<body>
	<h2>네이버로 페이지 이동하기</h2>
	<!-- 
	 -->
	 
	 <a href="https://www.naver.com" target="_blank">
	 	<span>네이버</span><br />
	 </a>
	 	
	 <button onclick="move()" target="_blank">네이버</button>
	 
	 <%
	 	response.sendRedirect("https://www.naver.com");
	 %>
</body>
</html>