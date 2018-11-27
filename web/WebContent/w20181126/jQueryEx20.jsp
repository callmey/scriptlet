<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx20.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.innerfade.js"></script>
<script type="text/javascript">
	$(function(){
		//jquery.innerFade.js 적용
		$("#innerFade").innerfade({
			animationtype : 'slide',
			speed : 700,
			timeout : 2000,
			type : 'random'			
		});
	});
</script>
<style type="text/css">
	*{margin: 0px; padding: 0px;}
	ul{list-style-type: none;}
	img{width: 600px;}
</style>
</head>
<body>
	<!-- div#wrapper>ul#innerFade>(li>img[src='../Images/movie_image$.jpg'])*8 -->
	<div id="wrapper">
		<ul id="innerFade">
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

</body>
</html>