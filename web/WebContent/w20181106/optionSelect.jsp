<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>optionSelect.jsp</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	//jQuery : javascript 잘 되어있는 것들 모아놓은 라이브러리
	
	$(document).ready(function() {
		$("#dan").on('change', movePage);
	});
	function movePage() {
		console.log("잘 되나?");
		// 자바스크립트를 통해서 prtGuGuDan.jsp로 이동시켜보세요
		document.frm.action = "prtGuGuDan.jsp";
		document.frm.method = "get";
		document.frm.submit();
		// document는 나에게 있는 문서 전체를 객체로 만드는 것.
	}
	
</script>
<body>
<!-- 자바스크립트로 select 옵션을 선택하면 movePage() 호출 -->
	<h2>구구단을 선택하세요</h2>
	<form name="frm">
		<select name="d1" id="dan">
			<option value="1단">1단</option>
			<option value="2단">2단</option>
			<option value="3단">3단</option>
			<option value="4단">4단</option>
			<option value="5단">5단</option>
			<option value="6단">6단</option>
			<option value="7단">7단</option>
			<option value="8단">8단</option>
			<option value="9단">9단</option>
			<!-- <input type="button" value="전송" onclick="movePage()" /> -->
		</select>
	</form>
</body>
</html>