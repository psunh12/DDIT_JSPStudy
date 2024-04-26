<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 요청시마다 쿠키를 함께 보냄. 쿠키는 request객체에 담김
	Cookie[] cookies = request.getCookies();
	// cookies[0] : userId
	// cookies[1] : userPW
	// cookies[2] : JSESSIONID
	for(int i=0;i<cookies.length;i++){
		// 쿠키를 삭제
// 		session.removeAttribute("하나씩 제거");
// 		session.invalidate(); // 모두제거
		cookies[i].setMaxAge(0);;	//0초
		response.addCookie(cookies[i]); // 쿠키 저장소로 응답해줌
	}
	response.sendRedirect("cookie02.jsp");
%>
</body>
</html>