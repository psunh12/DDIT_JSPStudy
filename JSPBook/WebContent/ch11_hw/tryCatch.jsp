<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<!--
	요청방식 : tryCatch_process.jsp
	요청파라미터: {num1=12, num=6}
	요청방식 : post 
    -->
	<form action="tryCatch_process.jsp" method="post">
		<p>숫자 1 : <input type="text" name="num1" required/></p>
		<p>숫자 2 : <input type="text" name="num2" required/></p>
		<p><input type="submit" value="나누기"/></p>
	</form>
</body>
</html>