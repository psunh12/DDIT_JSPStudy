<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.BookVO"%>
<%@page import="kr.or.ddit.vo.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String bookId = request.getParameter("id");
	
	if(bookId ==null || bookId.trim().equals("")){
		response.sendRedirect("books.jsp");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
	BookVO bookVO = dao.getBookById(bookId);
	
	if(bookVO ==null){
		// 예외처리 페이지로 이동
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	ArrayList<BookVO> booksList = dao.getAllBooks();
	BookVO books = new BookVO();
	for(int i =0; i<booksList.size(); i++){
		books = booksList.get(i);
		if(books.getBookId().equals(bookId)){
			break;
		}
	}
	
	// 장바구니
	ArrayList<BookVO> list = (ArrayList<BookVO>)session.getAttribute("cartlist");

	if(list==null){
		list = new ArrayList<BookVO>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt=0;
	BookVO booksQnt = new BookVO();
	
	for(int i=0; i<list.size();i++){
		booksQnt = list.get(i);
		if(booksQnt.getBookId().equals(bookId)){
			cnt++;
			int orderQuantity = booksQnt.getQuantity()+1;
			booksQnt.setQuantity(orderQuantity);
		}
	}
	
	if(cnt==0){
		books.setQuantity(1);
		list.add(books);
	}
	
	response.sendRedirect("book.jsp?id="+bookId);
	%>
</body>
</html>