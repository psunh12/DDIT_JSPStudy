<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object(내장객체)</title>
</head>
<body>
<!-- 
요청URI : /ch05/process.jsp
요청파라미터 : {name=개똥이}
요청방식 : post
 -->
 
<form action="/ch05/process.jsp" method="post">
	<p>
<!-- 		required 적으면 입력값 없을때 넘어가지 않음. -->
		이름 : <input type="text" name="name" required placeholder="이름을 작성해주세요."/>
		<input type="submit" value="전송"/>
	</p>
</form>
</body>
</html>