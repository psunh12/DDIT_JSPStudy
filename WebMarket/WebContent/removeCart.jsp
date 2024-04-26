<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.vo.Product"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 요청 파라미터 아이디를 전송 받도록 request 내장 객체의 getParameter() 메소드를 작성하고
	// 전송된 아이디가 없을 때 웹 페이지 products.jsp로 이동하도록 response 내장 객체의 sendRedirect() 메소드를 작성.
	String productId =request.getParameter("productId");
	if(productId == null || productId.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product product =dao.getProductById(productId);
	if(product == null){
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartList");
	Product goodsQnt = new Product();
	// cartList에 등록된 상품을 하나씩 가져와 요청 파라미터 아이디와 같으면 삭제하도록 작성한다.

	for (int i=0; i<cartList.size();i++){
		goodsQnt = cartList.get(i);
		if(goodsQnt.getProductId().equals(productId)){
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");
%>
</body>
</html>