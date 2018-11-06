<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request.jsp</title>
</head>
<body>
	<div style="font-size: 24px">
<%
	out.println("1. " + request.getRequestURL()+"<br/>");
	// URL : 웹 상에서 서비스를 제공하는 각 서버 안에 있는 파일들의 위치
	out.println("2. " + request.getRequestURI()+"<br/>");
	// URI : HTTP 프로토콜, 호스트명, 포트번호를 제외한 나머지 정보
	
	out.println("3. 사용자로부터 입력을 받을 경우 <br/>");
	// 연봉 : 60000000
	out.println("연봉 : " + request.getParameter("pay")+"<br/>");

	out.println("4. 사용자로부터 입력된 것이 여러 개인 경우 <br/>");
	// 연봉 : 60000000
	// 성명 : 홍길동
	// java: 90
	// jsp : 95
	// spring : 80
	
	// 총점 : 
	// 평균 : 
	
	out.println("연봉 : " + request.getParameter("pay")+"<br/>");
	out.println("성명 : " + request.getParameter("name")+"<br/>");
	
	out.println("java : " + request.getParameter("java")+"<br/>");
	out.println("jsp : " + request.getParameter("jsp")+"<br/>");
	out.println("spring : " + request.getParameter("spring")+"<br/>");
	
	int sum = Integer.parseInt(request.getParameter("java"))+
			Integer.parseInt(request.getParameter("jsp"))+
			Integer.parseInt(request.getParameter("spring"));
	int avg = sum/3;
	
	out.println("총점 : " + sum+"<br/>");
	out.println("평균 : " + avg+"<br/>");
%>
	</div>
</body>
</html>