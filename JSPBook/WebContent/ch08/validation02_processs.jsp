<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	   요청URI : validation02_process.jsp
	   요청파라미터 : {id=a001,passwd=java}
	   요청방식 : post
	-->
<h3>입력 성공!</h3>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id"); // a001
	String passwd = request.getParameter("passwd"); // java
%>
<p> 아이디 : <%=id %></p>	
<p> 비밀번호 : <%=passwd %></p>	
</body>
</html>