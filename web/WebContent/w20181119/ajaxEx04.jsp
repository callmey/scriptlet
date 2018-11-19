<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx04.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* $.get('data.html',function(data){
			$("body").html(data);
			
		}); */
		
		//$("body").load('data.html');
		
			$.getJSON('data.json', function(data){ // data.json에서 data 변수로 데이터를 받아서
				$.each(data, function(name, value){ // data 데이터 안 name, value 받음
					$("body").append('<h1>'+name+" : "+ value + '</h1>');
			});
		});
	});
</script>
</head>
<body>

</body>
</html>