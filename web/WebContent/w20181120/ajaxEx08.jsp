<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx08.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript">
	// 중복 확인 버튼을 누르면 메시지(로그인 가능 여부) 출력
	// 함수명 : checkup
	
	$(document).ready(function(){
		$('#id').focus();
		$("input[value='중복확인']").on('click', checkup);
		
		// 입력 중에 중복여부를 체크
		$("#id").on('keyup', checkup);
		
	});
	
	function checkup() {
		//console.log("checkup click");
		var txt = $("#id").val().trim(); // trim() : 공백제거함수
		var params = "id=" + encodeURIComponent(txt); // URI로 데이터를 전달하기 위해서 문자열을 인코딩
		
		sendRequest('idCheck.jsp', params, callback, 'GET');
		
	}
	
	function callback() {
		if(xhr.readyState == 4 && xhr.status==200) {
			var msg = xhr.responseText.trim();
			
			//console.log(msg);
			
			// 응답이 true라면 span에 아이디가 존재합니다 출력
			// 응답이 false라면 span에 사용가능한 아이디입니다 출력
			
			if(msg=="true") {
				$("#msg").html('<h4>아이디가 존재합니다.</h4>');
			}else{
				$("#msg").html('<h4>사용가능한 아이디입니다.</h4>');
			}
		}
	}
</script>
<style type="text/css">

	#msg, h4 {
		display: inline;
		color: red;
	}

</style>
</head>
<body>
	<form action="loginOk.jsp">
		<input type="text" name="id" id="id" placeholder="중복확인하세요" /> 
		<input type="button" value="중복확인" /> 
		<span id="msg"></span>
		<br />
		<input type="text" name="pwd" id="pwd" /> <br />
		<input type="button" value="로그인" />
		<input type="button" value="회원가입" />
		
	</form>
</body>
</html>