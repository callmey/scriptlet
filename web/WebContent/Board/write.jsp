<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>write.jsp</title>
</head>
<style type="text/css">
	#container {
		margin: 0 auto;
		width: 280px;
		border: 1px solid black;
	}
	
	#top {
		text-align: center;
		color:#8cc00;
		border-bottom: 1px solid black;
	}
	
	#context {
		margin-left: 7px;
	
	}
	
	#button {
		margin-left: 20px;
	}
	
	#writer, #title {
		margin-left : 6px;
	}
</style>
<body>
	<form action="writeOk.jsp">
		<div id="container">
			<div id="top">
				<p>
					<h3>하고 싶은 얘기가 있나요?</h3>
				</p>
			</div>	
			<div id="writer">
				<p>WRTIER :
				<input type="text" name="wr" id="wr" /></p>
			</div>
			
			<div id="title">
				<p>TITLE : 
					<input type="text" name="ti" id="ti" />
				</p>
			</div>
			<div>
				<div id="context">
					<p>
						<textarea name="ct" id="ct" cols="35" rows="10"></textarea>
					</p>
				</div>
			</div>
			
			<div id="button">
				<input type="button" value="목록보기" />
				<input type="submit" value="작성하기" />
				<input type="reset" value="다시쓰기" />
				
			</div>
		</div>
	</form>
</body>
</html>