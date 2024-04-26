<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
<%
	Cookie[] cookies= request.getCookies();

	out.println("현재 설정된 쿠키의 개수 => " + cookies.length+"<br>");
	out.println("===============================================");
	
	for(int i=0; i<cookies.length; i++){
		out.println("설정된 쿠키의 속성 이름 [ "+i+" ] :" + cookies[i].getName() + "<br>");
		out.println("설정된 쿠키의 속성 값 [ "+i+" ] :" + cookies[i].getValue() + "<br>");
		out.println("-------------------------------------------");
	}
%>
	<form action="cookie01_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 :<input type="text" name="passwd"></p>
		<p><input type="submit" value="전송"></p>
	</form>
</body>
</html>