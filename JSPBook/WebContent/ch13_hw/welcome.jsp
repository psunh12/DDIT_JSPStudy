<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userId = (String)session.getAttribute("userID");

	if(userId ==null){
		response.sendRedirect("session_out.jsp");
	}
%>

<p><%=userId %>님 반갑습니다!</p>
<a href="session_out.jsp">로그아웃</a>
</body>
</html>