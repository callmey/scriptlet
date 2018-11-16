<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fileWrite.jsp</title>
<style type="text/css">
	table, tr, th, td{
		border : 1px solid black;	
	}
</style>
</head>
<body>
<!--  cos.jar 통해서 파일을 전송하려면 form tag 수정(추가)-->
	<form action="result.jsp" enctype="multipart/form-data" method="post">
		<table>
			<tr>
				<th>제목 : </th>
				<td><input type="text" name="title" id="" /></td>
			</tr>
			<tr>
				<th>작성자 : </th>
				<td><input type="text" name="writer" id="" /></td>
			</tr>
			<tr>
				<th>내용 : </th>
				<td><textarea name="contents" id="" rows="10" cols="30"></textarea></td>
			</tr>
			
			<tr>
				<th>첨부파일 : </th>
				<td><input type="file" name="filename" id="" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송" /></td>
			</tr>
		</table>
	
	</form>
</body>
</html>