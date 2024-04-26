<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<!--p.363
	요청URI : exception_process.jsp
	요청파라미터(HTTP파라미터, QueryString) : {num1=12, num=6}
	요청방식 : post 
    -->
	<%
		int num1 = Integer.valueOf(request.getParameter("num1"));
		int num2 = Integer.valueOf(request.getParameter("num2"));
		
		int c = num1/num2;
		
		//스트립틀릿. 12 / 6 = 2	
		out.print(num1 + " / " + num2 + " = " + c);
	%>
</body>
</html>