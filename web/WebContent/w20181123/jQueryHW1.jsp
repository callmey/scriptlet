<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryHW1.jsp</title>
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
		$("#div1").click(function(){
			$(this).animate({
				left : '+=100'
			}, 1000).animate({
				width : '+=100'
			}, 1000).animate({
				height : '+=100'
			}, 1000);
		}); // div1 end
	
	 $("#div2").click(function(){
			$(this).animate({'left' : '+=100'}, 1000);
			$(this).animate({'width' : '+=100'}, 1000);	
			$(this).animate({'height' : '+=100'}, 1000);
			
			// 3초가 지난 후 다음 함수를 실행
			setTimeout(function(){
				// 애니메이션 큐 제거
				$("#div2").clearQueue();
				
				// 사용하고 싶은 효과 다시 주기
				$("#div2").hide();
			}, 3000);
	 	}); // div2 end
	 	
	 	$("h1").click(function(){
	 		$(this).html(function(index, html){
	 			return html + '★';	
	 		});
	 	});
	 	
	 	setInterval(function(){
	 		$("h1").click();
	 	}, 1000)
 });		
</script>
</head>
<body>
	<div id="div1"></div>
	<br />
	<div id="div2"></div>
	<br />
	<h1>STAR : </h1>
</body>
</html>