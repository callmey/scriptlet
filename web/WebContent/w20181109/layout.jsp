<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>layout.jsp</title>
<!-- CSS 불러오기 -->
<link rel="stylesheet" href="../css/layOut.css" />
</head>
<body>
	<%
		String fname = "";
	
		Object obj = request.getParameter("fno");
		
		if(obj==null) {
			fname = "leftcontents.jsp";
		}else {
			fname = (String)obj + ".jsp";
		}
			
	%>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="nav.jsp"></jsp:include>
		<!-- div id를 같게 한 후 (CSS 통일 목적)
			layout.jsp에서 각각 선택된 페이지가 
			노출되도록 설계해봤음 -->
		<jsp:include page="<%=fname%>"></jsp:include>
		<jsp:include page="sidebar.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>
		
		
	</div>
</body>
</html>