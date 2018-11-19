<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.OracleXEConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view.jsp</title>
</head>
<body>
	<%
		String writer = request.getParameter("writer");
		Connection conn = OracleXEConnection.getInstance().getConnection();
		StringBuffer sb = new StringBuffer();
		sb.append("select * from fileuploadtest ");
		sb.append("where writer = ? ");
		
		PreparedStatement pstmt = conn.prepareStatement(sb.toString());
		pstmt.setString(1, writer);
		
		ResultSet rs = pstmt.executeQuery();
		
		rs.next();
		
		String filePath = rs.getString("filepath");
		
	%>
	<div>
		<img src="<%=filePath %>" alt="" />
	</div>
</body>
</html>