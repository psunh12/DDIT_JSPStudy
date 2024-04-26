<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
<!-- 디렉티브태그: 정적, 파라미터 없음 -->
<%@ include file="menu.jsp" %>
<%
String cartId = request.getParameter("cartId");
%>
<c:set var="cartId" value="<%=cartId %>"/>
<div class="jumbotron">
	<!-- container: 내용이 들어감 -->
	<div class="container">
		<h1 class = "display-3">배송 정보</h1>
	</div>
</div>
<div class = "container">
<!-- 배송정보 시작 -->
<!-- 
   요청URI : processShippingInfo.jsp
   요청파라미터 : {cartId=SADKFSADDFSALK,name=개똥이,shippingDate=2024/01/12
            ,country=대한민국,zipCode=12345,addressName=대전광역시 중구 문화동 123}
   요청방식 : post
-->
<form action="processShippingInfo.jsp" class="form-horizontal"
      method="post">
         <input type="text" name="cartId" 
	value="${cartId}" />
         <div class="form-group row">
            <label class="col-sm-2">성명</label>
            <div class="col-sm-3">
               <input type="text" name="name" class="form-control" />
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">배송일</label>
            <div class="col-sm-3">
               <input type="date" name="shippingDate" 
               class="form-control" />(yyyy-mm-dd)
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">국가명</label>
            <div class="col-sm-3">
               <input type="text" name="country" 
               class="form-control" />
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">우편번호</label>
            <div class="col-sm-3">
               <input type="text" name="zipCode" 
               class="form-control" />
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">주소</label>
            <div class="col-sm-3">
               <input type="text" name="addressName" 
               class="form-control" />
            </div>
         </div>
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
               <a href="cart.jsp?cartId="${cartId}"
               class="btn btn-secondary" role="button">이전</a>
               <input type="submit" class="btn btn-primary" value="등록" />
               <a href="checkOutCancelled.jsp"
               class="btn btn-secondary" role="button">취소</a>
            </div>
         </div>
      </form>
<!-- 배송정보 끝 -->
</div>
<%@ include file="footer.jsp" %>

<!-- 
1. BookProj 프로젝트 생성
2. 환경설정 3총사 설정
3. 서버포트를 8095(admin port), 8090(port)
4. localhost:8090/welcome.jsp 실행 시 자신의 이름으로 3행시 작성이 화면에 보임
 -->

</body>
</html>