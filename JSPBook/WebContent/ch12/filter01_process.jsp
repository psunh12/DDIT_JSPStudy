<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>filter</title>
</head>
<body>
<!-- 
   요청URI : /ch12/filter01_process.jsp
   요청파라미터 : {name=개똥이}
   요청방식 : post
    -->
	<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	%>
	<p>입력된 name 값 : <%=name %></p>
</body>
</html>