<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<!-- session01.jsp와 session01_process.jsp를 먼저 수행 후 -->
   	<!-- 
      session.setAttribute("userID", user_id);   //admin
      session.setAttribute("userPW", user_pw);   //java
    -->
    <!-- p.430 -->
    <h4>--- 세션 삭제 전 ---</h4>
    <%
    	String user_id
    	= (String)session.getAttribute("userID"); // admin
    	String user_pw = (String)session.getAttribute("userPW"); //java
    	
    	out.print("설정된 세션명 userID의 값 : " +user_id + "<br />");// admin
    	out.print("설정된 세션명 userPW의 값 : " +user_pw + "<br />");// admin
    
    	session.removeAttribute("userID");
    %>

    <h4>--- 세션 삭제 후 ---</h4>
 	<%
 		user_id = (String)session.getAttribute("userID");
 		user_pw = (String)session.getAttribute("userPW");
 		out.println("설정된 세션 이름 userID : "+user_id +"<br>");
 		out.println("설정된 세션 값 userPW : "+user_pw +"<br>");
 		
 	%>
</body>
</html>