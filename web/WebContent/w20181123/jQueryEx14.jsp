<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx14.jsp</title>
<style type="text/css">
	.mainmenu {
		float: left;
		width: 320px;
		list-style-type: none;
	}
	
	li.mainmenu ul {
		margin: 0;
		display: block;
		list-style-type: none;
		padding: 0;
		
	}
	
	li.mainmenu a {
		width: 300px;
		display: block;
		background-color: #a50000;
		color: white;
		text-decoration: none;
		padding: 10px;
		border-bottom: 1px solid #ffffff;
	}
	
	ul#dropdownmenu li a:hover{
		background-color: #aaaaaa;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("li.mainmenu ul").hide();
		
		$("li.mainmenu").hover(function(){
			// 카테고리에 마우스가 on 되면 실행될 코드
			// 내 카테고리만(자식요소에만) 실행
			$("ul", this).stop().slideDown(300);
		}, function(){
			// 마우스가 out되면 실행될 코드
			$("ul", this).stop().slideUp(300);
		});
	});
</script>
</head>
<body>
	<!-- 드롭다운 메뉴 -->
	<!-- ul#dropdownmenu>(li.mainmenu>a+ul>(li>a)*3)*2 -->
	<ul id="dropdownmenu">
		<li class="mainmenu">
			<a href="#">도서</a>
			<ul>
				<li><a href="#">IT</a></li>
				<li><a href="#">소설</a></li>
				<li><a href="#">참고서</a></li>
			</ul>
		</li>
		<li class="mainmenu">
			<a href="#">명품</a>
			<ul>
				<li><a href="#">샤넬</a></li>
				<li><a href="#">에르메스</a></li>
				<li><a href="#">구찌</a></li>
			</ul>
		</li>
	</ul>
</body>
</html>