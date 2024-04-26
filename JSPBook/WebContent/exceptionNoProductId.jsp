<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>상품 아이디 오류</title>
</head>
<body>
   <%@ include file="menu.jsp" %>
   <div class="jumbotron">
      <div class="container">
         <h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
      </div>
   </div>
   <div class="container">
      <!-- 
      요청URI : http://localhost/product.jsp?productId=P1234
      getRequestURL() : http://localhost/product.jsp
      요청파라미터(HTTP파라미터, QueryString) : productId=P1234
      getQueryString() : productId=P1234
       -->
      <p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
      <p><a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
   </div>
<%@ include file="footer.jsp" %>
</body>
</html>