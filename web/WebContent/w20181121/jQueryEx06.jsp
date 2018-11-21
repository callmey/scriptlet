<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx06.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('img').css({
			"width" : "150px",
			"height" : "300px"
		}); // JSON 방식
		
		$('p').css("margin-left", "30px");
		$('li').css("float", "left");
		$('ul').css("list-style", "none");
	})
</script>
</head>
<body>
	<!-- jQuery(css) + img -->
	<h2>영화 소개</h2>
	
	<!-- ul>(li>div>img[src='../Images/movie_image$.jpg']+p)*4 -->
	<ul>
		<li>
			<div>
				<img src="../Images/movie_image1.jpg" alt="창궐" />
				<p>창궐</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../Images/movie_image2.jpg" alt="암수살인" />
				<p>암수살인</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../Images/movie_image3.jpg" alt="미쓰백" />
				<p>미쓰백</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../Images/movie_image4.jpg" alt="베놈" />
				<p>베놈</p>
			</div>
		</li>
	</ul>
</body>
</html>