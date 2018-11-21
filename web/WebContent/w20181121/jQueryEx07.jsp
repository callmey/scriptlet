<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// 1번 버튼을 누르면 CSS를 적용하기
		$("#btn1").on('click', function() {
			var $box1 = $("#box1");
			// $를 계속 찾아가는 방법은 결국 느려짐
			// $(선택자)를 변수로 선언해두면 리소스를 아낄 수 있음
			
			// 1) 맵 방식 - JSON 객체 이용 {name1 : value1, name2 : value2, ...}
		$box1.css({
			"color" : "red",
			"background" : "green"
		});
			
			// 2) 메소드 체이닝 방식
			/* $box1.css("color", "red").css("background-color", "green"); */
		})
	}); // btn1 click end
</script>
</head>
<body>
	<!-- CSS 처리 위한 버튼 -->
	<!-- (input:button[value='btn$'][id='btn$'])*5 -->
	<input type="button" value="btn1" id="btn1" />
	<input type="button" value="btn2" id="btn2" />
	<input type="button" value="btn3" id="btn3" />
	<input type="button" value="btn4" id="btn4" />
	<input type="button" value="btn5" id="btn5" />
	
	<div id="box1">box1</div>
	
	<br />
	
	<img src="../Images/shark.jpg" alt="아기상어" />
</body>
</html>