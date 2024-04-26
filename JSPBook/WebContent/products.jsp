<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
<%
	// DAO의 데이터 가져오기
	// static이 붙었기 때문에 getInstance만 사용할수있다
	ProductRepository productDAO = ProductRepository.getInstance();
	List<ProductVO> listOfProducts = productDAO.getAllProducts();
	// JSP 내장객체인 out객체 사용
	out.print("listOfProducts : "+listOfProducts);
%>
<c:set var="listOfProducts" value="<%=listOfProducts %>"/>
<%@ include file="menu.jsp" %>
<div class="jumbotron">
	<!-- container: 내용이 들어감 -->
	<div class="container">
		<h1 class = "display-3">상품목록</h1>
	</div>
</div>
<div class = "container">
	<!-- 내용을 중간 정렬 -->
	<div class = "row" align="center">
		<!-- 열별처리(반복대상)
		listOfProduct :List<ProductVO>
		-->
		<c:forEach var="productVO" items="${listOfProducts}" varStatus="">
		<div class="col-md-4">
			<img src="/images/${productVO.filename}" style=" height:100px;width: 100%;"/>
			<h3><a href="/product.jsp?productId=${productVO.productId}">${productVO.pname}</h3>
 			<p>${productVO.description}</p>
 			<p>${productVO.unitPrice}</p>
			<!-- 
		         요청URI : /product.jsp?productId=P1235
		         요청파라미터 : productId=P1235
		         요청방식 : get
		     --> 			
 			<p><a href="/product.jsp?productId=${productVO.productId}" class="btn btn-secondary" role="button">상세정보</a></p>
		</div>
		</c:forEach>
	</div>
	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<a href="addProduct.jsp" class="btn btn-primary">등록</a>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>