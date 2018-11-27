<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx22.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input").click(function(){
			// ajax
			$.ajax({
				// 서버에 요청할 자원
				url : 'serverEx.jsp',
				// 타입
				dataType : 'text',
				// 성공했다면
				success : function(data){
					/* alert("요청 성공시 호출");
					alert("전달 받은 데이터 "+ data);
					
					accounting, sales, operations */
					
					// ,를 기준으로 나누기
					var dataArray = data.trim().split(", ");
					
					//console.log(dataArray);
					
					// 나눠진 값을 li 태그로 감싸서 ul에 append
					for(var i=0; i<dataArray.length; i++){
						var str = dataArray[i];
						
						var txt = "<li>"+str+"</li>";
						
						$("ul").append(txt);
					}					
				}
			}); // ajax end			
		});// click end
	});//function end
</script>
</head>
<body>
	<h2>부서목록</h2>
		<input type="button" value="출력" />
		
		<div>
			<ul>
				<li>부서</li>
			</ul>
		</div>

</body>
</html>