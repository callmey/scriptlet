<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dirView.jsp</title>
</head>
<body>
	<%
		// upload 디렉토리 실제 경로
		String path = request.getRealPath("upload");
		
		// 파일 객체
		File f = new File(path);
		
		// 경로가 디렉토리라면
		if(f.isDirectory()) {
			// 현재 디렉토리에 있는 모든 파일 출력
			String[] flist = f.list();
			
			for(String x : flist) {
				out.println(x+"<br/>");
				out.println("<div><img src='../upload/"+x+"'/></div>");
			}
		}
	
	%>
</body>
</html>