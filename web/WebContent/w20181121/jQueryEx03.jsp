<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx03.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('h1').click(function(){
			$('h1').html('WoW');
			alert('이벤트 발생 중.....');
			
			// 남아있는 효과를 제거
			$('h1').off();
		});
	});
	
</script>
</head>
<body>
	<h1>HELLO</h1>
	 <h1>jQuery</h1>
	 <h1>World</h1>
</body>
</html>