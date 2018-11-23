<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#all").change(function(){
			if(this.checked){
				$("#check").children().prop('checked', true);
			}else{
				$("#check").children().prop('checked', false);				
			}
		});		
	});
	
	/*  속성 관련 함수
	
		attr() - return 받는 값이 문자열
	    
		prop() - return 받는 값이 boolean
	
	
	*/
	
	
</script>
</head>
<body>
	<div id="div1">
		<input type="checkbox" name="" id="all" />ALL <br />
		<div id="check">
			<input type="checkbox" name="" id="" />빨강
			<input type="checkbox" name="" id="" />노랑
			<input type="checkbox" name="" id="" />초록		
		</div>	
	</div>	
</body>
</html>