<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
	href="./css/bootstrap.min.css">
<meta charset="UTF-8">
<title>도서 아이디 오류</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">해당 도서가 존재하지 않습니다.</h2>
		</div>
	</div>

	<div class="container" align="center">
	<p><%=request.getRequestURI() %>?<%=request.getQueryString()%></p>
	<p><a href="books.jsp" class="btn btn-secondary">도서 목록 &raquo;</a>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>