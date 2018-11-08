<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>modify.jsp</title>
</head>
<style type="text/css">
	#regDiv {
		width: 400px;
		margin: 0 auto;	
	}
	table, tr, th, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	#botTr {
		background-color: pink;
	}
	
	#reg {
		border-radius: 5px;
		background-color: yellow;
	}
	
	#mp0 {
		text-align: center;
		background-color: white;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#reg').on('click', function(){
			//console.log("click");
			
			/* jQuery[0]번째 요소에는 getElementById가 들어있음.
			var id = document.getElementById("id");
			
			console.log(id.value); */
			
			/* var id = document.frm.id.value;
			
			console.log(id); */
			
			if($("#id").val()=="") {
				alert("아이디를 입력하세요.");
				document.frm.id.focus();
				return;
			}else if($("#pw").val()=="") {
				alert("패스워드를 입력하세요.");
				document.frm.pw.focus();
				return;
			}else if($("#recheck").val()=="") {
				alert("다시 한번 입력하세요.");
				document.frm.recheck.focus();
				return;
			}else if($("#name").val()=="") {
				alert("다시 한번 입력하세요.");
				document.frm.name.focus();
				return;
			}else if($("#birth").val()=="") {
				alert("생년월일 입력하세요.");
				document.frm.birth.focus();
				return;
			}
			else if($("#mp1").val()=="") {
				alert("가운데 번호 입력하세요.");
				document.frm.mp1.focus();
				return;
			}
			else if($("#mp2").val()=="") {
				alert("마지막 번호 입력하세요.");
				document.frm.mp2.focus();
				return;
			}else if($("#email").val()=="") {
				alert("이메일을 입력하세요.");
				document.frm.email.focus();
				return;
			}else if($("#pw").val() != $("#recheck").val()) {
				alert("같은 비밀번호가 아닙니다.");
				document.frm.recheck.focus();
				return;
			}
			
			document.frm.action = "modifyOk.jsp";
			document.frm.method = "get";
			document.frm.submit();
		});
	});
</script>
<body>
	<!-- div#regDiv>form>table>(tr>th+td>input[type=text][name=""]#)*7 -->			
	<div id="regDiv">
		<form name="frm">
			<table>
				<tr>
					<th>ID</th>
					<td><input type="text" name="id" id="id" /></td>
				</tr>
				<tr>
					<th>PW</th>
					<td><input type="text" name="pw" id="pw" /></td>
				</tr>
				<tr>
					<th>PWCheck</th>
					<td><input type="text" name="recheck" id="recheck" /></td>
				</tr>
				<tr>
					<th>NAME</th>
					<td><input type="text" name="name" id="name" /></td>
				</tr>
				<tr>
					<th>BIRTH</th>
					<td>
						<input type="text" name="birth" id="birth" placeholder="생년월일 6자리 입력"/>
					</td>
				</tr>
				<tr>
					<th>MP</th>
					<td><input type="text" name="mp0" id="mp0" size="3" value="010" disabled="disabled" />
					<input type="text" name="mp1" id="mp1" size="3"/>-
					<input type="text" name="mp2" id="mp2" size="3" /></td>
				</tr>
				<tr>
					<th>EMAIL</th>
					<td><input type="text" name="email" id="email" /></td>
				</tr>
				<tr id="botTr">
					<td colspan="2">
						<input type="submit" value="가입" id="reg"/>
						<input type="reset" value="reset" id="reset"/>
						<input type="text" size="2" name="cngnum" id="cngnum" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>