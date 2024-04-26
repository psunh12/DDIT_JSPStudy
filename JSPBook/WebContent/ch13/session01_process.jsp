<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		요청 URI : session01_process.jsp
		요청파라미터(HTTP 파라미터, QueryString) : {id=a001, passwd=java}
		요청방식 :post
	 -->
<%
	String user_id = request.getParameter("id"); // a001
	String user_pw = request.getParameter("passwd");	// java

	out.print("<p>user_id : "+user_id+",user_pw : "+user_pw+"</p>");
	//JSP에는 session 기본 내장 객체가 있음(scope는 session영역)
    //session객체의 속성명인 userID에 매핑하여 user_id변수의 값을 입력
    
    if(user_id.equals("admin")&user_pw.equals("java")){
	    session.setAttribute("userID", user_id);
    	session.setAttribute("userPW", user_pw);
    	
    	out.print("세션설정 성공<br />");
    	out.print(user_id+"님 환영합니다.");
    }else{
    	out.print("세션설정 실패!");
    }
     
%> 
</body>
</html>