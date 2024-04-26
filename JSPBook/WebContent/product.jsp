<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@page errorPage="exceptionNoProductId.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script type="text/javascript" src="/js/jquery.min.js"></script>

<script type="text/javascript">
function addToCart(){
	if(confirm("상품을 장바구니에 추가하시겠습니까?")){// 확인 클릭시 (true)
		console.log("true");
		document.addForm.submit();
	}else{
		console.log("false");
		document.addForm.reset();
	}
}
</script>
<title></title>
</head>
<body>
   <!-- 
   요청URI : /product.jsp?productId=P1235
   요청파라미터 : productId=P1235
   요청방식 : get
   -->
<%
request.setCharacterEncoding("UTF-8");
// /product.jsp?productId=P1234
String productId = request.getParameter("productId");//P1235

//out.print("productId : " + productId);
//싱글톤으로 객체 생성(전역 객체, 공유 객체)
ProductRepository productDAO = ProductRepository.getInstance();

ProductVO productVO = productDAO.getProductById(productId);
// 상품 아이디가 있을땐 괜찮지만 없을땐(null)오류발생. null을 toString() 할수없음
productVO.getProductId().toString();
// out.print("productVO : " + productVO);
%>
<c:set var ="productVO" value="<%=productVO %>"/>
<!-- 1) include 디렉티브 : ?id=a001 파라미터를 처리할 수 없음. 정적.-->
<%@ include file="menu.jsp" %>
<!-- 2) include JSP 액션태그 : 파라미터를 처리할 수 있음. 동적. 회사에서는 잘 안쓴다(옛날문법)-->
<jsp:include page="menu.jsp">
	<jsp:param name="productId" value="${productVO.productId}"/>
</jsp:include>
<div class="jumbotron">
   <!-- container : 내용이 들어감 -->
   <div class="container">
      <h1 class="display-3">상품 정보</h1>
   </div>
</div>
<div class="container">
   <!-- 내용을 중간 정렬 -->
   <div class="row">
      <!-- 컬럼, 열, 필드, 속성, 애트리뷰트 다같은말 -->
      <div class="col-md-5">
         <img src="/images/${productVO.filename}"
         style="width:100%;"/>
      </div>
      <div class="col-md-6">
      	<h3>${productVO.pname}</h3>
      	<p>${productVO.description}</p>
      	<p>
      		<b>상품 코드 : </b>
      		<span class = "badge baged-danger">
      		${productVO.productId}
      		</span>
      	</p>
      	<p><b>제조사 : </b>${productVO.manufacturer}</p>
      	<p><b>분류 : </b>${productVO.category}</p>
      	<p><b>재고 수 : </b>${productVO.unitsInStock}</p>
      	<h4>${productVO.unitPrice}</h4>
      	<p>
      	<!-- 
      	요청URI : addCart.jsp?productId=P1235
      	요청파라미터 : productId = P1235
      	요청방식 : post
      	 -->
      	<form name= "addForm" action="addCart.jsp?productId=${productVO.productId }"
      		method="post">
      		<!-- addToCart() : 핸들러 함수, 상품주문 : 장바구니에 상품을 넣음-->
      		<a href ="#" class="btn btn-info" onclick="addToCart()">상품 주문&raquo;</a>
      		<a href ="/cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
      		<a href ="/products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
      	</form>
      	</p>
      </div>
   </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>