<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>언니알지?</h3>
	<p>인증성공!</p>
	<p>사용자명 : <%=request.getRemoteUser() %></p>
	<!-- <auth-method>BASIC</auth-method> -->
	<p>인증방법 : <%=request.getAuthType() %></p>
	<p>인증한 사용자명이 role(역할) "tomcat"에 속하는 사용자 인가요?
		<%=request.isUserInRole("tomcat") %>
	</p>
	<p>인증한 사용자명이 role(역할) "role1"에 속하는 사용자 인가요?
		<%=request.isUserInRole("role1") %>
	</p>
	
</body>
</html>