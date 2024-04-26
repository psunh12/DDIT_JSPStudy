<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
 <!-- 
 	요청URI : addCart.jsp?productId=P1235
 	요청파라미터 : productId = P1235
 	요청방식 : post
 -->
 <%
 	String productId = request.getParameter("productId"); // P1235
 	out.print("productId : "+ productId);
 	
 	// trim() : 공백제거
 	// addCart.jsp or addCart.jsp?productId=
 	if(productId==null || productId.trim().equals("")){
 		response.sendRedirect("products.jsp");
 		return;
 	}
 	// 기본키인 P1235 코드의 상품을 찾아보자
 	// 싱글톤 패턴으로 db객체를 1회 생성
 	ProductRepository dao = ProductRepository.getInstance();
 	
 	// select * from product
 	// where product_id = 'P1235';
 	ProductVO productVO = dao.getProductById(productId);
 	// 상품 결과가 없다면..(Z1235)
 	if(productVO==null){
 		// [상품이 없음] 예외처리 페이지로 이동
 		response.sendRedirect("exceptionNoProductId.jsp");
 	}
 	// 장바구니(세션) => 세션명 : cartlist
 	List<ProductVO> list = (List<ProductVO>)session.getAttribute("cartlist");		
 	out.print(list);
 	
 	// 장바구니가 없다면 생성
 	if(list==null){
 		// list는 null이므로 여기서 리스트를 생성해주자
 		list=new ArrayList<ProductVO>();
 		// cartlist라는 세션명으로 생성
 		session.setAttribute("cartlist",list);
 	}
 	
 	int cnt = 0;
 	// 만약, 장바구니에 이미 상품들이 들어있다면?
 	for(int i=0; i<list.size();i++){
 		if(list.get(i).getProductId().equals(productId)){// 추가할 상품이 이미 장바구니에 있다면
 			cnt++; // 있다
 			// 장바구니에 상품이 이미 들어있다면 장바구니에 담은 개수만 1증가
 			list.get(i).setQuantity(list.get(i).getQuantity()+1);
 		}
 	}
 	if(cnt==0){
	 	// 장바구니에 해당 상품(P1235)이 안담겼다면
 		productVO.setQuantity(1);
 		list.add(productVO);
 	}
 	
 	// 장바구니 확인
 	// list : List<ProductVO>
 	for(ProductVO pVO :list){
 		out.print("<hr/>pVO : "+pVO+"<br/>");
 	}
 	// 상품 상세 페이지로 이동(//product.jsp?productId=P1236)
 	response.sendRedirect("product.jsp?productId="+productId);
 %>