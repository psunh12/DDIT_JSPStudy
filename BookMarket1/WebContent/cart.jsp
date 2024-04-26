<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.vo.BookVO"%>
<%@page import="kr.or.ddit.vo.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>장바구니</title>
<%
	String cartId = session.getId();
%>
</head>
<body>
	<%@ include file="menu.jsp"%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<table width = "100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId %>"
					class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="shippingInfo.jsp" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top:50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
					long sum =0;
					ArrayList<BookVO> cartList = (ArrayList<BookVO>)session.getAttribute("cartlist");
					session.getAttribute("cartlist");
					
					if(cartList == null) cartList = new ArrayList<BookVO>();
					
					for(int i =0; i<cartList.size(); i++){ // 상품리스트
						BookVO bookVo = cartList.get(i);
						long total = bookVo.getUnitPrice()*bookVo.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><%=bookVo.getBookId() %> - <%=bookVo.getName() %></td>
					<td><%=bookVo.getUnitPrice() %></td>
					<td><%=total %></td>
					<td><a href="removeCart.jsp?id=<%=bookVo.getBookId()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum %></th>
					<th></th>
				</tr>
			</table>
			<a href="books.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>