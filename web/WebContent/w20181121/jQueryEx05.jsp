<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx05.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	//JQuery로 CSS 효과 주기
	$(document).ready(function(){
		$("*").css("border", "1px solid red");
	
	// id가 id인 엘리먼트만 선택 CSS 효과 주기
		$("#id").css("border", "1px solid blue");
	
	
	// class가 row인 엘리먼트만 선택 - 테두리만 green으로 바꿔보세요
		$(".row").css("border", "1px solid green");
	
	// 다중 선택도 가능
	$("#id, .row, table").css("border", "1px solid black" );
	
	});	

</script>
</head>
<body>
	<!-- table>(tr>th+td>input:text)*2 -->
	<table>
		<tr>
			<th class="row">ID : </th>
			<td><input type="text" name="" id="id" /></td>
		</tr>
		<tr>
			<th class="row">PW : </th>
			<td><input type="text" name="" id="pw" /></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="button" value="로그인" />
				<input type="reset" value="reset" />
			</td>
		</tr>
	</table>
</body>
</html>