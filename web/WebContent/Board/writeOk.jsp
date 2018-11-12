<%@page import="dao.BoardDAO"%>
<%@page import="vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 사용자에 보여줄 페이지가 아니므로 굳이 HTML이 필요 없음 [writeOk.jsp] -->

<%
	String writer = request.getParameter("wr");
	String title = request.getParameter("ti");
	String contents = request.getParameter("ct");
	
	// 바로 DB에 접속하지 말고 확인하는 습관
	// 브라우저에 출력해봅시다
	
	//out.println("writer : " + writer);
	//out.println("title : " + title);
	//out.println("contents : " + contents);
	
	// DB에 연결 후 write.jsp에서 넘겨받은 값을 전달(저장)
	BoardDAO dao = new BoardDAO();
	BoardVO vo = new BoardVO();

	vo.setTitle(title);
	vo.setWriter(writer);
	vo.setContents(contents);
	
	// 사용자의 ip를 얻어오기
	String ip = request.getRemoteAddr();
	vo.setIp(ip);
	
	dao.addData(vo);
	
	System.out.println("데이터 입력 완료");
	
	// DB에 저장을 다하고 난 후 게시판 메인(list.jsp)으로 확인
	response.sendRedirect("list.jsp");
	
	
	
%>