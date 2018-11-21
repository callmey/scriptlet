<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx01.jsp</title>
<style type="text/css">
	.plus {
		background : black;
		color: white;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/* css 선택자
		1. HTML tag 전부
		2. id ===> #
		3. class ===> .
		4. all ===> * */
		
		$('h1').on('click', function(){
			//console.log('click');
			$('h1').html(function(index, html){
				return html + '*';
			});
		});
		
		$('h1').on({
			mouseenter : function(){
				$('h1').addClass('plus');
			},
			mouseleave : function(){
				$('h1').removeClass('plus');
			}
		});
		
		
	});

</script>
</head>
<body>
	<!-- 
		jQuery : javascript library
		
		DOM 탐색은 CSS 선택자를 사용함. 그러므로 CSS 표현식을
		잘 알고 있다면 쉽게 선태자를 이해할 수 있음
		
		$(선택자), jquery(선택자) .....
		
	 -->
	 
	 <h1>HELLO</h1>
	 <h1>jQuery</h1>
	 <h1>World</h1>
</body>
</html>