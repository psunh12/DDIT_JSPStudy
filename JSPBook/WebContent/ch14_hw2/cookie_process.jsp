<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	if(id.equals("admin") && passwd.equals("admin1234")){
		Cookie cookieID = new Cookie("userID", id);
		Cookie cookiePW = new Cookie("userPW", passwd);
		response.addCookie(cookieID);
		response.sendRedirect("welcome.jsp");
		
	}else{
		out.println("쿠키 생성이 실패했습니다.");
	}
%>
</body>
</html>