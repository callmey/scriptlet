<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>address.jsp</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	
	function openDaumPost(){
		//console.log("눌러지나?");
		
		
		//JSON : Javascript Object Notation
		//{name 1: value1, name2 : value2 ,......}
		
		new daum.Postcode({
			oncomplete: function(data) {//json 방식
	        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	       	// 예제를 참고하여 다양한 활용법을 확인해 보세요.
	              
	  		var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	        	  
	 		// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('post').value = data.zonecode; //5자리 새우편번호 사용
		 	document.getElementById('addr1').value = fullRoadAddr;
			document.getElementById('addr2').value = data.jibunAddress;
	              
	              
	         }
	     }).open();
		
	}//openDaumPost() end
	
</script>
</head>
<body>
	<input type="text" name="" id="post" placeholder="우편번호" />
	<input type="button" value="우편번호찾기" onclick="openDaumPost()" /><br />
	<input type="text" name="" id="addr1" size="50" placeholder="도로명주소" /><br />
	<input type="text" name="" id="addr2" size="50" placeholder="지번주소" />
</body>
</html>