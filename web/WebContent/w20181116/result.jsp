<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connection.OracleXEConnection"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>result.jsp</title>
</head>
<body>
	<!-- 파일 업로드 가능 구현 -->
	<%
		// upload directory 경로 얻어오기
		String saveDir = request.getRealPath("upload");
	
		//out.println(saveDir);
		
		// 첨부파일 최대크기 지정 : ex) 1024 - 1kb
		int maxFileSize = 1204*1024*10; // 10MB
		
		// cos 사용해보기 - 클래스 호출
		
		// new MultipartRequest(요청객체, 저장디렉토리, 최대파일크기, 인코딩타입, 동명처리파일처리규정 객체)
		MultipartRequest mr = new MultipartRequest(request, saveDir, maxFileSize, "UTF-8", new DefaultFileRenamePolicy());
	
		String title = mr.getParameter("title");
		String writer = mr.getParameter("writer");
		String contents = mr.getParameter("contents");
		//String fileName = mr.getParameter("filename");
		String fileName = mr.getOriginalFileName("filename");
		
		//out.println("title : " + title + "<br/>");
		//out.println("writer : " + writer + "<br/>");
		//out.println("contents :" + contents + "<br/>");
		//out.println("fileName : " + fileName + "<br/>" );
		
		// DB에 저장
		
		//  DB에 연결
		Connection conn = OracleXEConnection.getInstance().getConnection();
		
		// sql 저장
		StringBuffer sb = new StringBuffer();
		
		sb.append("insert into fileuploadtest ");
		sb.append("values (file_fno_seq.nextval, ?, ?, ?, ? )");
		
		// 문장 객체
		PreparedStatement pstmt = conn.prepareStatement(sb.toString());
		pstmt.setString(1, title);
		pstmt.setString(2, writer);
		pstmt.setString(3, contents);
		pstmt.setString(4, "../upload/"+fileName); 
		
		pstmt.executeUpdate();
		
	%>
	
	제목 : <%=title %> <br />
	작성자 : <%=writer %> <br />
	내용 : <%=contents %> <br />
	<br />
	
	<a href="dirView.jsp">파일정보</a>
</body>
</html>