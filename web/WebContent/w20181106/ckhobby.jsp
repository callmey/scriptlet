<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ckhobby.jsp</title>
</head>
<body>
	<!-- form>(input:checkbox[name='box'])*5 -->
	<form action="resultHobby.jsp">
		<input type="checkbox" name="box" id="" value="독서"/>독서
		<input type="checkbox" name="box" id="" value="영화감상"/>영화감상
		<input type="checkbox" name="box" id="" value="낚시"/>낚시
		<input type="checkbox" name="box" id="" value="산책"/>산책
		<input type="checkbox" name="box" id="" value="게임"/>게임
		<input type="submit" value="전송" />
	</form>
</body>
</html>