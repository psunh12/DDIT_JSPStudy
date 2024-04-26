<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- 
   요청URI : cookie01_process.jsp
   요청파라미터 : {id=admin,passwd=1234}
   요청방식 : post
   --> 
<%
	String id= request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	if (id.equals("admin")&&passwd.equals("1234")){
		// 쿠키쿠키 뉴 ~ 쿠키
		Cookie cookieId = new Cookie("UserID", id);
		Cookie cookiePw = new Cookie("UserPW", passwd);
		// 리스폰스 애드 쿠키.[response객체에 태워서 응답]
		response.addCookie(cookieId);
		response.addCookie(cookiePw);
		
		out.print("<p>쿠키 생성이 성공했습니다.</p>");
		out.print("<p>"+id+"님 환영합니다.</p>");
	}else{
		out.print("쿠키생성이 실패했습니다.");
	}
%>   
</body>
</html>