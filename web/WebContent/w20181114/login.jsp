<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<style type="text/css">

	table{margin: 0 auto;}
	table,tr,th,td{
		border: 1px solid black;
		border-collapse: collapse;
	}

</style>
</head>
<body>

	<!-- 쿠키 목록에서 id 값이 있는지 비교한 다음
		id가 있다면
		이미 로그인 되어있다는 상황이므로 loginForm div가 안보여야 함 
		
		ID님 환영합니다 출력
		
		id 가 없다면 로그인 안되어 있는 상황이므로 loginForm div가 보여야 함
		회원가입 혹은 로그인을 다시 하도록 유도
	
	
	 -->
	 
	 <%
	 
	 	Cookie[] clist = request.getCookies();
	 	String id =null;
	 	
	 	if(clist!=null){ 
	 	
	 		for(Cookie c : clist){
	 			if(c.getName().equals("id")){ //쿠키의 이름이 id일때
	 				id= URLDecoder.decode(c.getValue(),"UTF-8"); // 해당 쿠키의 값을 id 변수에 저장한다.
	 			}
	 		}
	 	}
	 	
	 	if(id==null) {
	 	
	 	
	 	
	 
	 %>
	<!-- form>div#loginForm>table>(tr>th+td>input:text)*2 -->
	<form action="loginOk.jsp">
		<div id="loginForm">
			<table>
				<tr>
					<th>ID : </th>
					<td><input type="text" name="id" id="" /></td>
				</tr>
				<tr>
					<th>PW : </th>
					<td><input type="text" name="pw" id="" /></td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" value="로그인" />
						<input type="button" value="회원가입" />
					</td>
				</tr>
			</table>
		</div>
	</form>
	
	<%
	}else{
		
		
	
	
	%>
	
		<h2><a href="logout.jsp"><span><%=id %> 님</span></a> 환영합니다.</h2> <!-- 아이디 누를 시 로그아웃 -->
	
	<%
		}
	%>
	
	
</body>
</html>