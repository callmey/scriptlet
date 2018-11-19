<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var request = new XMLHttpRequest();
	
	request.onreadystatechange = function(event){
	// readyState 0 ~ 4 까지 순서로 완료를 나타냄
		alert(request.readyState);
		if(request.readyState==4) {
			if(request.status==200) {
				var d1 = document.getElementById("d1");
				d1.innerHTML = "<h2>" + request.responseText+"</h2>";
			}
		}
	}
	request.open('GET', 'data.html', true);
	request.send();
</script>
</head>
<body>
	<h1>Ajax Ex</h1>
	<div id="d1">
		
	</div>
</body>
</html>