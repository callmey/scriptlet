<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inner.jsp</title>
</head>
<body>
	<%
		// 요청객체 종종 사용하는 것들
		String addrs = request.getRemoteAddr();
		String host = request.getRemoteHost();
		
		String method = request.getMethod();
		
		// 응답객체 종종 사용하는 것
		int status = response.getStatus(); // 리턴 int.
		response.sendRedirect("../w20181108/login.jsp");
	
	%>
	
	<h2>현재 아이피 : <%=addrs %></h2>
	<h2>접근 URL : <%=host %></h2>
	<h2>전달방식 : <%=method %></h2>
	
	<h2>현재 페이지 상태 : <%=status %></h2>
	
	<p>
		jsp 파일을 저장하면 내부적으로 jsp 파일로 변환 <br />
		-> 스크립틀릿 안의 코드 _jspService() 안쪽에 들어감 <br />
		_jspService() 에 몇 개의 지역변수가 존재함 <br />
		그 자동으로 선언되는 변수 : jsp 내장 객체(request, response, out) <br />
		
		요청 시 속성으로 추가할 수 있는 객체들 <br />
		
		<ul>
			<li>---------  || (적용 가능 범위)</li>
			<li>pageContext : 현재 페이지</li>
			<li>request     : 요청 범위까지</li>
			<li>session     : 웹 브라우저가 종료될 때 까지</li>
			<li>application : 톰캣(서버)가 종료될 때까지</li>
			
			<li>ex) pageContext.setAttribute("이름", "객체");</li>
		</ul>
	</p>
	
	<p>
		<h2>페이지 이동시키는 방법 : 2가지</h2>
		<ol>
			<li>sendRedirect() : 요청객체가 없음, 최종 주소지 알 수 있음</li>
			<li>forward(request, response) : 요청, 응답 객체가 살아서 전달됨, 
			최종 주소지는 모름 (알 필요가 없음) </li>
			<li></li>
		</ol>
	</p>
</body>
</html>