<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>ajaxEx01.jsp</title>
<script type="text/javascript">
	// XMLHttpRequest 객체
	var request = new XMLHttpRequest();
	
	/* console.log(request);
	console.dir(request); */
	
	// 요청 초기화 - HTTP 메소드 및 URL 설정하는 역할
	request.open('GET', 'data.html', false); // open(전달방식, 주소(데이터), 비동기통신여부)
	
	// 요청 수행
	request.send(""); // POST 시 내부에 넣어주어야 함
	
	// 출력
	/* alert(request.responseText); */
	
	var txt = request.responseText; // 요청받은 페이지를 내 페이지에 출력
	
	console.log(txt);
	document.write(txt);
</script>
<body>

</body>
</html>