<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx08.jsp</title>
<style type="text/css">
	#div2 {
		width: 300px;
		height: 300px;
		background: red;
		padding: 50px;
		display: inline;
		float: left;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	/* $(document).ready(function(){}); */
	// jquery 버전업이 되면 deprecated 되는 것들을 항상 확인할 것! ex) $(document)..
	
	$(function(){
		$('h1').on('click', function(){
			var length = $('h1').length;
			
			var html = $(this).html();
			
			//javascript innerHTML 효과 - append()
			$('#div1').append('<h1>'+length+ " : " + html +  '</h1>');			
		});	
		
		// 빨간 div에 마우스가 오버되면 아래에 내일은 금요일이 출력되도록 해보세요
		$("#div2").on('mouseover', function(){
			$('body').append('<h1>내일은 금요일</h1>');
		}).mouseenter(function(){
			$('body').append('<h1>내일은 금요일2</h1>');			
		});
		
		/*
		 mouseover/mouseout : 내부에 자식이 있으면 자식에서도 이벤트가 발생
		
		 mouseenter/mouseleave
		  : 내부에 자식이 있으도 자식에서는 이벤트가 발생하지 않음
		*/
	});
</script>
</head>
<body>
	<div id="div1">
		<h1>오늘은 목요일</h1>
	</div>
	
	<div id="div2">
	
	</div>

</body>
</html>












