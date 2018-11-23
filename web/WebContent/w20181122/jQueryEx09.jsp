<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx09.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(e){
		$('textarea').keyup(function(){
			// 사용자가 입력한 글의 글자수를 구하기
			var input = $(this).val().length;
			
			//console.log(input);
			
			// 남은 글자수 계산
			//var txt = 60 - input			
			
			// 화면에 출력
			$('span').html(input);
			
			// 30자가 넘어가면 노란색
			// 50자가 되면 빨간색
			// 60자가 되면 경고창 띄우고 더이상 쓸 수 없습니다 출력
			 if(input==30){
				$('span').css('color', 'yellow');
			}else if(input==50){
				$('span').css('color', 'red');				
			}else if(input>=60){
				alert("더 이상 쓸 수 없어요");	
				$('textarea').attr('disabled', 'disabled');
			} 
		});		
	});

</script>
</head>
<body>
	<div>
		<p>한마디 필요하신가요</p>
		<h2><span></span>/60자 제한</h2>
		<textarea name="" id="" cols="40" rows="10"></textarea>	
	</div>

</body>
</html>