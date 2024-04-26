<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
<%
	try{
		int num1 = Integer.valueOf(request.getParameter("num1"));
		int num2 = Integer.valueOf(request.getParameter("num2"));
		
		int c = num1/num2;
		out.print(num1 + "/" + num2 + " = " + c);
	}catch(ArithmeticException e){ //0으로 나눴을 때 오류 처리
		RequestDispatcher dispatcher =
			request.getRequestDispatcher("tryCatch_error.jsp");
		dispatcher.forward(request, response);
	}
%>

</body>
</html>