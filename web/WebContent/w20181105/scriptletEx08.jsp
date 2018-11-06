<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex08</title>
</head>
<body>
	<!-- 배열 -->
	<%!
		String[] arr = new String[10];
	%>
	
	<%
		for(int i=0; i<9; i++) {
			arr[i] = "./movie_image" + (i+1) + ".jpg";
		}
	%>
	
	<%-- <% String[] images = {"movie_image1.jpg","movie_image1.jpg","movie_image2.jpg","movie_image3.jpg",
			"movie_image4.jpg","movie_image5.jpg","movie_image6.jpg",
			"movie_image7.jpg","movie_image8.jpg","movie_image9.jpg",
			"movie_image10.jpg"};
	
	for(int i=0; i<images.length; i++) {
		out.println("<img src='"+ images[i]+"' width='400px' height='300px />'");
	}
	
	%> --%>
	<!-- 
	1. 이미지 목록을 배열에 저장
	2. 브라우저에 포스터 10장 출력해보세요
	 -->
	<%-- img[src="<%=arr[$@0]%>"]*10 --%>
	
	<img src="<%=arr[0]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[1]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[2]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[3]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[4]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[5]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[6]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[7]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[8]%>" alt="" width="200px" height="300px"/>
	<img src="<%=arr[9]%>" alt="" width="200px" height="300px"/>
</body>
</html>