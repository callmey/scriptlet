<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx05.jsp</title>
<script type="text/javascript">
	// 비동기 통신 객체 : XMLHttpRequest 객체
	// cf) 이 객체가 웹 브라우저에 따라서 이름이 다름(특히 MS)
	
	var xhr = null;
	
	function getXMLHttpRequest(){
		// MS 브라우저라면
		if(window.ActiveObject){
			try{
				return new ActiveObject("MsXML2.XMLHttp");
			}catch(e){
				try{
					return new ActiveObject("Microsoft.XMLHTTP");
				}catch(e) {
					null;
				}
			}
		}else if(window.XMLHttpRequest) {
			// 그 외 브라우저라면
			return new XMLHttpRequest();
		}else {
			return null;
		}
	}// getXMLHttpRequest() end
	
	function load(url){
		//console.log(url);
		
		// 1. 비동기 통신 객체 얻어오기
		
		xhr = new getXMLHttpRequest();
		
		//console.log(xhr);
		
		// 2. 화면에 출력할 부분 - callback 호출
		// callback : 대기하고 있다가 응답이 오면 함수를 실행
		xhr.onreadystatechange = viewMessage;
		
		//3. open(전달방식, 주소(데이터), 비동기통신여부)
			xhr.open('GET', url, true);
			
			// 4. send() : 실행
			xhr.send();
			

	}
		
		function viewMessage(){
			// xhr => readyState 0 ~ 4
			if(xhr.readyState==4) { // 완료가 되면
				// 정상페이지면
				if(xhr.status==200){
					//alert(xhr.responseText);
					
					var div1 = document.getElementById("div1");
					
					div1.innerHTML = '<h1>' + xhr.responseText+ "</h1>";
				}
			}
		}
		
			
	</script>
</head>
<body>
	<!-- AJAX(Asynchronous JavaScript and XML)
		: 자바스크립트를 이용해서 서버와 XML(데이터)을 비동기적으로
		추출하여 웹 페이지 전체의 갱신없이 부분적으로 
		갱신할 수 있는 기술
	-->
	
	<input type="button" value="simple1.txt" onclick="load('simple1.txt')" />
	<input type="button" value="simple1.jsp" onclick="load('simple1.jsp')"/>
	<input type="button" value="simple2.txt" onclick="load('simple2.txt')" />
	<input type="button" value="simple2.jsp" onclick="load('simple2.jsp')"/>
	
	<div id="div1">
		<!-- 서버 혹은 XML(데이터)에서 가져온 내용 출력부분 -->
		
	</div>
</body>
</html>