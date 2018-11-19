<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx03.jsp</title>
<script type="text/javascript">
	var request = new XMLHttpRequest();
	
	request.onreadystatechange = function(event) { // 완료단계를 다 거치면 실행하라
		if(request.readyState==4) {
			if(request.status==200) {
				var json = request.responseText;
				
				/* console.log(json);
				
				document.write(json); */
				
				// 가공하여 콘솔에 출력 확인
				var prt = "";
				
				for(var i = 0; i<json.length; i++) {
					for(var j in json[i]){
						prt += '<h1>' + i + " : " + json[i][j]+ '</h1>';
						console.log(prt);
					}
				} //for end
				
				// 브라우저에 출력
				var d1 = document.getElementById("d1");
				d1.innerHTML += prt;
			}
		}
	}
	
	request.open('GET', 'data.json', true);
	request.send();



</script>
</head>
<body>
	<h1>Ajax Ex_JSON</h1>
	<div id="d1">
	
	</div>
</body>
</html>