<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//Cookie cookieId = new Cookie("userID",id);
	//Cookie cookiePw = new Cookie("userPW",passwd);
	//+ JSESSIONID
	//요청시 함께 툭툭 던져지는 request객체 안에 있는 쿠키들을 확인해보자
	// 쿠키가 없을땐 null이므로 오류가남 (최초로 실행했을때 쿠키가 없어서 getCookie를 못하기 때문)
	Cookie[] cookies = request.getCookies();
	
	// 현재 설정된 쿠키의 개수?
	out.print("현재 설정된 쿠키의 개수 : " + cookies.length +"<br/>");
	out.print("<hr/>");
	for(int i =0 ; i<cookies.length; i++){
		out.print("쿠키["+i+"] : "+cookies[i] + "<br/>");
		// 쿠키 속성이름
		out.print("설정된 쿠키의 값["+i+"] : "+cookies[i].getName()+"<br/>");
		
		// 쿠키 속성 값
		out.print("설정된 쿠키의 값 ["+i+"] : "+cookies[i].getValue()+"<br/>");
	}
	out.print("세션id : "+session.getId()+"<br>");
%>
</body>
</html>