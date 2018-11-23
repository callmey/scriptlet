<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx12.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		// 숨기기 버튼 누르면 div 영역을 감추고 싶음
		$("input[value='숨기기']").click(function(){
			$("#box1").hide(3000); // 함수 안에 시간 - 1/1000초 단위
		});
		
		$("input[value='보이기']").on('click', function(){
			$("#box1").show(3000);
		});
		
		$("input[value='번갈아수행']").on('click', function(){
			$("#box1").toggle(3000);
		});
		
		$("input[value='점점 사라지기']").on('click', function(){
			$("#box1").fadeOut(3000);
		});
		
		$("input[value='점점 보이기']").on('click', function(){
			$("#box1").fadeIn(3000);
		})
		
		$("input[value='효과더하기']").on('click', function(){
			// 첫번째 효과가 끝나고 다른 함수를 추가할 수 있음
			// ex) 다른 페이지로 이동 ...
			$("#box1").slideToggle(1000, function(){
				alert("작업 완료");				
			});
		});
		
		
		
	});
</script>
</head>
<body>
	<input type="button" value="숨기기" />
	<input type="button" value="보이기" />
	<input type="button" value="번갈아수행" />
	<input type="button" value="점점 사라지기" />
	<input type="button" value="점점 보이기" />
	<input type="button" value="효과더하기" />
	
	<div id="box1" style="font-size:20px">
	<br />
		오늘은 목요일 <br /><br />
		내일은 금요일 <br /><br />
		
		곧 있으면 점심시간 <br /> <br />
		
		오늘 뭐 먹지? <br /> <br />
		
		눈 온다더니 날씨 캐 좋음 <br /> <br />
		
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel saepe maxime temporibus nam vero eaque provident ipsa repellendus illum nesciunt recusandae perspiciatis repellat fuga tempore dolor sit est qui earum. <br /> <br />
		
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam repellendus illum perferendis aspernatur nam ab praesentium obcaecati dicta cupiditate dolorem illo tenetur eaque voluptatum ullam officiis eligendi totam labore rerum!
		
	
	</div>
	
	
	
	
	

</body>
</html>














