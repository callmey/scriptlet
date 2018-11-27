<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx18.jsp</title>
<style type="text/css">
	div {
		width: 100px;
		height: 100px;
		background-color: yellow;
		position: relative;	
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('div').each(function(index){
			// delay(index*500)초 후에 각각 animate 효과 발생
			$(this).delay(index*500).animate({
				left:700
			}, 'slow');
		});
		
		$('div').each(function(index){
			// delay(index*500)초 후에 각각 animate 효과 발생
			$(this).delay(index*500).animate({
				left:0
			}, 'slow');
		});
	});
</script>
</head>
<body>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
</body>
</html>