<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<!-- 
	/errorPage.jsp?name=apple ==> APPLE
	/errorPage.jsp => 오류발생(null을 대문자 변환 불가)
	 -->
	 name 파라미터 : <%=request.getParameter("name").toUpperCase() %>
</body>
</html>