<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% 
	session.invalidate(); // 로그아웃: 세션 모두 없애기
	response.sendRedirect("/addBook.jsp"); // URL 재요청
%>