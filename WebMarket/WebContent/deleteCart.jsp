<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	// 전송된 cartId가 없을 때 웹 페이지 cart.jsp로 이동하도록 response 내장 객체의 sendRedirect() 메소드를 작성한다.
	String id =request.getParameter("cartId");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	//장바구니에 등록된 모든 상품을 삭제하도록 session 내장 객체를 사용
	session.invalidate();
	
	response.sendRedirect("cart.jsp");
%>