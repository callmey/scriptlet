<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx19.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		// 반복적 수행 : setInterval
		setInterval(function(){
			$("#box2").animate({left:"-=10px"}, 300, function(){
				//현재 left 속성값을 가져오기
				var left = parseInt($("#box2").css("left"));				
				
				// 이미지가 다 지나간 경우 오른쪽에서 다시 나오게 설정해보세요
				if(left < -1100){
					$("#box2").css("left", "0px");
				}
				
			});		
		});
		
	});
</script>

<style type="text/css">
	*{margin: 0; padding: 0;}
	#postbox {
		margin-left: 200px;
		margin-top: 30px;
	}
	
	#box1 {
		width: 600px;
		height: 190px;
		background-color: black;
		border: 4px solid #aaa;
		overflow: hidden;
		/* overflow:hidden => 자식영역이 부모 영역보다 크면 오버된 영역은 숨기기 */
		position: relative;		
	}
	
	#box2 {
		width: 1200px;
		height: 190px;
		margin: 0;
		padding: 0;
		position: absolute;
		left : 0;
	}
	
	#box2 ul li {
		list-style-type: none;
		float: left;
		margin: 0;
		padding: 0;
	}
	
	
	#box2 ul li img {
		width: 135px;
		margin-right: 5px;
	}
	
	#eventBox{
		width: 690px;
		height: 200px;
		background-color: #ccc;
		margin-left: 200px;
		margin-top: 30px;
	}
	
	#eventBox ul li {
		list-style-type: none;
	}
	
	#box3 {
		padding: 30px;
	}
	
	
</style>
</head>
<body>
	<!-- 영화 소개 메인 페이지 일부 -->
	<!-- 영화포스터가 한장씩 밀려가면서 보이기 -->
	
	<div id="postbox">
		<h2>C데박스</h2>
		<div id="box1">
			<!-- div#box2>ul>(li>img[src='../Images/movie_image$.jpg'])*8 -->
			<div id="box2">
				<ul>
					<li><img src="../Images/movie_image1.jpg" alt="" /></li>
					<li><img src="../Images/movie_image2.jpg" alt="" /></li>
					<li><img src="../Images/movie_image3.jpg" alt="" /></li>
					<li><img src="../Images/movie_image4.jpg" alt="" /></li>
					<li><img src="../Images/movie_image5.jpg" alt="" /></li>
					<li><img src="../Images/movie_image6.jpg" alt="" /></li>
					<li><img src="../Images/movie_image7.jpg" alt="" /></li>
					<li><img src="../Images/movie_image8.jpg" alt="" /></li>
				</ul>
			</div>
		</div>	
		
	</div>
	
	<div id="eventBox">
		<div id="box3">
			<h2>진행중인 이벤트</h2>
			<ul>
				<li>1. 1 + 1 이벤트</li>
				<li>2. 눈오는 날 90% 쿠폰 이벤트</li>
				<li>3. 헤어진 커플 100% 쿠폰 이벤트</li>
				<li>4. 매주 수요일은 반값 이벤트</li>
			</ul>		
		</div>	
	</div>
	
	
	
	
</body>
</html>











