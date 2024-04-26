<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="exception_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<!-- 
	요청 URI : exception_process.jsp
	요청파라미터(HTTP파라미터, QueryString) : {num1=12, num2=6}
	요청방식 : POST
	 -->
	<form action="exception_process.jsp" method="post">
		<p>숫자1 : <input type="text" name="num1" required /></p>
		<p>숫자2 : <input type="text" name="num2" required/></p>
		<p><input type="submit" value="나누기" /></p>
	</form>
</body>
</html>