<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx10.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#frm").submit(function(e){
			// 입력값을 받아오기
			var id = $("#id").val();
			var pw = $("#pw").val();
			
			var form = $(this).attr("name");
			
			// 출력
			alert(id + " : "+ pw);
			alert("form name : "+ form);
		});
		
	});
</script>
</head>
<body>
	<form action="#" id="frm" name="frm">
		<table>
			<tr>
				<th>ID : </th>
				<td><input type="text" name="id" id="id" /></td>
			</tr>
			<tr>
				<th>Pw : </th>
				<td><input type="password" name="pw" id="pw" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송" />
				</td>
			</tr>
		</table>
	</form>

</body>
</html>