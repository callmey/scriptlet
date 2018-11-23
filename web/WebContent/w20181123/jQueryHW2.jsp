<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryHW2.jsp</title>
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
		$("div").hover(function(){
			$(this).stop().animate({
				left : 800
			}, 500);
		});/* , function(){
			$(this).animate({
				left : 0
			}, 500);
		}); */
	});
		/* $("#div1").click(function(){
			$('#div1').animate({"marginLeft" :  "300px"}, 'start');
			$('#div2').animate({"marginLeft" :  "300px"}, 'step');
			$('#div3').animate({"marginLeft" :  "300px"}, 'step');
			$('#div4').animate({"marginLeft" :  "300px"}, 'step');
			$('#div5').animate({"marginLeft" :  "300px"}, 'step');
			$('#div6').animate({"marginLeft" :  "300px"}, 'complete');
		});
	}); */
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