<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@page import="kr.or.ddit.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 취소</title>
<link rel="stylesheet"
	href="./css/bootstrap.min.css">
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 취소</h1>
		</div>
	</div>

	<div class="container">
		<h2 class="alert alert-danger">주문이 취소 되었습니다.</h2>
	</div>
	<div class="container">
		<p><a href="/product.jsp" class="btn btn-secondary">&laquo; 상품 목록</a></p>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>