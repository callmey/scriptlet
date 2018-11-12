<%@page import="vo.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>productList.jsp</title>
</head>
<style type="text/css">

	* {
		margin: 0px;
		padding: 0px;
		background-color: skyblue;
	}
	
	#container {
		width: 1000px;
		margin: auto;
	}
	
	img {
		width: 150px;
		height: 150px;	
	}
	
	.wrap {
		width: 150px;
		float: left;
		border: 1px solid red;
		margin:20px;
		padding: 20px;
	}
	
	.price {
		text-decoration: line-through;
	}
	
	.red {
		color: red;
	}
	p {
		text-align: center;
	}


</style>
<body>
	<div id="container">
		<%
			ProductDAO dao = new ProductDAO();
			
			ArrayList<ProductVO> list = dao.getAllData();
			
			for(ProductVO vo : list) {
					
		%>	
	
		<div class="wrap">
			<%=vo.getPno() %>
			<a href="productDetail.jsp?pno=<%=vo.getPno()%>
			"><img src="<%=vo.getImgfile() %>" alt="<%=vo.getPname()%>" /></a>
			<p><%=vo.getPname() %></p>
			<p class="price"><%=vo.getPrice() %> 원</p>
			<p class="red">마감임박</p>
			<p><%=vo.getDcratio() %> % 할인</p>
			<p>
				<%-- <%=vo.getPrice()-vo.getPrice()*vo.getDcratio()/100%> --%>
				
				<%=vo.getPrice()*(1-vo.getDcratio()*0.01) %>
			</p>
		
			<input type="button" value="장바구니" />
			<input type="button" value="즉시주문" />
		</div>
		
		<%
		}
		%>
	</div>
</body>
</html>