<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.vo.BookVO"%>
<%@page import="kr.or.ddit.vo.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String bookId=request.getParameter("id");
	if(bookId==null || bookId.trim().equals("")){
		response.sendRedirect("books.jsp");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
	
	BookVO bookVo = dao.getBookById(bookId);
	if(bookVo == null ){
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	ArrayList<BookVO> cartList = (ArrayList<BookVO>)session.getAttribute("cartlist");
	BookVO booksQnt = new BookVO();
	for(int i =0; i<cartList.size(); i++){
		booksQnt = cartList.get(i);
		if(booksQnt.getBookId().equals(bookId)){
			cartList.remove(booksQnt);
		}
	}
	response.sendRedirect("cart.jsp");
	
%>
</body>
</html>