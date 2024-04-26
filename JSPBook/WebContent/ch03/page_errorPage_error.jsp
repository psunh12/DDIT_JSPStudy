<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- 오류 발생시 page디렉티브의 errorPage속성의 값으로 설정된 오류처리 jsp로 요청함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 문제 발생</title>
<link rel="stylesheet"
   href="/JSPBook/css/bootstrap.min.css">
</head>
<body>
<!-- ////////////header 시작 //////////////////// -->

<nav class="navbar navbar-expand navbar-dark bg-dark">
   <!-- container : 내 안에 내용 있다 -->
   <div class="container">
      <div class="navbar-header" style="width:100%;">
         <div style="float:left;">
            <a class="navbar-brand" href="welcome.jsp">Home</a>
         </div>
      </div>
   </div>
</nav>
<!-- ////////////header 끝 //////////////////// -->
<!-- exception JSP 내장 객체를 사용하려면 isErrorPage="true"여야 함 -->
<!-- 오류 타입 -->
<p>오류 타입:<%=exception.getClass().getName() %></p>
<!-- 오류 메시지 -->
<p>오류 메시지:<%=exception.getMessage()%></p>
<p>
	<img src ="/images/우는꿈돌이.png" />
</p>
<!-- ////////////footer 시작 //////////////////// -->
<footer class="container">
	<p>&copy; PSHMarket</p>
</footer>
<!-- ////////////footer 끝 //////////////////// -->
</body>
</html>