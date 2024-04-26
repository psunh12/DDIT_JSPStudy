<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	요청 URI : tryCatch_process.jsp
	요청 파라미터 : {num1=12, num2=6}
	요청방식 : post
	 -->
	 <%
	 	try{
		String num1 = request.getParameter("num1");	
		String num2 = request.getParameter("num2");
		
		int a =Integer.parseInt(num1);
		int b =Integer.parseInt(num2);
		int c = a/b;
	 
	 		out.print(num1 + " / " +num2+"="+c);
	 	}catch(ArithmeticException e){
	 		RequestDispatcher disPatcher = 
	 				request.getRequestDispatcher("tryCatch_error.jsp");
	 		disPatcher.forward(request, response);
	 		
	 	}
	 %>
</body>
</html>