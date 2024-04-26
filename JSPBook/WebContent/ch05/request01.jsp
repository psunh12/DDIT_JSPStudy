<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	   요청URI : response01_process.jsp
	   요청파라미터 : {id=a001, passwd=java}
	   요청방식 : post
	   -->
	<form action="/ch05/response01_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" required
						placeholder="아이디" /></p>
		<p>비밀번호 : <input type="password" name="passwd" required
						placeholder="비밀번호" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>