<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx07.jsp</title>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript">
	function prt() {
		var txt = document.getElementById("txt").value;
		
		//console.log(txt);
		
		var params = "txt="+encodeURIComponent(txt);
		//console.log(params);
		
		sendRequest('search.jsp', params, callback, "GET"); 
		
	}
	
	 function callback() {
		if(xhr.readyState==4 && xhr.status==200) {
			/* console.log("callback 함수 실행중");
			console.log(xhr.responseText); */
			
			var img = document.getElementById("img");
			
			img.src = xhr.responseText;
			
		}
	} 
</script>
</head>
<body>
	<input type="text" name="" id="txt" />
	<input type="button" value="출력" onclick="prt()" />
	<br />
	<br />
	<div id="div1">
		<img src="../Images/origami.gif" alt="종이접기" id="img"/>
	</div>
</body>
</html>