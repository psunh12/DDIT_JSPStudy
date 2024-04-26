<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- action속성의 값은 j_sequrity_check로 정해져있음
	j_security_check 톨게이트를 통과해야만 /ch10/security01.jsp로 갈 수 있음
	-->
	<form name="loginForm" action="j_security_check" method="post">
		<p>사용자 아이디:<input type="text" name="j_username"></p>
		<p>비밀번호:<input type="password" name="j_pass"></p>
		<p><input type="submit" value="로그인"/></p>
	</form>
</body>
</html>