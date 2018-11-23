<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx13.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("img").hide();
		$("#btn").click(function(){
			$("img", "br").show();
			$("img").css("margin-left", "100px").fadeIn(3000, function(){
				location.href = "main.jsp";
			});		
		});
	});
</script>
</head>
<body>
	<!-- 
		1. 버튼 클릭 시 브라우저에 이미지
		(이미지가 100px 정도 오른쪽에서 출력)
		점점 보이게 출력
		
		2. 이미지가 다 출력이 되면 다른 페이지(main.jsp)로 이동
		
		3. main.jsp 에서는 어서오세요 출력
		
		
	 -->
	 
	 <img src="../Images/shark.jpg" alt="아기상어" /> <br />
	 <input type="button" value="사진보이기" id="btn"/>
</body>
</html>