<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
</head>
<style>

	#loginDiv {
		marign: 0 auto;
		width: 110px;
	
	}
	
	table, tr, th, td {
		border: 1px solid black;
		border-collapse: collapse;
		text-align: center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 자바스크립트 - id로 보통 호출
		// jquery - css 선택자로 호출
		
		// 만약에 속성을 지정할 아이디가 없다면 ... 속성값으로 불러 줄 수도 있음
		$("input:button[value='로그인']").on('click', function(){
			console.log("잘 눌러지나?");
		});
		
		$("input").on('click', function(){
			document.frm.action = "loginOk.jsp";
			document.frm.method = "get"; 
			// 지금은 수업이므로 get, 실무에서는 post로 보내세요
			document.frm.submit();
			
		});
		
		$("reg").on('click', function(){
			document.frm.actin = "register.jsp";
			document.frm.method = "get";
			document.frm.submit();
		});
		
	});
</script>
<body>
	<!-- div#loginDiv>form>table>(tr>th+td>input:text)*2 -->
	<div id="loginDiv">
		<form action="#" name="frm">
			<table>
				<tr>
					<th>ID : </th>
					<td><input type="text" name="id" id="" /></td>
				</tr>
				<tr>
					<th>PW : </th>
					<td><input type="text" name="pw" id="" /></td>
				</tr>
				<!-- tr#botTr>(td>input:button)*2 -->
				<tr id="botTr">
					<td><input type="button" value="로그인" id="login" /></td>
					<td><input type="button" value="회원가입" id="reg"/></td>
				</tr>	
			</table>
		</form>
	</div>
</body>
</html>