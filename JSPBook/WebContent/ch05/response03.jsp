<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 응답 헤더 리턴. 404 : HTTP Status 중에서 page not found
		response.sendError(404,"요청페이지를 찾을수없습니다.");
	%>
</body>
</html>