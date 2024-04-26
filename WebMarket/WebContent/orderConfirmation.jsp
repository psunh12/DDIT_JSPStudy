
<%@page import="kr.or.ddit.vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%//스크립틀릿
	String Shipping_name = "";
	String Shipping_zipCode = "";
	String Shipping_country = "";
	String Shipping_addressName = "";
	String Shipping_shippingDate = "";
	String Shipping_cartId = "";

	Cookie[] cookies = request.getCookies();
	//쿠키의 개수만큼 반복
	for(int i=0;i<cookies.length;i++){
		Cookie thisCookie = cookies[i];
		//쿠키 이름 가져옴
// 		out.print(thisCookie.getName() + "<br />");
		//쿠키 값 가져옴
// 		out.print(URLDecoder.decode(thisCookie.getValue(),"UTF-8")+"<br />");
		if(thisCookie.getName().equals("Shipping_name")){
			Shipping_name = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
		}
		if(thisCookie.getName().equals("Shipping_zipCode")){
			Shipping_zipCode = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
		}
		if(thisCookie.getName().equals("Shipping_country")){
			Shipping_country = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
		}
		if(thisCookie.getName().equals("Shipping_addressName")){
			Shipping_addressName = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
		}
		if(thisCookie.getName().equals("Shipping_shippingDate")){
			Shipping_shippingDate = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
		}
		if(thisCookie.getName().equals("Shipping_cartId")){
			Shipping_cartId = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<title>주문 정보</title>
</head>
<body>
	<!-- include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
	<div class="jumbotron">
		<!-- container : 이 안에 내용있다 -->
		<div class="container">
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>
	
	<!-- --------------------주문 정보 시작-------------------- -->
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<!-- 고객 정보 시작 : cookie사용-->
		<div class="row justify-content-between">
			<strong>배송 주소</strong><br />
			성명 : <%=Shipping_name%><br />
			우편번호 : <%=Shipping_zipCode%><br />
			주소 : <%=Shipping_addressName%>&nbsp;<%=Shipping_country%>
		</div>
		<div class="col-4" align="right">
			<p>
				<em>배송일 : <%=Shipping_shippingDate%></em>
			</p>
		</div>
		<!-- 고객 정보 끝 -->
		<!-- 상품 정보 시작 : session 사용 -->
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">상품명</th>
					<th class="text-center">#</th>
					<th class="text-center">가격</th>
					<th class="text-center">소계</th>
				</tr>
				<%//스크립틀릿
					double sum = 0;
					//세션의 이름인 cartlist를 통해 Product타입의 상품목록 리스트를 가져와보자
					ArrayList<Product> cartList = 
						(ArrayList<Product>)session.getAttribute("cartlist");
					//상품 목록을 하나씩 출력해보자
					for(int i=0;i<cartList.size();i++){
						Product product = cartList.get(i);
						//얼마짜리를 몇 개 샀니? => 금액
						double total = product.getUnitPrice() * product.getQuantity();
						sum = sum + total;
						
						BigDecimal totalBig = new BigDecimal(total);
				%>
				<tr>
					<td class="text-center"><em><%=product.getPname()%></em></td>
					<td class="text-center"><%=product.getQuantity()%></td>
					<td class="text-center">
						<!-- 샵 쉽표 샵샵샵, 머리 속에 쏙쏙쏙 -->
						<fmt:formatNumber value="<%=product.getUnitPrice()%>" pattern="#,###" /> 원
					</td>
					<td class="text-center">
						<fmt:formatNumber value="<%=totalBig%>" pattern="#,###" /> 원
					</td>
				</tr>
				<%
					}
					//크게 다시말해봐
					BigDecimal bdm = new BigDecimal(sum);
				%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>총액:</strong></td>
					<td class="text-center text-danger"><strong>
						<fmt:formatNumber value="<%=bdm%>" pattern="#,###" />원
					</strong></td>
				</tr>
			</table>
			
			<a href="shippingInfo.jsp?cartId=<%=Shipping_cartId%>"
			class="btn btn-secondary" role="button">이전</a>
			<a href="thankCustomer.jsp" class="btn btn-success"
			role="button">주문 완료</a>
			<a href="checkOutCancelled.jsp" class="btn btn-secondary"
			role="button">취소</a>
		</div>
		<!-- 상품 정보 끝 -->
	</div>
	<!-- --------------------주문 정보 끝-------------------- -->
	
	<jsp:include page="footer.jsp" />
</body>
</html>

