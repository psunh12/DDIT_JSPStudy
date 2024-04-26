<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// JSP 내장 객체인 session
	// return 타입이 Object라서 String으로 캐스팅 해야함
	String user_id= (String)session.getAttribute("userID"); // a001
	String user_pw = (String)session.getAttribute("userPW"); // java
	
	out.print("설정된 세션의 속성 값[1] : "+ user_id+"<br />");
	out.print("설정된 세션의 속성 값[2] : "+ user_pw);
%>
</body>
</html>