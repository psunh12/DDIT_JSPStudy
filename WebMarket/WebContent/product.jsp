<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@page import="kr.or.ddit.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page errorPage="exceptionNoProductid.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세정보</title>
<link rel="stylesheet"
	href="./css/bootstrap.min.css">
<script type="text/javascript">
	function addToCart(){
		// 메시지 창에서 '확인'을 클릭하면 폼 문의 action 속성 값이 실행되고 '취소'를 클릭하면 폼 문의 실행 취소하도록 작성함
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>	
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		/*
			request 객체는 웹 브라우저에서 서버로 요청된 정보를 담고 있는 객체
			getParameter 메소드는 클라이언트가 전송한 요청 매개변수의 값을 읽어올 때 사용
			response 객체는 서버에서 클라이언트로의 응답을 다루는 객체. 다른자원을 전송할 때 사용된다.
		*/
		String id = request.getParameter("id");
		// id변수를 사용하여 ProductRepository에서 해당ID에 대한 제품을 검색한다.
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class="container">
		<div class="row" >
		<div class="col-md-5">
			<img src="./images/<%=product.getFilename()%>" style="width:100%"/>
		</div>
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription() %></p>
				<p><b>상품코드 : </b><span class="badge badge-danger">
					<%=product.getProductId() %></span></p>
				<p><b>제조사 :<%=product.getManufacturer() %></p>
				<p><b>분류 : <%=product.getCategory() %></p>
				<p><b>재고 수 : <%=product.getUnitPrice() %></p>
				
				<h4><%=product.getUnitPrice() %>원</h4>
				
				
     	<p>
      	<form name= "addForm" action="addCart.jsp?productId=<%=product.getProductId() %>"
      		method="post">
      		<!-- addToCart() : 핸들러 함수, 상품주문 : 장바구니에 상품을 넣음-->
      		<a href ="#" class="btn btn-info" onclick="addToCart()">상품 주문&raquo;</a>
      		<a href ="/cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
      		<a href ="/products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
      	</form>
    
    	</div>
		</div>
		<hr>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>