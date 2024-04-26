<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@page import="kr.or.ddit.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<link rel="stylesheet"
	href="./css/bootstrap.min.css">
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
		// 싱글톤 사용하여 불러옴
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = ProductRepository.getInstance().getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
			// 저장된 상품목록 개수만큼 실행 하도록 반복문을 작성한다.
				for(int i=0; i<listOfProducts.size();i++){
					Product product = listOfProducts.get(i);
			%>		
			
			<div class="col-md-4">
				<img src="./images/<%=product.getFilename()%>" style="width:100%">
				<h3><%=product.getPname() %></h3>
				<h3><%=product.getDescription() %></h3>
				<h3><%=product.getUnitPrice() %>원</h3>
				<p><a href="./product.jsp?id=<%=product.getProductId()%>"
					class="btn btn-secondary" role="button">상세 정보 &raquo;</a></p>
			</div>				
			<%
				}
			%>
		</div>
		<hr>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>