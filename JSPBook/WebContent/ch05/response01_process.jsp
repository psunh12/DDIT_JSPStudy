<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	   요청URI : request01_process.jsp
	   요청파라미터 : {id=a001, passwd=java}
	   요청방식 : post
	-->
	<%
		request.setCharacterEncoding("utf-8");
	
		String userId = request.getParameter("id");	// a001
		String password = request.getParameter("passwd");	// java
		
		// 관리자 :a001/java
		if(userId.equals("a001")&&password.equals("java")){ // 관리자
			response.sendRedirect("/ch05/response01_success.jsp");
		}else{ // 일반사용자
			response.sendRedirect("response01_failed.jsp");
		}
	%>
	   
</body>
</html>