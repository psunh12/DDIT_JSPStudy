<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	// 로그인 인증에 실패했을떄 login 페이지로 강제이동 하도록 메소드 작성.
	// login.jsp에 오류를 전달하도록 요청 파라미터 error을 작성함.
	response.sendRedirect("login.jsp?error=1");
%>