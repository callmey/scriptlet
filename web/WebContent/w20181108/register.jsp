<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register.sjp</title>
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
<body>
	<!-- div#regDiv>form>table>(tr>th+td>input[type=text][name=""]#)*7 -->			
	<div id="regDiv">
		<form action="registerOk.jsp">
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
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>