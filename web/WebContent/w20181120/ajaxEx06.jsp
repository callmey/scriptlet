<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx06.jsp</title>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript">
	function ajaxToServer(){
		var txt = document.getElementById("txt").value;
		
		// ex) hello.jsp?txt=안녕하세요
		var params = "txt="+encodeURIComponent(txt);
		
		//sendRequest(url, params, callback, method)
		sendRequest('hello.jsp', params, callback, "GET");
	}
	
	function callback() {
		if(xhr.readyState==4) {
			if(xhr.status==200) {
				console.log(xhr.responseText);
				 
				var div1 = document.getElementById("div1");
				div1.innerHTML = '<h1>'+xhr.responseText+'<h1>'; 
			}
		}
	}
</script>
</head>
<body>
	<input type="text" name="" id="txt" />
	<input type="button" value="입력" onclick="ajaxToServer()"/>
	
	<br />
	
	<div id="div1">
	
	</div>
</body>
</html>