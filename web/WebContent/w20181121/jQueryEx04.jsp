<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// 각 div를 클릭하면 console창에
		// h1, p 객체 정보가 출력되도록 해보세요
		/*   $('div').click(function(){
			var h1 = $(this).children('h1').text();
			var p = $(this).children('p').text(); // 누른 div의 자식요소 'p'추출.
			console.log(h1);
			console.log(p);
		})   */
		 
		$('div').click(function(){
			
		//var h1 = $('h1', this).text();
		
		var h1 = $(this).find('h1').text();
		
		var p = $('p', this).text();
		
		console.log(h1);
		console.log(p); 
		});

	});
</script>
</head>
<body>
	<div>
		<h1>Hello</h1>
		<p>안녕하세요</p>
	</div>
	<div>
		<h1>jQuery</h1>
		<p>제이쿼리</p>
	</div>
	<div>
		<h1>world</h1>
		<p>월드</p>
	</div>
</body>
</html>