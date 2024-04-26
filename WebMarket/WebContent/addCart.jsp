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
	// 전송된 아이디가 없을 때 product.jsp로 이동
	String id =request.getParameter("id");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	ProductRepository dao = ProductRepository.getInstance();
	
	// 상품 아이디에 대한 상품 정보가 없으면 예외 처리 웹페이지로 이동
	Product product =dao.getProductById(id);
	if(product == null){
		response.sendRedirect("exceptionNoProduct.jsp");
	}
	
	ArrayList<Product> goodsList =  dao.getAllProducts();
	Product goods = new Product();
	for(int i=0; i<goodsList.size(); i++){
		goods = goodsList.get(i);
		if(goods.getProductId().equals(id)){
			break;
		}
	}
	
	// 세션 속성이름:cartlist
	// Arraylist에 저장된 세션정보가 없다면 arrayList를 생성하고 이를 세션 속성이름 cartlist의 속성 값으로 저장한다
	ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");
	if(list==null){
		list = new ArrayList<Product>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0;
	Product goodsQnt = new Product();
	
	for(int i=0; i< list.size();i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getProductId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() +1;
			goodsQnt.setQuantity(orderQuantity);
			
		}
	}
	
	// 요청 파라미터 아이디의 상품이 장바구니에 담긴 목록이 아니면 해당 상품의 수량을 1로 하고 장바구니 목록에 추가한다
	if(cnt ==0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	response.sendRedirect("product.jsp?id="+id);
%>
</body>
</html>