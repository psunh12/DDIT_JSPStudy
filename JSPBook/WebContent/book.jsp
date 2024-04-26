<%@page import="kr.or.ddit.vo.BookVO"%>
<%@page import="kr.or.ddit.vo.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>도서 정보</title>
</head>
<body>
	<%@ include file="menu.jsp"%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		BookVO book = BookRepository.getInstance().getBookById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<p>
					<img src ="/images/<%=book.getFilename() %> "/>
				</p>
				<h3>[<%=book.getCategory() %>] <%=book.getName() %></h3>
				<p><%=book.getDescription()%></p>
				<p><b>도서코드: </b><span class="badge badge-danger"><%=book.getBookId()%></span></p>
				<p><b>출판사: </b><%=book.getPublisher()%></p>
				<p><b>저자: </b><%=book.getAuthor()%></p>
				<p><b>재고수: </b><%=book.getUnitsInStock()%></p>
				<p><b>총 페이지수: </b><%=book.getTotalPages()%></p>
				<p><b>출판일: </b><%=book.getReleaseDate()%></p>
				<h4><%=book.getUnitPrice() %>원</h4>
				<p>
					<a href="#" class="btn btn-info">도서 주문 &raquo;</a>
					<a href="books.jsp" class="btn btn-secondary">도서 목록 &raquo;</a>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>