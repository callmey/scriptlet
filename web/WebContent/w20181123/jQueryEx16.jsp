<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx15.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn1").on('click', function(){
			//$("img").css("marginLeft", 800);
			
			// JSON
			/* $("img").css({
				"margin-left" : "800px"
			}); */
			
			// CSS()를 사용하면 순간 이동
			
			// animate(애니메이션효과, 시간)
			$("img").animate({"margin-left":"800px"}, 1000 );
		});
		
		$("#btn2").on('click', function(){
			$("img").animate({marginTop : 200}, 1000);
		})
		
		$("#btn3").click(function(){
			// 현재 이미지의 너비와 넓이를 구해오기
			var w = parseInt($("img").css('width'))*2;
			
			//console.log(w);
			var h = parseInt($("img").css("height"))*2;
			
			$("img").animate({width:w, height:h}, 1000 );
			
		})
		
		$("div").click(function(){
			 var w = parseInt($(this).css("width"));
			//console.log(w); 
			 var h = parseInt($(this).css("height"));
			
			$(this).animate({
				/* width : w + 100,
				height : h + 100 */
				
				width : '+=100',
				height : '+=100'
			}, 'fast');
		});
	});
</script>
<style type="text/css">
	div {
		width: 100px;
		height: 100px;
		background-color: red;
	}
</style>
</head>
<body>
	<!-- 이미지에 애니메이션 효과 주기 -->
	<input type="button" value="right" id="btn1" />
	<input type="button" value="bottom" id="btn2" />
	<input type="button" value="zoom2X" id="btn3" />
	
	<br /><br /><br />
	<img src="../Images/origami.gif" alt="" />
	
	<br /><br /><br />
	<!-- div에 애니메이션 효과 추가 -->
	<div></div>
</body>
</html>