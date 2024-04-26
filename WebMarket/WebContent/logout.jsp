<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	// invalidate():웹 브라우저에 저장된 모든 사용자를 삭제하도록 함.
	session.invalidate();
	response.sendRedirect("addProduct.jsp");
%>