<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>productDetail.jsp</title>
<%
	// jsp를 가장 먼저 읽고 그 다음에 스크립트를 읽음.
	// 스크립틀릿을 어디에 써도 상관 없음
	
	String p = request.getParameter("pno");

	ProductDAO dao = new ProductDAO();
	ProductVO vo = new ProductVO();
	
	if(p!=null) {
		int pno = Integer.parseInt(p);
		
		vo = dao.getData(pno); // DB에 접근해서 해당 제품번호의 객체 정보를 리턴받기
	}


%>
<style type="text/css">
	#container {margin: 10px;}
	#img{width:400px;height:500px;}
	#pic{float: left;}
	#desc {
		margin: 20px;
		float: left;
	}
	
	#dc {
		color: #dc143c;
	}
	
	#imagewrap {
		border-top: 1px solid gray;
		
	}
	
	#name {
		border-top : 3px solid #0088cc;
	}
	
	
	
</style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#cart").on('click', function(){
			pno = <%=vo.getPno()%>;
			console.log("pno : " + pno);
			
			$('#no').val(pno);
			
			document.frm.action = "cart.jsp";
			document.frm.submit(); 
			
		});
	});
</script>
<body>
	<form action="#" name="frm">
		<input type="hidden" name="no" id="no" value="<%=vo.getPno()%>"/>
	</form>
	<div id="container">
		<div id="pic">
			<img src="<%= vo.getBgfile()%>" alt="<%=vo.getPname() %>" id="img"/>
		</div>
	
		<div id="desc">
			<p>
				<h3>상품상세설명중.............</h3>
			</p>
			<p id="name">상품명 : <%=vo.getPname() %></p>
			<p>상품가 : <%=vo.getPrice() %></p>
			<p id="dc">할인가 : <%=vo.getPrice()*(1-vo.getDcratio()*0.01) %> 원</p>
		
			<div id="imagewrap">
				<img src="../Images/btn_buy.jpg" alt="즉시구매버튼" />
				<img src="../Images/btn_cart.jpg" alt="장바구니" id="cart"/>
				<img src="../Images/btn_wish.jpg" alt="위시리스트" />
			</div>
		</div>
	</div>
</body>
</html>