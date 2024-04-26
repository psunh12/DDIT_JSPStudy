<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>

	<%!String title = "도서 웹 쇼핑몰";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=title%>
			</h1>
		</div>
	</div>
	<%!String welcome = "Welcome to Book Market!";%>
	<div class="container">
		<div class="text-center">
			<h3>
				<%=welcome%>
			</h3>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>