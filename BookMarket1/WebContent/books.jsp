<%@page import="kr.or.ddit.vo.BookVO"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.vo.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<body>
	<%@ include file="menu.jsp"%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
		ArrayList<BookVO> listOfBooks = BookRepository.getInstance().getAllBooks();
	%>
	
	<div class="container">
		<%
			for(BookVO book :listOfBooks){
			%>
			<div class ="row">
				<div class="col-md-8">
					<h4><b>[<%=book.getCategory() %>] <%=book.getName() %></b></h4><br>
					<p><%=book.getDescription() %></p><br>
					<p><%=book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %></p>
				</div>
				<div class="col-md-4 text-md-right">
					<p><a href="book.jsp?id=<%=book.getBookId()%>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a></p>
				</div>
			</div>
			<hr>			
		<%
			}
		%>
		<div class="text-center">
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>