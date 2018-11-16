<%@page import="dao.BoardV2_DAO"%>
<%@page import="vo.BoardVO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify.jsp</title>
<%

	String b = request.getParameter("bno");

	BoardV2_DAO dao = new BoardV2_DAO();
	BoardVO vo = new BoardVO();

	if(b!=null){
		int bno = Integer.parseInt(b);
		
		vo = dao.getData(bno);
	}else{
		response.sendRedirect("list.jsp");
	}

%>

<style type="text/css">

	table{
		width: 900px;
		margin : 0 auto;
	}

	table,tr ,td ,th{
		border: 1px solid black;
		border-collapse : collapse ;
		font-size: 20px;
	}
	
	th{
		padding:2px;
		background:-webkit-gradient(linear, 78% 20%, 10% 20%, from(#66ffff), to(#ffff80));
	}
	#context{
		background-color: white;
	}
</style>

<script type="text/javascript" src="../se/js/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript">


	//스마트 에디터 화면에 띄우기 위한 부분
	var oEditors = [];
	
	window.onload = function(){
		
		nhn.husky.EZCreator.createInIFrame({
			
		    oAppRef: oEditors, //name : value (jquery)
		
		    elPlaceHolder: "context", //textarea id로 바꿈
		
		    sSkinURI: "../se/SmartEditor2Skin.html", //원래 se2인데 내건 폴더이름이 se
		
		    fCreator: "createSEditor2"
		
		});	
	}
	
	//스마트 에디터 textarea에 작성한 데이터 전달하기 
	
	// ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.

	function submitContents(elClickedObj) {

	    // 에디터의 내용이 textarea에 적용된다.
	
	    oEditors.getById["context"].exec("UPDATE_CONTENTS_FIELD", []);
	
	 
	
	    // 에디터의 내용에 대한 값 검증은 이곳에서
	
	    // document.getElementById("ir1").value를 이용해서 처리한다.
	
	 
	
	    try {
	
	        elClickedObj.form.submit();
	
	    } catch(e) {}
		

	}
</script>

</head>
<body>
	<!-- table>tr#top>(th[id='t$']+td)*3 -->
	<form action="modifyOk.jsp">
		<input type="hidden" name="bno" value="<%=vo.getBno() %>"/>
		<table>
			<tr id="top">
				<th id="t1">작성자</th>
				<td><%=vo.getWriter() %></td>
				<th id="t2">조회수</th>
				<td><%=vo.getHits() %></td>
				<th id="t3">작성일시</th>
				<td><%=vo.getRegdate() %></td>
			</tr>
			
			<tr id="title">
				<th>제목</th>
				<td colspan="5">
					<input type="text" name="title" id="" value="<%=vo.getTitle() %>"/>
				</td>
			</tr>
		
			<tr id="contents">
				<th>내용</th>
				<td colspan="5">
					<textarea name="context" id="context" cols="100" rows="10"><%=vo.getContents() %></textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="6">
					<a href="list.jsp"><input type="button" value="목록" /></a>
					<input type="submit" value="수정" onclick="submitContents(this)" />
				</td>
			</tr>
			
		</table>
	</form>
</body>
</html>