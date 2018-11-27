<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx23.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input").on('click', getData);
		
		function getData(){
			//ajax 
			$.ajax({
				// 서버에 요청할 자원
				url : 'serverEx.xml',
				// 파일타입
				dataType : 'xml',
				// 타입 
				type : 'get',
				// ajax 수행 전 작업
				beforeSend : function(){
					alert("URL 접근 전");
				},
				
				// 성공하면
				success : function(data){
					// 데이터파일에서 book 이라는 요소를 찾고 그 요소를 찾을 때 마다 호출
					$(data).find("book").each(function(){
						// 찾은 book 요소에서 title, price 요소를 검색 -> 그 안에있는 데이터를 추출
						var title = $(this).find("title").text();
						var price = $(this).find("price").text();
						
						// 화면에 HTML 형식으로 출력하기 위해 조작
						var txt = "<li>"+ title + " : " + price + "</li>";
						
						// ul 안쪽에 추가
						$('ul').append(txt);						
					});								
				},
				// 성공 못한다면
				error : function(){
					alert("에러 발생시 호출");
				},
				// 작업이 다 끝난 후
				complete : function(){
					alert("동작 완료 후 호출");
				}
				
			});			
		}// getData() end
		
	});
</script>
</head>
<body>
	<h2>Soldesk 도서관</h2>
	<input type="button" value="도서목록" />
	<div>
		<h2>도서목록</h2>
		<div>
			<ul>
				<li>
					<h2>신간목록</h2>
				</li>
			</ul>
		</div>
	
	</div>

</body>
</html>